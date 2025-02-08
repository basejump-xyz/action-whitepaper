# Action Whitepaper

This repository contains the LaTeX source code for the [Basejump](https://basejump.xyz/) Action whitepaper. The paper outlines the technical architecture, tokenomics, governance model, and vision for the [Basejump](https://basejump.xyz/) ecosystem.

<img src="src/images/image1.png" alt="Action" width="300"/>

## Prerequisites

Before building the whitepaper, ensure you have the following installed:

1. **Docker**

   - [Install Docker](https://docs.docker.com/get-docker/)
   - Required for running the LaTeX build environment

2. **Just Command Runner**
   - macOS/Linux (using Homebrew):
     ```bash
     brew install just
     ```
   - Other installation methods available at [just.systems/](https://just.systems/)

## Building the Whitepaper

There are two ways to build the whitepaper: using VS Code or the command line.

### Using VS Code

1. Install the LaTeX Workshop extension
2. Build the Docker image:
   ```bash
   just build-image
   ```
3. Configure LaTeX Workshop to use Docker:
   - Set the image name to `latex-tools`
4. LaTeX Workshop will automatically compile the paper to preview `src/paper.tex`

### Using Command Line

1. Build the Docker image (first time only):

   ```bash
   just build-image
   ```

2. Build the paper:
   ```bash
   just build
   ```

The compiled PDF will be available at `action-whitepaper.pdf`.

3. Increment version (when needed):
   ```bash
   just bump-version
   ```
   This increments the minor version number of the whitepaper. Only use this command when you want to create a new version.

## Repository Structure

```
.
├── src/                    # LaTeX source files
│   ├── paper.tex          # Main LaTeX file
│   ├── references.bib     # Bibliography
│   ├── sections/          # Paper sections
│   └── images/            # Figures and diagrams
├── build/                 # Output directory
├── Dockerfile            # LaTeX build environment
└── justfile             # Build automation
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
