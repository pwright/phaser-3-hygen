const templateChoices = ['typescript'];
const supportedPhaserVersions = ['3.21.0'];

module.exports = {
  prompt: ({ prompter, args }) => {
    const prompts = [];
    if (!args.name) {
      prompts.push(
        {
          type: 'input',
          name: 'name',
          message: "What's the name of your game?"
        }
      );
    }

    if (!args.author) {
      prompts.push(
        {
          type: 'input',
          name: 'author',
          message: "What is your name?"
        }
      );
    }

    if (!args.template || !templateChoices.includes(args.template.toLowerCase())) {
      prompts.push(
        {
          type: 'select',
          name: 'template',
          choices: templateChoices,
        }
      );
    }

    if (!args.version || !supportedPhaserVersions.includes(args.version)) {
      prompts.push(
        {
          type: 'select',
          name: 'version',
          choices: supportedPhaserVersions,
        }
      );
    }

    if (!args.path) {
      prompts.push(
        {
          type: 'input',
          name: 'path',
          choices: 'Filepath?',
        }
      );
    }

    if (prompts.length > 0) return prompter.prompt(prompts);
    return Promise.resolve({ allow: true })
  }
}
