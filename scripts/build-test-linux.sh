#!/bin/bash

source scripts/env.sh;
source scripts/deps.sh;

echo ":linux: Running build/tests for Linux...";
set +x;
if ! bash ./scripts/build.sh; then
  echo "^^^ +++"
  echo "Build failed."
else
  echo "✅ Build complete. Running tests...";

  if ! bash ./scripts/test.sh; then
    echo "^^^ +++"
    echo "Testsuite failed."
  else
    echo "✅ Tests complete.";
  fi
fi
