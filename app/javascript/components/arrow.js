const initOrangeArrows = () => {
  const title = document.querySelector('#title');
  const arrow1 = document.querySelector('#arrow1');
  const arrow2 = document.querySelector('#arrow2');
  const arrow3 = document.querySelector('#arrow3');

  title.addEventListener('mouseover', () => {
    setTimeout(function() {
      arrow1.classList.add('java');
    }, 500);

    setTimeout(function() {
      arrow2.classList.add('java');
    }, 1000);

    setTimeout(function() {
      arrow3.classList.add('java');
    }, 1500);

    setTimeout(function() {
      arrow1.classList.remove('java');
    }, 2000);

    setTimeout(function() {
      arrow2.classList.remove('java');
    }, 2500);

    setTimeout(function() {
      arrow3.classList.remove('java');
    }, 3000);
  });
}

export { initOrangeArrows }