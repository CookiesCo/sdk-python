#!/bin/bash

echo "+++ :pytest: Running tests...";
set +x;
mkdir -p ./docs/reports/coverage;
.env/bin/nosetests \
    --with-isolation \
    --with-coverage \
    --cover-package cookiesapi \
    --cover-min-percentage 70 \
    --cover-html \
    --cover-html-dir ./docs/reports/coverage \
    --cover-branches \
    --cover-xml \
    --cover-xml-file ./reports/coverage.xml \
    --with-xunit \
    --xunit-file ./reports/tests.xml \
    --xunit-testsuite-name sdk-python;
set -x;
