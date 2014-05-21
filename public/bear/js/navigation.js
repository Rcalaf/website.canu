var currentScreen = "screen1";
var nextScreen;
var allLoadingFiles = [];

$(window).load(function() { 
	
	$('#preloader').delay(50).fadeOut('slow');
	console.log("Fadeout first");
	startWithScreen(currentScreen);

})

function startWithScreen (screen) {
	loadScreen(screen , function() {
	  $('#'+ screen).css("display","block");
	});
}

function nextScreenWithVerticalTransition (screen) {
	nextScreen = screen;
	loadScreen(nextScreen , function() {
		
		if( $(window).width() < 640 ) {
			removeOldScreen();
		}	
    	else {
			TweenMax.fromTo($('#'+ nextScreen), .7, {css: {opacity: 0}}, {css: {opacity: 1}});
			TweenMax.fromTo($('#'+ currentScreen), .2, {css: {opacity: 1}}, {css: {opacity:0}});			
			setTimeout(function(){ removeOldScreen(); },300);
		}
	});
}


function loadScreen (screen,f) {
	$('#preloader').show();
	$('body').delay(350).css({'overflow':'visible'});
	
	var LoaderIsUsed = false;

	var myLoader = html5Preloader();

	$.get( "./screen/" + screen + ".html" , function(data) {

	  

	  // console.log($(data));

	  allObject = $(data).find( $( "object" ) );

	  for (var i=0; i < allObject.length; i++){
	  	if (!containsObject($( allObject[i] ).attr('data'),allLoadingFiles)) {
	  		myLoader.addFiles($( allObject[i] ).attr('data'));
	  		allLoadingFiles.push($( allObject[i] ).attr('data'));
	  		LoaderIsUsed = true;
	  	};
	  }

	  allImg = $('#'+screen).find( $( "img" ) );

	  for (var i=0; i < allImg.length; i++){
	  	if (!containsObject($( allImg[i] ).attr('src'),allLoadingFiles)) {
	  		myLoader.addFiles($( allImg[i] ).attr('src'));
	  		allLoadingFiles.push($( allImg[i] ).attr('src'));
	  		LoaderIsUsed = true;
	  	};
	  }

	  if (LoaderIsUsed) {
	  	myLoader.on('finish', function(){ 
	  		$('#wrapper').append(data);
	  		$('#preloader').delay(50).fadeOut('slow');
		  	if (typeof f == "function") f();
		  });
	  } else {
	  	$('#wrapper').append(data);
	  	$('#preloader').delay(50).fadeOut('slow');
	  	if (typeof f == "function") f();
	  };

	  

	  myLoader.on('error', function(e){
	  	console.log("error"); 
	  	console.error(e); 
	  });

	});
}

function removeOldScreen () {
	$('#'+ currentScreen).remove();
	currentScreen = nextScreen;
	nextScreen = "";
	// $('#preloader').show();
	// $('#preloader').delay(350).fadeOut('slow');
	$('body').css({'overflow':'hidden'});
}

function containsObject(obj, list) {
    var i;
    for (i = 0; i < list.length; i++) {
        if (list[i] === obj) {
            return true;
        }
    }

    return false;
}





