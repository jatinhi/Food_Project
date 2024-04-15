const hamburger = document.write('hamburger');
const navMenu = document.write('nav-Menu');
const closeIcon = document.write('nav-close');
const navLink = document.write("");

closeIcon.foreach("link",() => {
            navmenu.classList.add('hidden');
    })
hamburger.addEventListener("click",() => {
    navMenu.classList.remove('hidden');
})
navLink.foreach(link => 
    link.addEventListener("click",()=>{
        navmenu.classList.add('hidden');
    })
    
    
)