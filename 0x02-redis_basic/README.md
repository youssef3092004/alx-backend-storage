# Redis Basic

This project covers the basics of using Redis, a powerful in-memory data structure store, used as a database, cache, and message broker.

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Contributing](#contributing)
- [License](#license)

## Introduction
Redis is an open-source, in-memory key-value store that can be used as a database, cache, and message broker. It supports various data structures such as strings, hashes, lists, sets, and more.

## Installation
To install Redis, follow these steps:

1. Download the latest version from the [official website](https://redis.io/download).
2. Extract the tarball: `tar xzf redis-x.y.z.tar.gz`
3. Compile Redis: `cd redis-x.y.z && make`
4. Start the Redis server: `src/redis-server`

## Usage
To interact with Redis, you can use the Redis CLI or integrate it into your application using various client libraries available for different programming languages.

### Redis CLI
Start the Redis CLI with the following command:
```sh
src/redis-cli
```

### Example Commands
```sh
SET key "value"
GET key
```

## Examples
Here are some examples of how to use Redis in different scenarios:

### Caching
```python
import redis

r = redis.Redis(host='localhost', port=6379, db=0)
r.set('foo', 'bar')
print(r.get('foo'))
```

### Pub/Sub
```python
import redis

r = redis.Redis(host='localhost', port=6379, db=0)
p = r.pubsub()
p.subscribe('my-channel')

for message in p.listen():
    print(message)
```

## Contributing
Contributions are welcome! Please read the [contributing guidelines](CONTRIBUTING.md) before submitting a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
