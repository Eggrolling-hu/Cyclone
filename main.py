import subprocess

if __name__ == "__main__":

    # PDF
    # subprocess.run(["robot", "--outputdir", "data/output", "tests/pdf.robot"])

    # Video
    # subprocess.run(
    #     ["robot", "--outputdir", "data/output", "tests/video.robot"])

    # Audio
    # subprocess.run(
    #     ["robot", "--outputdir", "data/output", "tests/audio.robot"])

    # Image
    # subprocess.run(
    #     ["robot", "--outputdir", "data/output", "tests/image.robot"])

    # WebBaidu
    # subprocess.run([
    #     "robot", "--outputdir", "data/output", "projects/WebBaidu/main.robot"
    # ])å

    # WebCrawler
    # subprocess.run([
    #     "robot", "--outputdir", "data/output", "projects/WebCrawler/main.robot"
    # ])

    # HD
    subprocess.run(
        ["robot", "--outputdir", "data/output", "projects/HD/main.robot"])

    pass