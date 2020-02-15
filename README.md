![Publish to GH Pages](https://github.com/vapurrmaid/my-bookshelf/workflows/Publish%20to%20GH%20Pages/badge.svg)
![David](https://img.shields.io/david/vapurrmaid/my-bookshelf?style=flat-square)

# Vapurrmaid's Bookshelf

A website containing key/noteworthy books on Vapurrmaid's bookshelf.

## Genres

Although most books maintained on this list are related to software, this bookshelf will contain books from the following genres:

- computer/software/technology
- philosophy
- science
- self-help

## Why

This website helps its maintainer(s) reflect on key learnings, so that they may be referenced again for personal or professional reasons.

## Development Notes

### Architecture

```text
.html-minifier.json - cli arguments used to minify output html files.
scripts/*.sh        - utilities for development. Do not include in output.
src/assets          - static assets that will be copied and used in output.
src/partials        - reusable content to be injected into output html page(s).
src/*.md            - markdown content to be injected into output html page(s).
```

### Building

Run the `build.sh` script either through `yarn` or directly:

```sh
./scripts/build.sh
yarn build
```

The script will create static assets in `dist/`. The `dist/` directory is the deployable unit (web server root).

### Helpful VS Code Extensions

- [Emoji](https://marketplace.visualstudio.com/items?itemName=Perkovec.emoji)
- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
