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
		
	
		
		$(".fullslide, .fullslide ul").hide();
		
		$("#story_1").fadeIn(300);
		$("#story_1 ul").delay(300).fadeIn(300);
		
		$('#choice_2').click(function(){
			$(".fullslide").hide();
			$("#story_2").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});
		});	
		
		$('#choice_3_1').click(function(){
			$(".fullslide").hide();
			$("#story_3_1").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});
		});	
		
		$('#choice_3_2').click(function(){
			$(".fullslide").hide();
			$("#story_3_2").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('#choice_3_3').click(function(){
			$(".fullslide").hide();
			$("#story_3_3").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('.choice_4_1').click(function(){
			$(".fullslide").hide();
			$("#story_4_1").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('.choice_4_2').click(function(){
			$(".fullslide").hide();
			$("#story_4_2").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('.choice_4_3').click(function(){
			$(".fullslide").hide();
			$("#story_4_3").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});		
		
		$('.choice_4_4').click(function(){
			$(".fullslide").hide();
			$("#story_4_4").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('.choice_5').click(function(){
			$(".fullslide").hide();
			$("#story_5").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('#choice_6_1').click(function(){
			$(".fullslide").hide();
			$("#story_6_1").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('#choice_6_2').click(function(){
			$(".fullslide").hide();
			$("#story_6_2").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('#choice_6_3').click(function(){
			$(".fullslide").hide();
			$("#story_6_3").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('#choice_6_4').click(function(){
			$(".fullslide").hide();
			$("#story_6_4").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('.choice_7').click(function(){
			$(".fullslide").hide();
			$("#story_7").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});	
		
		$('.choice_reset').click(function(){
			$(".fullslide").hide();
			$("#story_1").fadeIn(100, function(){
				$(this).children("ul").delay(250).fadeIn(700);	
			});	
		});		

	   	 
	});


	
     

	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
