function closeNavMenu() {
    var navMenu = document.querySelector('.nav-menu');
    var menuItems = document.querySelectorAll('.menu-item');
  
    navMenu.classList.remove('open');
  
    // Remove a classe "open" de cada item do menu para fechá-los
    menuItems.forEach(function(item) {
      item.classList.remove('open');
    });
  }