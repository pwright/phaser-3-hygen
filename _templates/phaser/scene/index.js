const languageChoices = ['typescript'];

module.exports = {
  prompt: ({ prompter, args }) => {
    const prompts = [];
    if (!args.name) {
      prompts.push(
        {
          type: 'input',
          name: 'name',
          message: "What's the name of your scene?"
        }
      );
    }

    if (!args.language || !languageChoices.includes(args.language.toLowerCase())) {
      prompts.push(
        {
          type: 'select',
          name: 'language',
          choices: languageChoices,
        }
      );
    }

    if (prompts.length > 0) return prompter.prompt(prompts);
    return Promise.resolve({ allow: true })
  }
}
