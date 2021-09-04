# -*- coding: utf-8 -*-

import sys
from setuptools import setup, find_packages


def readfile(file):
    if sys.version_info[0] < 3:
        with open(file, 'r') as fh:
            return fh.read()
    else:
        with open(file, 'r', encoding='utf-8') as fh:
            return fh.read()

long_description = readfile('README.md')
libversion = readfile('.version')
deps = readfile('requirements.txt')
devdeps = readfile('dev-requirements.txt')


setup(
    name='cookiesapi',
    version=libversion,
    description='Python SDK for working with Cookies APIs.',
    long_description=long_description,
    long_description_content_type="text/markdown",
    author='Eng@Cookies',
    author_email='engineering@cookiescalifornia.com',
    url='https://cookies.dev',
    packages=find_packages(),
    install_requires=filter(lambda x: x != '', deps.split('\n')),
    tests_require=filter(lambda x: x != '', devdeps.split('\n')),
    test_suite = 'nose.collector'
)
