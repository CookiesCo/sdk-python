# -*- coding: utf-8 -*-

"""
cookiesapi

This file was automatically generated by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""
from cookiesapi.models.media_item import MediaItem


class RasterGraphic(object):

    """Implementation of the 'RasterGraphic' model.

    Describes a rasterized asset which may carry variants with enhanced
    resolution.

    Attributes:
        standard (MediaItem): Standard-size graphic asset.
        retina (MediaItem): Retina-size graphic asset.

    """

    # Create a mapping from Model property names to API property names
    _names = {
        "standard": 'standard',
        "retina": 'retina'
    }

    def __init__(self,
                 standard=None,
                 retina=None):
        """Constructor for the RasterGraphic class"""

        # Initialize members of the class
        self.standard = standard
        self.retina = retina

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
        standard = MediaItem.from_dictionary(dictionary.get('standard')) if dictionary.get('standard') else None
        retina = MediaItem.from_dictionary(dictionary.get('retina')) if dictionary.get('retina') else None

        # Return an object of this model
        return cls(standard,
                   retina)
