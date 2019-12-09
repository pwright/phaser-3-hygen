---
to: "<%if (template === 'typescript') {%><%= path %>/src/scenes/MainScene.ts<%}%>"
---
import * as Phaser from 'phaser';

const sceneConfig: Phaser.Types.Scenes.SettingsConfig = {
  active: false,
  visible: false,
  key: 'MainScene',
};

export class MainScene extends Phaser.Scene {
  constructor() {
    super(sceneConfig);
  }

  public preload(): void {}

  public create(): void {
    this.add.text(10, 10, 'Hello World!');
  }

  public update(): void {}
}
