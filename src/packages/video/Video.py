# pylint: disable=invalid-name
"""
PDF class
"""

# from src.packages.image.basic import Basic
from robot.api.deco import keyword, library
from moviepy.editor import VideoFileClip
import os


@library
class Video:
    def __init__(self) -> None:
        pass

    @keyword
    def smoke(self, text: str):
        print("Hello World", text)
        return

    @keyword
    def extract_audio_from_video(self, filePath: str, outputDir: str):
        audio_path = os.path.join(outputDir, "audio.mp3")
        video = VideoFileClip(filePath)
        video.audio.write_audiofile(audio_path)
        return

    @keyword
    def extract_images_from_video(self, filePath: str, outputDir: str,
                                  n: float):
        video = VideoFileClip(filePath)
        x: float = 0.0
        while x < video.duration:
            image_path = os.path.join(outputDir, "{:.2f}.png".format(x))
            video.save_frame(image_path, x)
            x += n
        return
