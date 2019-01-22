//= require_tree .
// Add following lines.
//= require jquery
//= require jquery_ujs

import "bootstrap";

import {initUpdateNavbarOnScroll} from "../components/navbar";

if (document.querySelector('.home-banner')) {
  initUpdateNavbarOnScroll()
};
