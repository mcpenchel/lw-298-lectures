console.log("Hello from src/index.js!");

const images = document.querySelectorAll("img");

images.forEach((image) => {
  image.addEventListener("click", (event) => {
    debugger
    event.currentTarget.classList.add("img-circle");
  });
});
