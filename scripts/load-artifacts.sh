
#!/bin/bash

echo "--- :buildkite: Loading artifacts...";
buildkite-agent artifact download "reports/*" --step build-test-linux .;
buildkite-agent artifact download "dist/*" --step build-test-linux .;
