//= require jquery.easing.1.3
//= require jquery.circulate
//= require jquery.fullPage



	
	$(document).ready(function(){
		
	    $("#feedback_btn").click(function(){    	
	    	$("#comments_container").show();
	        $("#comments_container").animate({right:"0px"},500); 
	        $("#comments_blur").fadeIn(300); 
	        $("#comments_description").fadeIn(900);
	        $("#close_btn").fadeIn(1000); 
	        $("html, body").animate({ scrollTop: 0 }, "fast");

	    });
	    
	    $("#close_btn, #comments_blur, #comments_description").click(function(){
	    	$("#comments_container").hide();
			$("#comments_container").animate({right: "-440px"},200);   
			$("#comments_blur").fadeOut(900);
			$("#comments_description").fadeOut(700);
			$("#close_btn").fadeOut(100);   
			
	    });
	    
	  
	   	 
	   	 $('#comments').height() - 170;

	   	 $(".android").click(function(){
	        $(".codes").toggleClass("codes_active");     		
	    });
	    
	      setTimeout(function(){
		    $('.confirmation').fadeOut("slow");
		  }, 2000);
	
	
		/*var tagline = new Array();
		tagline[0] = "The chat to</br> get together";
		tagline[1] = "Get together";
		
		var tagline_sup = new Array();
		tagline_sup[0] = "That's the whole point.";
		tagline_sup[1] = "";

		
		var myRandom = Math.floor(Math.random()*tagline.length);
		
		var myRandom_sup = Math.floor(Math.random()*tagline.length);
		
		$('#rand_tagline').html(tagline[myRandom]);
		$('#rand_tagline_sup').html(tagline_sup[myRandom_sup]);*/

	});
	



	
     

	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
