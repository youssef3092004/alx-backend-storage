#!/usr/bin/env python3
"""
Insert a new document in a collection based on kwargs
Prototype: def insert_school(mongo_collection, **kwargs):
mongo_collection will be pymongo collection object
Returns new _id
"""

def insert_school(mongo_collection, **kwargs):
    """
    Insert a document in a MongoDB collection.
    """
    if not mongo_collection:
        return None
    return mongo_collection.insert_one(kwargs).inserted_id
