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
  }, 400);
}

function expandNavSearch() {
  var navSearch = document.getElementById("nav-search");
  navSearch.style.visibility = "visible";
    navSearch.style.opacity = "1";
}

function closeNavSearch() {
  var navSearch = document.getElementById("nav-search");
  navSearch.style.opacity = "0";
  setTimeout(() => { 
    navSearch.style.visibility = "hidden";
  }, 200);
}