# -*- coding: utf-8 -*-

"""
cookiesapi

This file was automatically generated by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""


class StrainSocial(object):

    """Implementation of the 'StrainSocial' model.

    Describes social media properties for a given strain.

    Attributes:
        review_count (int): Count of available reviews for this strain.
        review_rating (int): Average rating for this strain, across available
            public reviews.

    """

    # Create a mapping from Model property names to API property names
    _names = {
        "review_count": 'reviewCount',
        "review_rating": 'reviewRating'
    }

    def __init__(self,
                 review_count=None,
                 review_rating=None):
        """Constructor for the StrainSocial class"""

        # Initialize members of the class
        self.review_count = review_count
        self.review_rating = review_rating

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
        review_count = dictionary.get('reviewCount')
        review_rating = dictionary.get('reviewRating')

        # Return an object of this model
        return cls(review_count,
                   review_rating)
