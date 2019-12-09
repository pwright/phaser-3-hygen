# Phaser-3-Hygen

A [Hygen](https://github.com/jondot/hygen) [Phaser 3](https://github.com/photonstorm/phaser) Project Generator. Currently, this generator only supports TypeScript projects.

## Quick Start

This section provides the basic commands needed to generate a project using this generator. For more detailed instructions and more information, please see relevant section of the `README.md`.

```Bash
npx phaser-3-hygen phaser template
```

You should then be prompted for some additional infomation about your project. Once the project is generated, navigate to that generated project folder and run `npm install` and then `npm run dev` to launch the `dev` server with your Phaser 3 game.

## Generate a project

In order to run the generator, you will need to use `npx` to run the generator, or you will need to install the package globally.

### Install

To install the package globally:

```Bash
npm install -g phaser-3-hygen
```

Or, you can use `npx` to install the package:

```Bash
npx phaser-3-hygen phaser help
```

### Running the generator

If you installed the package in your project and not globally, you can run the generator by running:

```Bash
node node_modules/.bin/phaser-hygen phaser help
```

If you installed the package globally, you can run the generator by running:

```Bash
phaser-hygen phaser help
```

If you use `npx` to install the package, the generator should be ran automatically.

**Note: when you run one of the commands above, you should be shown a list of `actions` that you can run with this template generator.**

### Available Hygen Actions

| Command | Description |
|---------|-------------|
| `phaser-3-hygen phaser help` | Displays the available actions you can take for this generator |
| `phaser-3-hygen phaser scene` | Creates a basic Scene Class that extends the `Phaser.Scene` class |
| `phaser-3-hygen phaser template` | Creates a basic Phaser 3 TypeScript project |

### Running the project

Once you have generated your project, you will need to install the required dependencies for that project. To do this just run: `npm install`. Once everything is installed, you can run one of the following commands:

| Command | Description |
|---------|-------------|
| `npm run lint` | Lints the project using tslint |
| `npm run dev` | Builds project and open web server, but do not watch for changes |
| `npm run build` | Builds code bundle with production settings (minification, no source maps, etc..) |

## Publishing New Version
In order to create a new beta version of this package, you can use the `npm version` command. This command will also create a `git` tag with the same version number. Example: `npm version 0.0.2`

Once you do this, you can run the `npm run package-publish` script.

### Beta
In order to create a new beta version of this package, you can use the same command as above, but you will need to append `-beta.0`. Example: `npm version 0.0.2-beta.0`

Once you do this, you can run the `npm run package-publish:beta` script.
