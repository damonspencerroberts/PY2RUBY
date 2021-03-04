const initNightMode = () => {
  const moon = document.querySelector('.moon-icon');
  const page = document.querySelector('.page-container');
  let night = false;
  console.log(night)
  night ? page.classList.add('night-mode') : page.classList.add('normal-container');
  moon.addEventListener('click', () => {
    page.classList.toggle('normal-container');
    page.classList.toggle('night-mode')
    night = !night;
    console.log(night);
  });
}

export default initNightMode;
