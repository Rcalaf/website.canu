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
	   $('#tabs div').hide();
			$('#tabs div:first').show();
			$('#tabs ul li:first').addClass('active');
			$('#tabs ul li a').click(function(){
			$('#tabs ul li').removeClass('active');
			$(this).parent().addClass('active');
			var currentTab = $(this).attr('href');
			$('#tabs div').hide();
			$(currentTab).show();
			return false;
		});
	});
	
$(document).ready(function(){
		$('#confirmation').hide();
		$('#form_join').hide();
		$('#form_code').hide();
		$('#underworld').hide();
		$('#member_story').hide();
		$('#why_d').hide();
		$("#iceberg_main").hide(300);
		
});


	$(window).load(function(){
 	
		$("#goto_join").click(function(){
 			$('#form_join').fadeIn(300);
 			$('#header_main').fadeOut(300); 	
	    });
	    
	    $("#submit_join").click(function(){
 			$('#form_join').fadeOut(300);
	    	$('#header_main').fadeIn(300);
	    	$('#confirmation').fadeIn(100).delay(1000).fadeOut(400);
	    });
	    
		$("#goto_code").click(function(){
 			$('#form_code').fadeIn(300);
 			$('#header_main').fadeOut(300);
 			$('#goto_code').fadeOut(300);
	    });
	    
	    $("#submit_code").click(function(){
 			$('#form_code').fadeOut(300);
	    	$('#header_main').fadeIn(300);
	    	$('#goto_code').show();
	    	$('#confirmation').fadeIn(100).delay(1000).fadeOut(400);  
	    });
 	
	    $("#dive_in_action").hover(function(){
	    	$("#why_d").fadeIn(400);
	    	}, function(){
	    	$('#why_d').hide();
	    });
	   
	    $("#dive_in_action").toggle(function(){
		      $('#underwater').animate({top: "0"}, {
			      duration: 300,
			      easing: 'easeOutBack'
			      });
			      $('html, body').animate({scrollTop: '0px'}, 400);   
			  },function(){
		      $('#underwater').animate({top: "400px"}, {
			      duration: 700
			   });
		});
	
		$("#dive_in_action").click(function(){
		      $('#dive_in_action p').toggle();
		      $('#why_d p').toggle();
		});
		

		

	    $("#dive_in_action").toggle(function(){
		   
		   	  $('#underworld').show();
		   	  $('#welcome').fadeOut(200);
		   
		      $('#underworld').animate({top: "140px"}, {
			      duration: 1000,
			      easing: 'easeOutBack'
			      });
			  },function(){
			
			  $('#underworld').hide();
			  $('#welcome').fadeIn(200);
		    
		      $('#underworld').animate({top: "1000px"}, {
			      duration: 1000,
			      easing: 'easeOutBack'
			   });
		});

		   $("#underwater").animate({top: "400px"}, {
			      duration: 1000,
			      easing: 'easeOutBack'
			});
		
	
	   	   $("#iceberg_main").fadeIn(300);
 
		   $("#iceberg_main").animate({top: "-225px"}, {
		      duration: 1000,
		      easing: 'easeOutBack'
		   });   

		   $("#iceberg_main img").circulate({
             loop: true,
             width: 0,
             height: 7,
             speed: 1400,
             easing: 'easeOutBack'
             
              
             }); 
            
          $("#did").hover(function(){ $('#did_story').fadeToggle(3); });  
          $("#rog").hover(function(){ $('#rog_story').fadeToggle(3); });  
          $("#vit").hover(function(){ $('#vit_story').fadeToggle(3); });  
          $("#seb").hover(function(){ $('#seb_story').fadeToggle(3); });       
     

     });
