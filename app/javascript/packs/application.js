//= require_tree .
// Add following lines.
//= require jquery
//= require jquery_ujs
import "bootstrap";

import { initMarkdown } from '../components/init_markdown';
import { showMarkdown } from '../components/show_markdown';
import {initUpdateNavbarOnScroll} from "../components/navbar";

if (document.querySelector('.home-banner')) {
  initUpdateNavbarOnScroll()
};


if (document.getElementById('preview')) {
  initMarkdown();
};

if (document.getElementById('show-preview')) {
  showMarkdown();
};
