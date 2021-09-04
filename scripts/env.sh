
#!/bin/bash

echo "--- :toolbox: Setting up environment...";
rm -fr .env && virtualenv .env --python python3;
source .env/bin/activate;
echo "Virtual env ready.";
