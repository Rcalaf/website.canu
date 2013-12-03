// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//

//= require jquery.easing.1.3
//= require jquery.circulate
//= require jquery.fullPage

	
	$(document).ready(function(){
			
		$("img.phone").fadeIn(1800);

	   	//$(".codes").hide();
	   	

		$.fn.fullpage({
			slidesColor: ['#fff', '#1ca6c3','#3bc48f', '#ec5f57'],
			anchors: ['CANU','Tribes','Local', 'Me'],
			autoScrolling: false,
			scrollingSpeed: 700
			
		});
		$(".logo_top").click(function(){
			$.fn.fullpage.moveToSlide('CANU');
		});
	   
	    $("#feedback_btn").click(function(){
	        $("#comments_container").animate({right:"0px"},500); 
	        $("#comments_blur").fadeIn(300); 
	        $("#comments_description").fadeIn(900);
	        $("#close_btn").fadeIn(1000);      		
	    });
	    
	    $("#close_btn, #comments_blur, #comments_description").click(function(){
			$("#comments_container").animate({right: "-440px"},200);   
			$("#comments_blur").fadeOut(900);
			$("#comments_description").fadeOut(700);
			$("#close_btn").fadeOut(100);   
			
	    });
	    
	   	 $('#comments').height() - 170;
	   	 
	   	 $(".android").click(function(){
	   	 	$(this).toggleClass("blank");
	        $(".codes").toggleClass("opacity");     		
	    });
	    


	   	 
	});
  

	
     

	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
