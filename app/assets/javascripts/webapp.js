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
		
		//Load iPhone functionality leading to the AppStore
				
		  var isiPhone = navigator.userAgent.toLowerCase().indexOf("iphone");

		  if(isiPhone > -1)

		  {
			  $(".go_button, .get_canu").show(); 
			  $(".activity_container").css("margin-top", "50px");
		  }
		
		
		
		//$('html, body').animate({scrollTop: $(document).height()}, 'slow');
		
		$(".activity_people_wrapper").hide();
		
		
		
		$(".creator_name").click(function() {	
			$(".activity_container").hide();
			$(".activity_people_wrapper").show();
		});

		$("#bb_ppl_list").click(function() {	
			$(".activity_people_wrapper").hide();
			$(".activity_container").show();
		});
		
		$(".empty_tribes").css("height", $(document).height() + "px");
		
		$(window).resize(function() {
			$(".empty_tribes").css("height", $(document).height() + "px");
		});
		
		/*
		$(".chat_submit").click(function(){
			$(".add_data").fadeIn(700);
		});
		
		$("#submit_save_name").click(function(){
			$(".add_data").fadeOut();
		});
		
		$("#cancel_add_data").click(function(){
			$(".add_data").fadeOut();
		});
		
		*/
	


		$("#tab_local").click(function(){
			$("#wr_local").css("left","0").css("opacity","1");
			$("#wr_tribes").css("left","100%").css("opacity","0");
			$("#wr_me").css("left","200%").css("opacity","0");
		});

		$("#tab_tribes").click(function(){
			$("#wr_local").css("left","-100%").css("opacity","0");
			$("#wr_tribes").css("left","0").css("opacity","1");
			$("#wr_me").css("left","100%").css("opacity","0");
		});
		
		$("#tab_me").click(function(){
			$("#wr_local").css("left","-200%").css("opacity","0");
			$("#wr_tribes").css("left","-100%").css("opacity","0");
			$("#wr_me").css("left","0").css("opacity","1");
		});				

		
		

		$(".going_button").click(function(){
			$(this).fadeOut();
			$(".go_button").fadeIn();
		});
				
		$("#tab_local").addClass("tab_selected");
		
		/*
			
		$("#selected").addClass("pos_local");


		$("#tab_local").click(function(){
			$("#selected").removeClass("pos_tribes").removeClass("pos_me");
			$("#selected").addClass("pos_local");
		});

		$("#tab_tribes").click(function(){
			$("#selected").removeClass("pos_local").removeClass("pos_me");
			$("#selected").addClass("pos_tribes");
		});
		
		
		*/
		
	   	$("#tab_me").click(function(){
	   		if ($(this).hasClass("tab_selected")) {
		   		$(".my_profile").toggleClass("profilepossition");
		   		$(".wrapper").toggleClass("faded");	
		   } else {

		   } 
	   	});		
	   	
		$("#tab_tribes, #tab_local, #tab_me").click(function(){
			$("li.tab").removeClass("tab_selected");
			$(this).addClass("tab_selected");
		});	   	
		
		
	});
	

     

	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
