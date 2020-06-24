import os


def run(filename):
    os.system(f"xelatex --shell-escape {filename}")

if __name__ == "__main__":
    run("test.tex")