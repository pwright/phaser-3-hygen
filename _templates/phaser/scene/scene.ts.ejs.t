---
to: "<%if (language === 'typescript') {%>src/scenes/<%= name %>.ts<%}%>"
---
import * as Phaser from 'phaser';

const sceneConfig: Phaser.Types.Scenes.SettingsConfig = {
  active: false,
  visible: false,
  key: '<%= name %>',
};

export class <%= name %> extends Phaser.Scene {
  constructor() {
    super(sceneConfig);
  }

  public preload(): void {}

  public create(): void {}

  public update(): void {}
}
