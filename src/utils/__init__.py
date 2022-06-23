from pickle import GLOBAL
from src.utils.logger import *
from src.utils.tool import *

GLOBAL_LOGGER = None


def get_logger():
    if GLOBAL_LOGGER is None:
        GLOBAL_LOGGER = ColorLogging().get_logger(
            log_file=True,
            log_dir="logs/{}".format(generate_uuid()),
        )
    return GLOBAL_LOGGER
