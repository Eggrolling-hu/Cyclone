import subprocess

if __name__ == "__main__":

    # WebBaidu
    # subprocess.run([
    #     "robot", "--outputdir", "data/output", "projects/WebBaidu/main.robot"
    # ])

    # WebCrawler
    # subprocess.run([
    #     "robot", "--outputdir", "data/output", "projects/WebCrawler/main.robot"
    # ])

    # PDF
    # subprocess.run(["robot", "--outputdir", "data/output", "tests/pdf.robot"])

    # Image
    # subprocess.run(
    #     ["robot", "--outputdir", "data/output", "tests/image.robot"])

    # Audio
    # subprocess.run(
    #     ["robot", "--outputdir", "data/output", "tests/audio.robot"])

    # Video
    subprocess.run(
        ["robot", "--outputdir", "data/output", "tests/video.robot"])
