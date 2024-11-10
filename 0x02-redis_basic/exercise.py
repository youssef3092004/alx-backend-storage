#!/usr/bin/env python3
"""
Redis module, Writing strings to Redis
Reading from Redis and recovering original type
Incrementing values, storing lists, Retrieving lists
"""
import redis
import uuid
from typing import Union, Callable, Optional
from functools import wraps


def count_calls(method: Callable) -> Callable:
    """
    Prototype: def count_calls(method: Caallable) -> Callable:
    Returns a Callable
    """
    @wraps(method)
    def wrapper(self, *args, **kwds):
        """
        Prototype: def wrapper(self, *args, **kwds):
        Returns wrapper
        """
        key_m = method.__qualname__
        self._redis.incr(key_m)
        return method(self, *args, **kwds)
    return wrapper
