# -*- coding: utf-8 -*-

import sys
from setuptools import setup, find_packages

if sys.version_info[0] < 3:
    with open('README.md', 'r') as fh:
        long_description = fh.read()
else:
    with open('README.md', 'r', encoding='utf-8') as fh:
        long_description = fh.read()

setup(
    name='appapi',
    version='1.0.0',
    description='Main Cookies application API, which provides endpoints for developers working with Cookies. Fetch canonical records relating to brands, stores, and strains.',
    long_description=long_description,
    long_description_content_type="text/markdown",
    author='Eng@Cookies',
    author_email='engineering@cookiescalifornia.com',
    url='https://cookies.dev',
    packages=find_packages(),
    install_requires=[
        'requests>=2.9.1, <3.0',
        'jsonpickle>=0.7.1, <1.0',
        'cachecontrol>=0.11.7, <1.0',
        'python-dateutil>=2.5.3, <3.0',
        'enum34>=1.1.6'
    ],
    tests_require=[
        'nose>=1.3.7'
    ],
    test_suite = 'nose.collector'
)