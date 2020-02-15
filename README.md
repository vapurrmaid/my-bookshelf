![Publish to GH Pages](https://github.com/vapurrmaid/my-bookshelf/workflows/Publish%20to%20GH%20Pages/badge.svg)
![David](https://img.shields.io/david/vapurrmaid/my-bookshelf?style=flat-square)

# Vapurrmaid's Bookshelf

A website containing noteworthy books on Vapurrmaid's bookshelf.

## Genres

Although most books maintained on this list are related to software, the
bookshelf will include the following genres:

- computer/software/technology
- philosophy
- science
- self-help

In general, Vapurrmaid is most interested in:

- applied signal processing
- cognition and consciousness
- epistemology
- existentialism
- object design
- relationships

## Why

This website helps its maintainer(s) reflect on key learnings, so that they may
be referenced again for personal or professional reasons.

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

```bash
./scripts/build.sh
yarn build
```

The script will create static assets in `dist/`. The `dist/` directory is the
deployable unit (web server root).

#### Options

```text
build.sh            - cleans, then builds a minified output.
build.sh --dev-mode - builds the output **without** cleaning or minifying.
```

### Development

Run the `dev.sh` script either through `yarn` or directly:

```bash
./scripts/dev.sh
yarn dev
```

The script will:

- open your default browser on port `8080`
- `watch` for changes to `src` directory and trigger `yarn build` on change
- reload changes in the browser whenever the `dist` contents change (presumably
  from the prior step)

### Helpful VS Code Extensions

- [Emoji](https://marketplace.visualstudio.com/items?itemName=Perkovec.emoji)
- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

### Why a Customized Vanilla Setup

While many useful content management systems and frameworks exist, I wanted to
create something from scratch without any dependencies. While I'm aware that
reinventing the wheel is usually not a best practice for professional artefacts,
this project is a labour of love. Furthermore, I find homebrewing to be
educational and rewarding.

The setup is compact and performant as a result of having very few working
parts. The resulting website does not pull in any external css, fonts or
scripts. Furthermore the cognitive effort required to learn the development
toolchain and project architecture is very small, and does not need to be
continually updated against new releases of dependencies.
