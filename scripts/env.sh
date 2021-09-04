
#!/bin/bash

echo "--- :toolbox: Setting up environment...";
rm -fr .env && virtualenv .env --python python3;
source .env/bin/activate;
echo "Virtual env ready.";

echo "--- :key: Acquiring API key...";
export COOKIES_APIKEY=$(gcloud secrets versions access 1 --secret buildbot_pysdk_apikey);
