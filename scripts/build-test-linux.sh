#!/bin/bash

echo "Running build/tests for Linux...";
set +x;
if ! bash ./scripts/build-test.sh; then
  echo "^^^ +++"
  echo "Build or testsuite failed."
fi
