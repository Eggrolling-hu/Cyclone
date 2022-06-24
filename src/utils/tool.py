import datetime
import string
import random
import pytz


def id_generator():
    return ''.join(random.choices(string.ascii_uppercase, k=6))


def generate_uuid(timezone='Asia/Shanghai'):
    return "{}-{}".format(
        datetime.datetime.now(
            tz=pytz.timezone(timezone)).strftime("%Y%m%d-%H%M%S"),
        id_generator())
