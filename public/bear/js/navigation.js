var currentScreen = "screen9_final_friendly";
var nextScreen;

$(document).ready(function(){
	startWithScreen(currentScreen);
	// $('#'+ currentScreen).css( "color", "red" );
	
});

function startWithScreen (screen) {
	loadScreen(screen , function() {
	  $('#'+ screen).css("display","block");
	});
}

/*function nextScreenWithVerticalTransition (screen) {
	nextScreen = screen;
	loadScreen(nextScreen , function() {
		$('#'+ nextScreen).css("top","100%");
		$('#'+ nextScreen).animate({
			top: "0%"
		}, 1000, function() {
			
		});
		$('#'+ currentScreen).animate({
			top: "-100%"
		}, 1000, function() {
			removeOldScreen();
		});
	});
}*/


function nextScreenWithVerticalTransition (screen) {
	nextScreen = screen;
	loadScreen(nextScreen , function() {
			
			/*
		TweenMax.fromTo($('#'+ nextScreen), .6, {css: {top: "100%"}}, {css: {top: 0}});
		TweenMax.fromTo($('#'+ currentScreen), .6, {css: {top: 0}}, {css: {top: "-100%", opacity:0}});	
		*/
		
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
	$.get( "./screen/" + screen + ".html" , function(data) {
	  $('#wrapper').append(data);
	  if (typeof f == "function") f();
	});
}

function removeOldScreen () {
	$('#'+ currentScreen).remove();
	currentScreen = nextScreen;
	nextScreen = "";
}