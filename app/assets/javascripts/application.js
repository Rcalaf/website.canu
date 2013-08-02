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

//= require jquery.min
//= require jquery.easing.1.3
//= require jquery.circulate
//= require jquery_ujs

	
	$(document).ready(function(){
			$('.member_story').hide();
			$('#soon').hide();	
			$('#confirmation').hide();
		
 		     	
		$('#confirmation').fadeIn(1900).delay(3000).fadeOut(900);

		
		$("#tribes").hover(function(){ 
			$('#soon').fadeIn(500);
		});
		$("#soon").mouseleave(function(){ 
			$('#soon').fadeOut(500);
		});
	    
   
		$("#did").hover(function(){ $('#did_story').fadeToggle(10); });  
		$("#rog").hover(function(){ $('#rog_story').fadeToggle(10); });  
		$("#vit").hover(function(){ $('#vit_story').fadeToggle(10); });  
		$("#seb").hover(function(){ $('#seb_story').fadeToggle(10); });       
     
		
		
		
		$("#nt_phone").hide();
		
		$(window).bind("scroll", function() {
     		if ($(this).scrollTop() > 2600) {
	     		$("#nt_phone").delay(100).fadeIn(5900);
	     		$("#nt_back").animate({top: "0", opacity: "1"}, 2400);
	     		$("#nt_content").animate({top: "0", opacity: "1"}, 2700);
	     		$("#nt_text").animate({top: "0", opacity: "1"}, 3700);
	     		$("#nt_photo").animate({top: "0", opacity: "1"}, 3100);
	     		$("#nt_photo_bg").animate({top: "0", opacity: "1"}, 1200);
	     		$("#nt_profile").animate({top: "0", opacity: "1"}, 3900);
	     		$("#nt_time").animate({top: "0", opacity: "1"}, 3800);
	     		$("#nt_go").animate({top: "0", opacity: "1"}, 2900);
	     		$("#nt_ppl").animate({top: "0", opacity: "1"}, 2700);
	     		$("#nt_bottom").animate({top: "0", opacity: "1"}, 2300);
	     		
		     }
		}); 
  
     });
	
     

	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
