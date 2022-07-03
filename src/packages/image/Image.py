# pylint: disable=invalid-name
"""
Image class
"""

# from src.packages.image.basic import Basic
from robot.api.deco import keyword
import pyscreeze


class Image:
    def __init__(self) -> None:
        pass

    @keyword
    def hello(self):
        print("Hello World")
        return

    @keyword
    def locate_image_area_on_image(needleImage, haystackImage, **kwargs):
        return pyscreeze.locate(needleImage, haystackImage, **kwargs)
