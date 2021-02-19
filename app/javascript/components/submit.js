const submit= () => {
  const button = document.querySelector("#submit-share");

  button.addEventListener('click', (event) => {
    document.getElementById("form1").submit();
    document.getElementById("form2").submit();
  });
};

export { submit }
