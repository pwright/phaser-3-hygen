#!/usr/bin/env node

import path from 'path';
import { runner } from 'hygen';
const logger = require('hygen/lib/logger');
const defaultTemplates = path.join(__dirname, 'templates');

runner(process.argv.slice(2), {
  templates: defaultTemplates,
  cwd: process.cwd(),
  logger: new logger(console.log.bind(console)),
  createPrompter: () => require('enquirer'),
  exec: (action, body) => {
    const opts = body && body.length > 0 ? { input: body } : {};
    return require('execa').shell(action, opts);
  },
  debug: !!process.env.DEBUG,
});
