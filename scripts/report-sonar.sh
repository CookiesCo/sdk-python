
#!/bin/bash

echo "--- :gcloud: Downloading sonar token...";
export SONAR_TOKEN=$(gcloud secrets versions access 1 --secret buildbot_pysdk_sonartoken)

echo "--- :sonarcloud: Downloading Sonar tools...";
rm -fr ./.sonar
export SONAR_SCANNER_VERSION=4.4.0.2170
export SONAR_SCANNER_HOME=./.sonar/sonar-scanner-$SONAR_SCANNER_VERSION-linux
curl --create-dirs -sSLo ./.sonar/sonar-scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$SONAR_SCANNER_VERSION-linux.zip
unzip -o ./.sonar/sonar-scanner.zip -d ./.sonar/
export SONAR_SCANNER_OPTS="-server"

echo "--- :sonarcloud: Reporting analysis...";
set +x;
if ! SONAR_TOKEN="$SONAR_TOKEN" ./.sonar/sonar-scanner-$SONAR_SCANNER_VERSION-linux/bin/sonar-scanner \
  -Dsonar.organization=cookies \
  -Dsonar.projectKey=CookiesCo_sdk-python \
  -Dsonar.sources=cookiesapi \
  -Dsonar.host.url=https://sonarcloud.io; then
  echo "^^^ +++"
  echo "Sonar reporting failed."
  exit 1;
fi
