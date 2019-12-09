---
to: "<%if (template === 'typescript') {%><%= path %>/package.json<%}%>"
---
{
  "name": "<%= name %>",
  "version": "1.0.0",
  "description": "<%= name %> (Phaser 3 + TypeScript)",
  "main": "webpack.config.js",
  "scripts": {
    "lint": "tslint 'src/**/*.ts' --project tsconfig.json",
    "build": "webpack --config webpack/prod.js ",
    "dev": "webpack-dev-server --config webpack/base.js --open",
    "tsc": "tsc"
  },
  "author": "<%= author %>",
  "license": "MIT",
  "devDependencies": {
    "@babel/core": "^7.2.2",
    "@babel/plugin-proposal-class-properties": "^7.5.5",
    "@babel/preset-env": "^7.2.3",
    "@babel/preset-typescript": "^7.3.3",
    "@types/node": "^12.12.16",
    "babel-loader": "^8.0.5",
    "clean-webpack-plugin": "^1.0.0",
    "file-loader": "^3.0.1",
    "html-webpack-plugin": "^3.2.0",
    "phaser": "<%= version %>",
    "raw-loader": "^1.0.0",
    "terser-webpack-plugin": "^1.2.1",
    "tslint": "^5.15.0",
    "tslint-config-airbnb": "^5.11.1",
    "typescript": "^3.1.6",
    "webpack": "^4.28.3",
    "webpack-cli": "^3.2.1",
    "webpack-dev-server": "^3.1.14",
    "webpack-merge": "^4.2.1"
  }
}
