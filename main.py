import subprocess

if __name__ == "__main__":

    # WebBaidu
    # subprocess.run([
    #     "robot", "--outputdir", "data/output", "projects/WebBaidu/main.robot"
    # ])

    # WebCrawler
    subprocess.run([
        "robot", "--outputdir", "data/output", "projects/WebCrawler/main.robot"
    ])
