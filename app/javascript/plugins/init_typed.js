import Typed from 'typed.js';

const initTyped = () => {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Ruby.", "Python.", "Enjoy."],
      typeSpeed: 150,
      loop: true
    });
  }
}

export default initTyped;