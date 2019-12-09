---
to: "<%if (template === 'typescript') {%><%= path %>/src/scenes/index.ts<%}%>"
---
import { MainScene } from './MainScene';

export const scenes: Phaser.Scene[] = [
  new MainScene(),
];
