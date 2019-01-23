import { markdown } from 'markdown';

const showMarkdown = () => {
  const textarea = document.getElementById('show-editor');
  const preview = document.getElementById('show-preview');
  const html = markdown.toHTML(textarea.value);
  preview.innerHTML = html;
};

export { showMarkdown };
