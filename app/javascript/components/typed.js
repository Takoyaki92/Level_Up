const typed4 = () => {
  if(document.getElementById('typedjs')) {
    return new Typed('#typedjs', {
      strings: ['I want to learn history', 'I want to learn cooking', 'I want to learn plumbing'],
      typeSpeed: 1,
      backSpeed: 0,
      attr: 'placeholder',
      bindInputFocusEvents: true,
      loop: true
    }); 
  }
}
export { typed4 };