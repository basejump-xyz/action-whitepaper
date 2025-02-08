# Build the latex-tools Docker image
build-image:
    docker build -t latex-tools .

# Increment the minor version number
bump-version:
    cd src && ./increment-version.sh

# Build the paper using latex-tools
build:
    mkdir -p build
    docker run --rm \
        -v $(pwd)/src:/workdir \
        -v $(pwd)/build:/workdir/build \
        latex-tools bash -c "\
            cd /workdir && \
            pdflatex -output-directory=build paper.tex && \
            bibtex build/paper.aux && \
            pdflatex -output-directory=build paper.tex && \
            pdflatex -output-directory=build paper.tex"
    mv build/paper.pdf action-whitepaper.pdf
