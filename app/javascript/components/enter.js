const enter= () => {
  const commentDescriptions = document.querySelectorAll("#comment_description");
  commentDescriptions.forEach((commentDescription) => {
    const enterButton = commentDescription.parentElement.nextElementSibling;
   
   commentDescription.addEventListener('keyup', (event) => {
     if (event.key === "Enter") {
       enterButton.click();
     };
   });

  })

};

export { enter }