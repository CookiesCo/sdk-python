
#!/bin/bash

source scripts/env.sh;
source scripts/deps.sh;

echo "--- :python: Building Python SDK...";
set +x;
python3 -m build;

echo "+++ :pytest: Running tests...";
set +x;
nosetests;
