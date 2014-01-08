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
		
		
		//$('html, body').animate({scrollTop: $(document).height()}, 'slow');
		
		$(".activity_people_wrapper").hide();
		
		$(".people_button").click(function() {	
			$(".activity_container").fadeOut(100);
			$(".activity_people_wrapper").fadeIn(100);
		});

		$("#bb_ppl_list").click(function() {	
			$(".activity_people_wrapper").fadeOut(100);
			$(".activity_container").fadeIn(100);
		});
		
		$(".go_button").click(function(){
			$(".add_data").fadeIn(700);
			$(".go_button").fadeOut();
			$(".going_button").fadeIn();
		});
		
		$(".chat_submit").click(function(){
			$(".add_data").fadeIn(700);
		});
		
		$("#submit_save_name").click(function(){
			$(".add_data").fadeOut();
		});
		
		$("#cancel_add_data").click(function(){
			$(".add_data").fadeOut();
		});
		
		
		$(".going_button").click(function(){
			$(this).fadeOut();
			$(".go_button").fadeIn();
		});
		
		
		
		
		$("#tab_local").animate({opacity: 1}, 30);
		$("#content_local").show();
		

		$("#tab_local").click(function(){			
			$("li.tab").css({opacity: 0.2});
			$(this).animate({opacity: 1}, 500);
			$("#selected").animate(
			{ 
				left: "5px",
				marginLeft: "0" }, 600
			);
		});
		
		
		
		$("#tab_tribes").click(function(){
			
			$("li.tab").css({opacity: 0.2});
			$(this).animate({opacity: 1}, 500);
			$("#selected").animate(
			{ 
				left: "50%",
				marginLeft: "-28px" }, 600
			);
		});
		
		
		
		$("#tab_me").click(function(){
			
			$("li.tab").css({opacity: 0.2});
			$(this).animate({opacity: 1}, 500);
			$("#selected").animate({ 
				left: "100%",
				marginLeft: "-62px" }, 600
			);
		});
		
		
	});
	

     

	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
