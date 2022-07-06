# pylint: disable=invalid-name
"""
PDF class
"""

# from src.packages.image.basic import Basic
from robot.api.deco import keyword, library
import subprocess
import pyscreeze


@library
class Pdf:
    def __init__(self) -> None:
        pass

    @keyword
    def smoke(self, text: str):
        print("Hello World", text)
        return

    @keyword
    def locate(self, needleImage: str, haystackImage: str, **kwargs):
        return pyscreeze.locate(needleImage, haystackImage, **kwargs)

    @keyword
    def extract_images_from_PDF(self, filePath: str, outputDir: str):
        subprocess.run(["pdf2txt.py", filePath, "--output-dir", outputDir],
                       stdout=subprocess.PIPE)
        return
