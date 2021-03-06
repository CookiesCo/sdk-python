# -*- coding: utf-8 -*-

"""
cookiesapi

This file was automatically generated by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""
from cookiesapi.models.media_key import MediaKey
from cookiesapi.models.media_type import MediaType


class MediaItem(object):

    """Implementation of the 'MediaItem' model.

    Reference to a known media asset.

    Attributes:
        key (MediaKey): Unique key assigned to, or generated for, this asset.
        mtype (MediaType): Type specifications for this asset.
        serving_uri (string): Serving URI, if available, for this asset.
        uri (string): Origin URI for this asset.

    """

    # Create a mapping from Model property names to API property names
    _names = {
        "key": 'key',
        "mtype": 'type',
        "serving_uri": 'servingUri',
        "uri": 'uri'
    }

    def __init__(self,
                 key=None,
                 mtype=None,
                 serving_uri=None,
                 uri=None):
        """Constructor for the MediaItem class"""

        # Initialize members of the class
        self.key = key
        self.mtype = mtype
        self.serving_uri = serving_uri
        self.uri = uri

    @classmethod
    def from_dictionary(cls,
                        dictionary):
        """Creates an instance of this model from a dictionary

        Args:
            dictionary (dictionary): A dictionary representation of the object
            as obtained from the deserialization of the server's response. The
            keys MUST match property names in the API description.

        Returns:
            object: An instance of this structure class.

        """
        if dictionary is None:
            return None

        # Extract variables from the dictionary
        key = MediaKey.from_dictionary(dictionary.get('key')) if dictionary.get('key') else None
        mtype = MediaType.from_dictionary(dictionary.get('type')) if dictionary.get('type') else None
        serving_uri = dictionary.get('servingUri')
        uri = dictionary.get('uri')

        # Return an object of this model
        return cls(key,
                   mtype,
                   serving_uri,
                   uri)
