const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  const logo = document.querySelector('.navbar-wagon-brand');

  navbar.classList.remove('navbar-wagon-white');
  logo.classList.add('navbar-wagon-brand-none');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-wagon-white');
        logo.classList.remove('navbar-wagon-brand-none');
      } else {
        navbar.classList.remove('navbar-wagon-white');
        logo.classList.add('navbar-wagon-brand-none');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
