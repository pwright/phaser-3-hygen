---
to: "<%if (template === 'typescript') {%><%= path %>/src/app.ts<%}%>"
---
import * as Phaser from 'phaser';

import { scenes } from './scenes/index';

const config: Phaser.Types.Core.GameConfig = {
  title: '<%= name %>',
  scene: scenes,
  physics: {
    default: 'arcade',
    arcade: {
      debug: false,
    },
  },
  scale: {
    mode: Phaser.Scale.FIT,
    parent: 'game',
    autoCenter: Phaser.Scale.CENTER_BOTH,
    width: 800,
    height: 600,
  },
};

export class <%= h.changeCase.pascal(name) %> extends Phaser.Game {
  private globals: any;

  constructor(config: Phaser.Types.Core.GameConfig) {
    super(config);
    this.globals = { debug: true };
  }
}

window.onload = () => {
  const game = new <%= h.changeCase.pascal(name) %>(config);
};
