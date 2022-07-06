# pylint: disable=invalid-name
"""
Image class
"""

# from src.packages.image.basic import Basic
from robot.api.deco import keyword, library
import pyscreeze


@library
class Image:
    def __init__(self) -> None:
        pass

    @keyword
    def smoke(self, text: str):
        print("Hello World", text)
        return

    @keyword
    def smoke_smoke_smoke_smoke_smoke(self, needleImage: str,
                                      haystackImage: str):
        print(needleImage, haystackImage)
        return

    @keyword
    def locate(self, needleImage: str, haystackImage: str, **kwargs):
        return pyscreeze.locate(needleImage, haystackImage, **kwargs)
