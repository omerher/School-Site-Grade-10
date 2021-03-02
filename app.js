// Page transitions JavaScript
const homeButton = document.querySelector('#home-button');
const featured = document.querySelector('#featured-button');
const topMovies = document.querySelector('#top-movies-button');
const genres = document.querySelector('#genres-button');
const register = document.querySelector('#register-button')
const login = document.querySelector('#login-button')
const logOut = document.querySelector('#log-out-button')
const adminPage = document.querySelector('#admin-page-button')
const userPage = document.querySelector('#user-page-button')

const animationDiv = document.querySelector('#animation-div');
const coverDiv = document.querySelector('#cover-div');

homeButton.addEventListener('click', () => {
    animationDiv.classList.toggle('open');
    setTimeout(function(){ window.location.href = 'index.aspx'; }, 500);
});

featured.addEventListener('click', () => {
    animationDiv.classList.toggle('open');
    setTimeout(function(){ window.location.href = 'featured.aspx'; }, 500);
});

topMovies.addEventListener('click', () => {
    animationDiv.classList.toggle('open');
    setTimeout(function(){ window.location.href = 'topPicks.aspx'; }, 500);
});

genres.addEventListener('click', () => {
    animationDiv.classList.toggle('open');
    setTimeout(function(){ window.location.href = 'genres.aspx'; }, 500);
});

try {
    register.addEventListener('click', () => {
        animationDiv.classList.toggle('open');
        setTimeout(function () { window.location.href = 'register.aspx'; }, 500);
    });
}
catch {}

try {
    login.addEventListener('click', () => {
        animationDiv.classList.toggle('open');
        setTimeout(function () { window.location.href = 'login.aspx'; }, 500);
    });
}
catch {}

try {
    adminPage.addEventListener('click', () => {
        animationDiv.classList.toggle('open');
        setTimeout(function () { window.location.href = 'adminPage.aspx'; }, 500);
    });
}
catch {}

try {
    userPage.addEventListener('click', () => {
        animationDiv.classList.toggle('open');
        setTimeout(function () { window.location.href = 'userPage.aspx'; }, 500);
    });
}
catch {}

try {
    logOut.addEventListener('click', () => {
        animationDiv.classList.toggle('open');
        setTimeout(function () { window.location.href = 'login.aspx'; }, 500);
    });
}
catch { }

function clearAllActive() {
    var buttons = [homeButton, featured, topMovies, genres]
    buttons.forEach(clearActive)
}

function clearActive(item, index) {
    item.classList.remove('active')
}

onPageLoad();

function onPageLoad(){
    coverDiv.classList.toggle('fade-in');
    setTimeout(function () { coverDiv.remove(); }, 1000);

    clearAllActive();

    var str = location.href.toLowerCase();
    $("#navbar li").each(function () {
        var idToButton = {
            "index": homeButton,
            "featured": featured,
            "toppicks": topMovies,
            "genres": genres,
            "admin": adminPage,
            "logOut": logOut,
            "logIn": login,
            "register": register,
            "userPage": userPage
        }

        var idToPageName = {
            "home-button": "index",
            "featured-button": "featured",
            "top-movies-button": "toppicks",
            "genres-button": "genres",
            "admin-page-button": "admin",
            "log-out-button": "logOut",
            "register-button": "register",
            "user-page-button": "userPage",
            "log-in-button": "logIn"
        }

        //console.log(str)
        //console.log(idToPageName[this.id])

        if (str.includes(idToPageName[this.id])) {
            this.classList.toggle("active")
        }
    });
}

// Top Picks JavaScript
const title = document.querySelector('#top-picks-title');
const description = document.querySelector('#top-picks-text');
const poster = document.querySelector('#top-picks-poster');
const posterLink = document.querySelector('#poster-link');
const topPicks = document.querySelectorAll('.top-picks');

const moviesDict = {
    "Black Panther": {
        "title": "Black Panther",
        "description": "After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T'Challa's mettle as king -- and as Black Panther -- gets tested when he's drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.",
        "poster": "imgs/black-panther-poster.jpg",
        "link": "https://www.imdb.com/title/tt1825683/"
    },
    "Avengers: Endgame": {
        "title": "Avengers: Endgame",
        "description": "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.",
        "poster": "imgs/endgame-poster.jpg",
        "link": "https://www.imdb.com/title/tt4154796/"
    },
    "Us": {
        "title": "Us",
        "description": "Accompanied by her husband, son and daughter, Adelaide Wilson returns to the beachfront home where she grew up as a child. Haunted by a traumatic experience from the past, Adelaide grows increasingly concerned that something bad is going to happen. Her worst fears soon become a reality when four masked strangers descend upon the house, forcing the Wilsons into a fight for survival. When the masks come off, the family is horrified to learn that each attacker takes the appearance of one of them.",
        "poster": "imgs/us-poster.jpg",
        "link": "https://www.imdb.com/title/tt6857112/"
    },
    "Toy Story 4": {
        "title": "Toy Story 4",
        "description": "Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woody's slight detour leads him to his long-lost friend Bo Peep. As Woody and Bo discuss the old days, they soon start to realize that they're worlds apart when it comes to what they want from life as a toy.",
        "poster": "imgs/toy-story-4-poster.jpg",
        "link": "https://www.imdb.com/title/tt1979376/"
    },
    "Lady Bird": {
        "title": "Lady Bird",
        "description": "Marion McPherson, a nurse, works tirelessly to keep her family afloat after her husband loses his job. She also maintains a turbulent bond with a teenage daughter who is just like her: loving, strong-willed and deeply opinionated.",
        "poster": "imgs/lady-bird-poster.jpg",
        "link": "https://www.imdb.com/title/tt4925292/"
    },
    "Mission: Impossible - Fallout": {
        "title": "Mission: Impossible - Fallout",
        "description": "Ethan Hunt and the IMF team join forces with CIA assassin August Walker to prevent a disaster of epic proportions. Arms dealer John Lark and a group of terrorists known as the Apostles plan to use three plutonium cores for a simultaneous nuclear attack on the Vatican, Jerusalem and Mecca, Saudi Arabia. When the weapons go missing, Ethan and his crew find themselves in a desperate race against time to prevent them from falling into the wrong hands.",
        "poster": "imgs/fallout-poster.jpg",
        "link": "https://www.imdb.com/title/tt4912910/"
    }
}

topPicks.forEach(item => {
    item.addEventListener('click', () => {
        let name = item.textContent.trim();
        title.innerHTML = moviesDict[name]["title"];
        description.innerHTML = moviesDict[name]["description"];
        poster.src = moviesDict[name]["poster"];
        posterLink.href = moviesDict[name]["link"];
    })
})