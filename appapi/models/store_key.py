# -*- coding: utf-8 -*-

"""
appapi

This file was automatically generated by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""


class StoreKey(object):

    """Implementation of the 'StoreKey' model.

    Specifies key information which uniquely identifies a physical retail
    store.

    Attributes:
        id (string): Unique ID for a store.
        code (string): First-party store code.

    """

    # Create a mapping from Model property names to API property names
    _names = {
        "id": 'id',
        "code": 'code'
    }

    def __init__(self,
                 id=None,
                 code=None):
        """Constructor for the StoreKey class"""

        # Initialize members of the class
        self.id = id
        self.code = code

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
        id = dictionary.get('id')
        code = dictionary.get('code')

        # Return an object of this model
        return cls(id,
                   code)
