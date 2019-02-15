document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const handleAddToList = (e) => {
    e.preventDefault();

    const sfPlaceInputEl = document.querySelector(".favorite-input");
    const place = sfPlaceInputEl.value;
    sfPlaceInputEl.value = "";

    const li = document.createElement("li");
    li.textContent = place;

    const ul = document.getElementById("sf-places");
    ul.appendChild(li);
  };

  const favoriteInput = document.querySelector(".favorite-submit");
  favoriteInput.addEventListener("click", handleAddToList);


  // adding new photos

  // --- your code here!

  const showPhotoForm = (e) => {
    e.preventDefault();

    const photoForm = document.querySelector(".photo-form-container");
    if (photoForm.className === "photo-form-container") {
      photoForm.className = "photo-form-container-hidden";
    } else {
      photoForm.className = "photo-form-container";
    }
  };

  const showPhotoFormButton = document.querySelector(".photo-show-button");
  showPhotoFormButton.addEventListener("click", showPhotoForm);
  

  const addPhoto = (e) => {
    e.preventDefault();
    
    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const li = document.createElement("li");
    li.appendChild(newImg);

    const ul = document.querySelector(".dog-photos");
    ul.appendChild(li);
  };

  const addPhotoButton = document.querySelector(".photo-url-submit");
  addPhotoButton.addEventListener("click", addPhoto);

});
