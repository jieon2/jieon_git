/*
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

/*
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	var	$window = $(window),
		$body = $('body');

	// Breakpoints.
		breakpoints({
			xlarge:  [ '1281px',  '1680px' ],
			large:   [ '981px',   '1280px' ],
			medium:  [ '737px',   '980px'  ],
			small:   [ null,      '736px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Dropdowns.
		$('#nav > ul').dropotron({
			mode: 'fade',
			noOpenerFade: true,
			hoverDelay: 150,
			hideDelay: 350
		});

	// Nav.

		// Title Bar.
			$(
				'<div id="titleBar">' +
					'<a href="#navPanel" class="toggle"></a>' +
				'</div>'
			)
				.appendTo($body);

		// Panel.
			$(
				'<div id="navPanel">' +
					'<nav>' +
						$('#nav').navList() +
					'</nav>' +
				'</div>'
			)
				.appendTo($body)
				.panel({
					delay: 500,
					hideOnClick: true,
					hideOnSwipe: true,
					resetScroll: true,
					resetForms: true,
					side: 'left',
					target: $body,
					visibleClass: 'navPanel-visible'
				});

})(jQuery);


//slider

// Slider configuration
var config = {
  speed: 3000,
  auto: true, // true or false
  arrows: true, // true or false
  nav: true, // true or false
  navStyle: 'default' // square,rectangle, default
};

// Slider core
var slides = $('.slide');
var totalSlides = slides.length;
var currentIndex = 0;

function setSlides() {
  var currentSlide = slides.eq(currentIndex);
  slides.hide();
  currentSlide.fadeIn(1500);
};
setSlides();

// autoplay
if (config.auto) {
  var autoSlide = setInterval(function() {
    currentIndex += 1;
    if (currentIndex > totalSlides - 1) {
      currentIndex = 0;
    }
    setSlides();
    navigation();
  }, config.speed);
};

// navigation arrows
if (config.arrows) {
  $('.arrow').addClass('active');
  $('.prev').click(function() {
    clearInterval(autoSlide);
    currentIndex -= 1;
    if (currentIndex < 0) {
      currentIndex = totalSlides - 1;
    }
    navigation();
    setSlides();
  });
  $('.next').click(function() {
    clearInterval(autoSlide);
    currentIndex += 1;
    if (currentIndex > totalSlides - 1) {
      currentIndex = 0;
    }
    navigation();
    setSlides();
  });
};

// navigation
if (config.nav) {
	for (i = 0; i < slides.length; i+=1) {
  	$('<li/>').attr( {'class': 'nav-item','id': i}).appendTo('.slide-nav');
	};
  $('.nav-item').first().addClass('item-active');
  switch(config.navStyle) { // navigation style
    case 'square':
        $('.nav-item').addClass('square');
        break;
    case 'rectangle':
        $('.nav-item').addClass('rectangle');
        break;
    default:
        $('.nav-item').addClass('dot');
  };
  function navigation() {
    $('.nav-item').removeClass('item-active');
    $('.nav-item').eq(currentIndex).addClass('item-active');
  };
	$('.nav-item').click(function() {
  	clearInterval(autoSlide);
  	var navNumb =  $(this).attr('id');
  	currentIndex = navNumb;
  	navigation();
  	setSlides();
  });
};

//user

window.addEventListener("load", event => {

    var swiperWrapper = document.querySelector('.swiper-wrapper');

    /* The Team */
    var team = [{
            name: "Alice Stone",
            role: "UI Designer",
            desc: "Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts.",
            photo: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300",
            website: "https://rafaelalucas.com",
            email: "mailto:rafaelavlucas@gmail.com",
            linkedin: "https://www.linkedin.com/in/rafaelalucas/",
            dribbble: "https://dribbble.com/rafaelalucas",
        },
        {
            name: "Adam Turner",
            role: "Project Manager",
            desc: "Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts.",
            photo: "https://images.unsplash.com/photo-1522609925277-66fea332c575?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300",
            website: "https://rafaelalucas.com",
            email: "mailto:rafaelavlucas@gmail.com",
            linkedin: "https://www.linkedin.com/in/rafaelalucas/",
            dribbble: "https://dribbble.com/rafaelalucas",
        },
        {
            name: "Nancy Hughes",
            role: "UX Specialist",
            desc: "Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts.",
            photo: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300",
            website: "https://rafaelalucas.com",
            email: "mailto:rafaelavlucas@gmail.com",
            linkedin: "https://www.linkedin.com/in/rafaelalucas/",
            dribbble: "https://dribbble.com/rafaelalucas",
        },
        {
            name: "Jonathan Campbell",
            role: "Front-End Developer",
            desc: "Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts.",
            photo: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300",
            website: "https://rafaelalucas.com",
            email: "mailto:rafaelavlucas@gmail.com",
            linkedin: "https://www.linkedin.com/in/rafaelalucas/",
            dribbble: "https://dribbble.com/rafaelalucas",
        },
        {
            name: "Jack Keller",
            role: "Back-End Developer",
            desc: "Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts.",
            photo: "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300",
            website: "https://rafaelalucas.com",
            email: "mailto:rafaelavlucas@gmail.com",
            linkedin: "https://www.linkedin.com/in/rafaelalucas/",
            dribbble: "https://dribbble.com/rafaelalucas",
        },
        {
            name: "Sara Carroll",
            role: "Head of UI Design",
            desc: "Far far away, behind the world mountains, far from the countries Vokalia and Consonantia, theres live the blind texts.",
            photo: "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9?auto=compress&cs=tinysrgb&dpr=2&h=300&w=300",
            website: "https://rafaelalucas.com",
            email: "mailto:rafaelavlucas@gmail.com",
            linkedin: "https://www.linkedin.com/in/rafaelalucas/",
            dribbble: "https://dribbble.com/rafaelalucas",
        },
    ];

    /* Social Icons */
    var icons = [{
        iWebsite: "https://rafaelalucas.com/dailyui/6/assets/link.svg",
        iEmail: "https://rafaelalucas.com/dailyui/6/assets/email.svg",
        iLinkedin: "https://rafaelalucas.com/dailyui/6/assets/linkedin.svg",
        iDribbble: "https://rafaelalucas.com/dailyui/6/assets/dribbble.svg",
    }];

    var iWebsite = icons[0].iWebsite,
        iEmail = icons[0].iEmail,
        iLinkedin = icons[0].iLinkedin,
        iDribbble = icons[0].iDribbble;


    /* Function to populate the team members */
    function addTeam() {
        for (let i = 0; i < team.length; i++) {

            /* Variables for the team */
            var name = team[i].name,
                role = team[i].role,
                desc = team[i].desc,
                photo = team[i].photo,
                website = team[i].website,
                email = team[i].email,
                linkedin = team[i].linkedin,
                dribbble = team[i].dribbble;

            /* Template for the Team Cards */
            var template = `
                <div class="swiper-slide">
                <div class="card">
                    <span class="bg"></span>
                    <span class="more"></span>
                    <figure class="photo"><img src="${photo}"></figure>
                        <article class="text">
                            <p class="name">${name}</p>
                            <p class="role">${role}</p> 
                            <p class="desc">${desc}</p> 
                        </article>
                        
                        <div class="social">
                        <span class="pointer"></span>
                        <div class="icons">
                            <a class="icon" href="${website}" target="_blank" data-index="0"><img src="${iWebsite}"></a>
                            <a class="icon" href="${email}" target="_blank" data-index="1"><img src="${iEmail}"></a>
                            <a class="icon" href="${linkedin}" target="_blank" data-index="2"><img src="${iLinkedin}"></a>
                            <a class="icon" href="${dribbble}" target="_blank" data-index="3"><img src="${iDribbble}"></a>
                            </div>
                            </div>
                    </div>
                </div>`;

            swiperWrapper.insertAdjacentHTML('beforeend', template);
        }
    };


    addTeam();



    /* Swiper Settings */

    var mySwiper = new Swiper(".swiper-container", {
        // Optional parameters
        direction: "horizontal",
        loop: true,
        centeredSlides: false,
        speed: 800,
        slidesPerView: 3,
        spaceBetween: 40,
        threshold: 5,


        // If we need pagination
        pagination: {
            el: ".swiper-pagination",
            clickable: true
        },

        // Navigation arrows
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev"
        },
        breakpoints: {
            1180: {
                slidesPerView: 2,
                spaceBetween: 40,
                centeredSlides: false,
            },
            799: {
                slidesPerView: 1,
                spaceBetween: 20,
                centeredSlides: true,
                loop: true,
            },
        }
    });

    /* Show More */

    var btnShow = document.querySelectorAll('.more');



    btnShow.forEach(function (el) {
        el.addEventListener('click', showMore);
    });

    function showMore(event) {
        var card = event.target.closest(".swiper-slide");

        if (card.classList.contains('show-more')) {
            card.classList.remove('show-more');
        } else {
            card.classList.add('show-more')
        }

    }


    /* Social Hover */
    var icon = document.querySelectorAll('.icon');

    icon.forEach(function (el) {
        el.addEventListener("mouseenter", followCursor);

    });


    function followCursor(event) {
        var pointer = event.currentTarget.closest(".swiper-slide").querySelector('.pointer'),
            index = event.currentTarget.dataset.index,
            sizeIcon = (60 * index) + 25;

        pointer.style.transform = `translateX(${sizeIcon}px)`;
    }


    /* end */
});



