#!/usr/bin/env python3
"""
Changes all topics of a schooll document based on the name
Prototype: def update_topics(mongo_collection, name, topics):
mongo_collection will be the pymongo object
name (String) will be the school name to update
topics (list of strings) will be the list of topics approached in the school
"""

def update_topics(mongo_collection, name, topics):
    """
    Update all documents based on the name
    """
    if not mongo_collection:
        return
    mongo_collection.update({"name": name}, {"$set": {"topics": topics}}, multi=True)
