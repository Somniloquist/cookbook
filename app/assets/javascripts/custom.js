function expandNav() {
  var nav = document.getElementById("mobile-nav");
  var closeArea = document.getElementById("mobile-nav-close"); // allows us to click outside the menu to close it
  nav.style.visibility = "visible";
  nav.style.width = "250px";
  closeArea.style.visibility = "visible";
  closeArea.style.background = "rgba(0,0,0,0.65)"
}

function closeNav() {
  var nav = document.getElementById("mobile-nav");
  var closeArea = document.getElementById("mobile-nav-close"); // allows us to click outside the menu to close it
  nav.style.width = "0";
  closeArea.style.background = "rgba(0,0,0,0)"
  // give the transition time to complete
  setTimeout(() => { 
    closeArea.style.visibility = "hidden";
    nav.style.visibility = "hidden";
  }, 300);
}

function expandNavSearch() {
  var navSearch = document.getElementById("nav-search");
  var closeButton = document.querySelector("#close-nav-search svg");
  navSearch.style.visibility = "visible";
  navSearch.style.opacity = "1";
  closeButton.style.transform = "rotate(0deg)";
}

function closeNavSearch() {
  var navSearch = document.getElementById("nav-search");
  var closeButton = document.querySelector("#close-nav-search svg");
  navSearch.style.opacity = "0";
  closeButton.style.transform = "rotate(-45deg)";
  setTimeout(() => { 
    navSearch.style.visibility = "hidden";
  }, 200);
}

function toggleStrikethrough(id) {
  var checklistItem = document.getElementById(id);
  checklistItem.addEventListener("click", function() {
    checklistItem.classList.toggle("strikethrough");
  });
}