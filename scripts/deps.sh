
#!/bin/bash

echo "--- :python: Downloading dependencies...";
pip3 install -r <(cat requirements.txt dev-requirements.txt test-requirements.txt);
echo "Dependencies ready.";
