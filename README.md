## ABOUT

This repository provides a Codespace environment for instantly and automatically building and previewing LaTeX files.

The initial goal was to develop a Visual Studio Code extension for building LaTeX files and previewing PDFs "on-the-fly" within the web IDE. However, this is impractical due to the following limitations:

1. LaTeX processing relies on various packages and dependencies typically run in a local environment.
2. Web IDEs have limited access to the file system and system-level utilities.

The optimal approach is to create an extension using a codespace with all necessary dependencies. However, using a Docker image with Codespaces remains the simplest and most reliable solution for me at the current moment.

## HOW TO USE

1. Fork or use this repository and click on `Code`.
2. Click `Create codespace on main`.
3. Wait 2-3 minutes for the codespace to finish building.
4. Open `latex/sample.tex`.
5. Click the green triangle or press `Ctrl + Alt + B` to build the LaTeX project.
6. View `sample.pdf` in the `latex/PDF` directory.
7. Customize the layout, e.g., 50% `sample.tex` and 50% `sample.pdf`.
8. Changes to the `.tex` file will automatically rebuild and update the PDF preview.

> [!NOTE]
> The PDF preview may take approximately 30 seconds to work properly the first time.

## DOCKER IMAGE

The Docker image pulls the latest full version of TeX Live without documentation and source files, installs `git` and `perl`, and cleans unnecessary files, totaling 2.33GB. Depending on the project needs, other tags like `minimal`, `small`, or `medium` may also be used, to reduce codespaces build time.

- [TeX Live Docker Images Tags](https://hub.docker.com/r/texlive/texlive/tags)

## FOLDER AND FILE STRUCTURE

```bash
latex-preview-container/
│
├── .devcontainer/
│   ├── devcontainer.json   # Configuration file for Codespaces devcontainer
│
├── docker/
│   ├── Dockerfile          # Dockerfile for setting up the development environment
│   ├── docker-compose.yml  # Docker Compose file for managing Docker containers
│
├── latex/
│   ├── sample.tex          # Sample LaTeX file for testing purposes
│
├── LICENSE                 # Licensing information for the project
└── README.md               # Project documentation
```

## REFERENCES

| Link | Source |
| :--  | :----- |
| [TeX Live](https://tug.org/texlive) | `Website` |
| [TeX Live Docker Image](https://hub.docker.com/r/texlive/texlive) | `Website` |
| [Installing TeX Live](https://tug.org/texlive/acquire-netinstall.html) | `Website` |
| [The Comprehensive TeX Archive Network](https://www.ctan.org/) | `Website` |
| [James-Yu/LaTeX-Workshop](https://github.com/James-Yu/LaTeX-Workshop) | `GitHub` |
| [PDFTeX](https://www.tug.org/applications/pdftex/) | `Website` |
| [TinyTeX](https://yihui.org/tinytex/) | `Unix` |
| [MiKTeX](https://miktex.org/) | `Windows` |
| [MacTeX](https://tug.org/mactex/) | `Macintosh` |

## FUTURE PLANS

- [ ] Create a smaller and otimized Docker image with minimal tools for LaTeX, to build and preview PDF files.
- [ ] Include new extensions in the `devcontainer.json` to enhance the workflow, such as grammar check, code formatting, Copilot, etc.
- [ ] Explore the [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop/wiki) extension wiki to provide more features and utilities to the devcontainer.

## CONTRIBUTING

If you find any issues or have suggestions for improvements, feel free to fork the repository and open an issue or submit a pull request.

## LICENSE

This project is licensed under The Unlicense. See the [LICENSE](https://github.com/jotavare/latex-preview-container/blob/main/LICENSE) file for details.