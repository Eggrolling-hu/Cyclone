from colorlog import ColoredFormatter
import logging
import time
import os


class ColorLogging:
    def __init__(self) -> None:
        self.formatter = ColoredFormatter(
            "%(asctime)s %(log_color)s%(levelname)-8s %(reset)s %(white)s%(message)s",
            datefmt="%Y-%m-%d %H:%M:%S",
            reset=True,
            log_colors={
                'DEBUG': 'cyan',
                'INFO': 'green',
                'WARNING': 'yellow',
                'ERROR': 'red',
                'CRITICAL': 'red,bg_white',
            },
            secondary_log_colors={},
            style='%')

        self.fh_formatter = ColoredFormatter(
            "%(asctime)s %(levelname)-8s %(message)s",
            datefmt="%Y-%m-%d %H:%M:%S",
            reset=True,
            style='%',
            no_color=True)

    def get_logger(self, log_file: bool = False, log_dir: str = ""):
        self.logger = logging.getLogger('example')
        self.logger.handlers.clear()

        # Create a terminal object
        th = logging.StreamHandler()
        th.setFormatter(self.formatter)
        self.logger.addHandler(th)

        # Create a file object
        if log_file:
            _basename = time.strftime("%Y-%m-%d") + ".log"
            _filename = os.path.join(log_dir, _basename)
            fh = logging.FileHandler(_filename)
            fh.setFormatter(self.fh_formatter)
            self.logger.addHandler(fh)

        self.set_level()
        return self.logger

    def set_level(self, level: str = "DEBUG") -> None:
        self.logger.setLevel(level)


if __name__ == "__main__":
    logger = ColorLogging().get_logger()
    logger.setLevel("DEBUG")
    logger.debug("This is test")
    logger.info("This is test")
    logger.warning("This is test")
    logger.error("This is test")
    logger.critical("This is test")
