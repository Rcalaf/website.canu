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




	
	$(document).ready(function(){

				
		  var isiPhone = navigator.userAgent.toLowerCase().indexOf("iphone");

		  if(isiPhone > -1)

		  {
			  $(".go_button, .get_canu").show(); 
			  $(".activity_container, ul.public_wall").css("margin-top", "50px");
			  
				$("#bb_ppl_list").click(function() {	
					$(".activity_people_wrapper").hide();
					$(".activity_container, .get_canu").show();
				});
				$("#suggest_trigger_mobile").hide();
				
				$(".sommaren_bg").css("margin-top", "48px");				
		  }

		  $( 'p.activity_description:empty').remove();
		 
		  $( 'a.guest_name:empty').each(function () {
			 $(this).siblings().addClass("username_only");
			 $(this).remove(); 
		  });
		  
		  $('.how_many:contains("0")').each(function () { $(this).hide(); });
		  
		
		$('ul.people_list li:first-child').hide();
		
		if ($('ul.people_list li').length <= 1) {
			$('.activity_attendies').remove();
		}
		
		
		$("ul.people_list li").hover(function (){
			$(this).find(".user_details").toggle();
			
		});
		
		$(".user_details").click(function () {
			$(this).hide();
		});
		
		$(".creator_name").click(function() {	
			$(".activity_container, .get_canu").hide();
			$(".activity_people_wrapper").show();
		});

		$("#bb_ppl_list").click(function() {	
			$(".activity_people_wrapper").hide();
			$(".activity_container").show();
		});
		

	});
	

     

	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
