#!/bin/bash

echo "Running build/tests for macOS...";
set +x;
if ! bash ./scripts/build-test.sh; then
  echo "^^^ +++"
  echo "Build or testsuite failed."
fi
