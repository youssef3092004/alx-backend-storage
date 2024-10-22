def insert_school(mongo_collection, **kwargs):
    """
    Insert a document in a MongoDB collection.
    """
    if not mongo_collection:
        return None
    return mongo_collection.insert_one(kwargs).inserted_id
