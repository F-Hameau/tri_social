import { markdown } from 'markdown';

const showMarkdown = () => {
  const textarea = document.getElementById('show-editor');
  const preview = document.getElementById('show-preview');
  console.log(textarea.innerText);
  const html = markdown.toHTML(textarea.innerText);
  preview.innerHTML = html;
};

export { showMarkdown };
