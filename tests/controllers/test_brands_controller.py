# -*- coding: utf-8 -*-

"""
appapi

This file was automatically generated by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""

import json
import dateutil.parser

from tests.controllers.controller_test_base import ControllerTestBase
from tests.test_helper import TestHelper
from tests.http_response_catcher import HttpResponseCatcher
from appapi.api_helper import APIHelper
from appapi.controllers.brands_controller import BrandsController


class BrandsControllerTests(ControllerTestBase):

    @classmethod
    def setUpClass(cls):
        super(BrandsControllerTests, cls).setUpClass()
        cls.response_catcher = HttpResponseCatcher()
        cls.controller = BrandsController(cls.config, cls.response_catcher)

