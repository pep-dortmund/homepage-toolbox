function languageSwitchUrl(language) {
  const url = new URL(window.location.href);
  const path = url.pathname.replace(/^\/(?:de|en)(?=\/|$)/, `/${language}`);

  return `${path}${url.search}${url.hash}`;
}

function render({ model, el }) {
  const language = model.get('language');
  const link = document.createElement('a');

  link.href = languageSwitchUrl(language);
  link.setAttribute('aria-label', `Switch to ${language === 'de' ? 'German' : 'English'}`);

  const icon = new Image(24, 24);
  icon.src = `https://api.iconify.design/circle-flags/lang-${language}.svg`;
  icon.alt = `${language.toUpperCase()}`;
  icon.title = `Switch to ${language === 'de' ? 'German' : 'English'}`;
  icon.display = "inline-flex";
  icon.style.verticalAlign = "center";

  link.append(icon);

  el.append(link);
}

export default { render };
