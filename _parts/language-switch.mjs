const LANGUAGE_SWITCH_URL = /^https:\/\/toolbox\.pep-dortmund\.org\/(de|en)\/?$/;

const languageSwitchTransform = {
  name: 'language-switch',
  stage: 'document',
  plugin: (_, utils) => (tree) => {
    const links = utils.selectAll('link', tree) ?? [];

    links.forEach((link) => {
      const match = typeof link.url === 'string' ? link.url.match(LANGUAGE_SWITCH_URL) : null;
      if (!match) return;

      Object.keys(link).forEach((key) => delete link[key]);
      Object.assign(link, {
        type: 'anywidget',
        esm: './language-switch-widget.mjs',
        model: { language: match[1] },
      });
    });
  },
};

export default {
  name: 'Language Switcher',
  transforms: [languageSwitchTransform],
};
