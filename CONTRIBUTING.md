# Contributing to the Basejump Whitepaper

Thank you for your interest in contributing to the Basejump whitepaper! This document provides guidelines and instructions for contributing.

## Getting Started

1. Ensure you have the prerequisites installed:
   - Docker
   - Just command runner
2. Fork and clone the repository
3. Build the environment: `just build-image`
4. Test the build system: `just build`

## Making Changes

### Content Guidelines

1. **Technical Accuracy**

   - Ensure all technical claims are accurate and well-researched
   - Include references for important technical assertions
   - Use consistent terminology throughout the document

2. **Writing Style**

   - Use clear, concise language
   - Maintain a professional and academic tone
   - Follow technical writing best practices
   - Use active voice when possible

3. **Citations**
   - Add new references to `src/references.bib`
   - Follow BibTeX format for citations
   - Ensure all citations are properly linked in the text

### File Organization

- Main content is in `src/paper.tex`
- Sections are in `src/sections/`
- Images go in `src/images/`
- References in `src/references.bib`

## Submitting Changes

1. Create a new branch for your changes
2. Make your changes following the guidelines above
3. Build and verify the PDF locally using `just build`
4. Commit your changes with clear, descriptive commit messages
5. Push to your fork and submit a pull request

### Pull Request Process

1. Fill out the pull request template completely
2. Link any related issues
3. Ensure the GitHub Actions build passes
   - The CI workflow will automatically build the whitepaper
   - You can download the built PDF from the workflow artifacts
   - Fix any build errors before requesting review
4. Wait for review from the maintainers

## Build Verification

Before submitting:

1. Run `just build-image` to ensure you have the latest build environment
2. Run `just build` to generate the PDF
3. Review the generated PDF in `action-whitepaper.pdf`
4. Check for any LaTeX warnings or errors in the build output
5. If this is a new version, run `just bump-version` to increment the version number

## Questions or Problems?

- Open an issue for general problems or questions
- Use the whitepaper issue template for content-specific concerns
- Tag appropriate teams using the CODEOWNERS structure

## Code of Conduct

- Be respectful and professional in all interactions
- Follow academic integrity standards
- Provide constructive feedback
- Respect the review process and timeline

Thank you for contributing to the Basejump whitepaper!
