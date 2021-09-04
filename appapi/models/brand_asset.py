# -*- coding: utf-8 -*-

"""
appapi

This file was automatically generated by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""
from appapi.models.media_item import MediaItem
from appapi.models.raster_graphic import RasterGraphic


class BrandAsset(object):

    """Implementation of the 'BrandAsset' model.

    Asset linked to a managed brand.

    Attributes:
        raster (RasterGraphic): Rasterized asset.
        vector (MediaItem): Vector asset, if available.

    """

    # Create a mapping from Model property names to API property names
    _names = {
        "raster": 'raster',
        "vector": 'vector'
    }

    def __init__(self,
                 raster=None,
                 vector=None):
        """Constructor for the BrandAsset class"""

        # Initialize members of the class
        self.raster = raster
        self.vector = vector

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
        raster = RasterGraphic.from_dictionary(dictionary.get('raster')) if dictionary.get('raster') else None
        vector = MediaItem.from_dictionary(dictionary.get('vector')) if dictionary.get('vector') else None

        # Return an object of this model
        return cls(raster,
                   vector)
