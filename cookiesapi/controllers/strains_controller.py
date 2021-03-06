# -*- coding: utf-8 -*-

"""
cookiesapi

This file was automatically generated by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""

from cookiesapi.api_helper import APIHelper
from cookiesapi.configuration import Server
from cookiesapi.controllers.base_controller import BaseController
from cookiesapi.models.strain_list import StrainList


class StrainsController(BaseController):

    """A Controller to access Endpoints in the cookiesapi API."""

    def __init__(self, config, call_back=None):
        super(StrainsController, self).__init__(config, call_back)

    def list_strains(self,
                     brand=None):
        """Does a GET request to /app/v1/strains.

        Retrieve a list of Cookies signature strains.

        Args:
            brand (CookiesBrandEnum, optional): Brand to filter by.

        Returns:
            StrainList: Response from the API.

        Raises:
            APIException: When an error occurs while fetching the data from
                the remote API. This exception includes the HTTP Response
                code, an error message, and the HTTP body that was received in
                the request.

        """

        # Prepare query URL
        _url_path = '/app/v1/strains'
        _query_builder = self.config.get_base_uri(Server.DEFAULT)
        _query_builder += _url_path
        _query_parameters = {
            'brand': brand
        }
        _query_builder = APIHelper.append_url_with_query_parameters(
            _query_builder,
            _query_parameters
        )
        _query_url = APIHelper.clean_url(_query_builder)

        # Prepare headers
        _headers = {
            'accept': 'application/json;charset=utf-8'
        }

        # Prepare and execute request
        _request = self.config.http_client.get(_query_url, headers=_headers)
        _response = self.execute_request(_request)
        self.validate_response(_response)

        decoded = APIHelper.json_deserialize(_response.text, StrainList.from_dictionary)

        return decoded
