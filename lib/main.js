exports.activate = () => {
  if (!atom.grammars.addInjectionPoint) return;

  // Inject HTML into `template` nodes.
  atom.grammars.addInjectionPoint('source.jinja', {
    type: 'template',
    language() { return 'html'; },
    content(node) { return node.descendantsOfType('text'); }
  });

  // Inject Python into `expression` nodes.
  atom.grammars.addInjectionPoint('source.jinja', {
    type: 'expression',
    language() { return 'python'; },
    content(node) { return node; }
  });

  // Inject Python into `custom_tag` nodes.
  atom.grammars.addInjectionPoint('source.jinja', {
    type: 'custom_tag',
    language() { return 'python'; },
    content(node) { return node; }
  });
};

// Inject hyperlink highlighting into comments.
exports.consumeHyperlinkInjection = (hyperlink) => {
  hyperlink.addInjectionPoint('source.jinja', {
    types: ['comment']
  });
};

// Inject TODO highlighting into comments.
exports.consumeTodoInjection = (todo) => {
  todo.addInjectionPoint('source.jinja', { types: ['comment'] });
};
