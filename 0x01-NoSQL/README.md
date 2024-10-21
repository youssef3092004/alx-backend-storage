# 0x01. NoSQL

## Description
This project covers the basics of NoSQL databases, focusing on MongoDB. It includes exercises and examples to help understand the concepts and operations of NoSQL databases.

## Learning Objectives
- Understand the differences between SQL and NoSQL databases.
- Learn about the different types of NoSQL databases.
- Understand the basics of MongoDB.
- Perform CRUD operations in MongoDB.
- Understand indexing and aggregation in MongoDB.

## Requirements
- MongoDB 4.4 or higher
- Python 3.8 or higher
- `pymongo` library

## Installation
To install MongoDB, follow the instructions on the [official MongoDB website](https://docs.mongodb.com/manual/installation/).

To install the `pymongo` library, use pip:
```sh
pip install pymongo
```

## Usage
To start the MongoDB server:
```sh
mongod
```

To connect to MongoDB using Python:
```python
import pymongo

client = pymongo.MongoClient("mongodb://localhost:27017/")
db = client["mydatabase"]
```

## Author
- Joe404

## License
This project is licensed under the MIT License.
