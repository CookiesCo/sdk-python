#!/bin/bash

echo "--- :buildkite: Preparing artifacts...";
tar -czvf build/test-reports.tar.gz "./build/reports/tests/test";
tar -czvf build/coverage-reports.tar.gz "./build/reports/jacoco/test";

echo "--- :buildkite: Pushing artifacts to Buildkite...";
buildkite-agent artifact upload "dist/*.*";
buildkite-agent artifact upload "reports/*.*";

if [ -z ${BUILDKITE_TAG+x} ];
then ARTIFACT_BASE="$BUILDKITE_TAG";
else ARTIFACT_BASE="$BUILDKITE_BRANCH"; fi

echo "+++ :gcloud: Pushing artifacts to GCS (base: '$ARTIFACT_BASE')...";

cd dist/ && gsutil cp "./*.*" "gs://cookies-sdk/ci/python/$ARTIFACT_BASE/latest/" && cd ../..;
echo "Publish to GCS complete.";
