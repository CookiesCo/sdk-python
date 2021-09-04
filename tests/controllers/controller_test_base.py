# -*- coding: utf-8 -*-

"""
appapi

This file was automatically generated by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""

import unittest

from appapi.configuration import Configuration
from appapi.configuration import Environment
from appapi.appapi_client import AppapiClient


class ControllerTestBase(unittest.TestCase):

    """All test classes inherit from this base class. It abstracts out
    common functionality and configuration variables set up."""

    @classmethod
    def setUpClass(cls):
        """Class method called once before running tests in a test class."""
        cls.request_timeout = 30
        cls.assert_precision = 0.01
        cls.config = ControllerTestBase.create_configuration()
        cls.client = AppapiClient()

    @staticmethod
    def create_configuration():
        return Configuration()
