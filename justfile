# Test CV compilation locally using act (release step will be skipped)
test-action:
    act push --job build -s GITHUB_TOKEN=fake --action-offline-mode --container-architecture linux/amd64

# Build CV locally (requires xelatex installed via basictex or mactex)
build:
    latexmk -xelatex -outdir=build -interaction=nonstopmode -gg cv.tex

# Clean build artifacts
clean:
    rm -rf build
