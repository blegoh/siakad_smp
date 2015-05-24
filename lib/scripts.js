$().ready(function() {
	$("#contacts-form").validate({
		rules: {
			nama: {
				required: true,
				minlength: 4
			},
			email: {
				required: true,
				email: true
			},
			web:{
			  url: true
			},
			comment:{
			  required: true,
			  minlength: 5
			},
		},
		messages: {
			nama: {
				required: "Masukkan nama",
				minlength: "Nama minimal 4 karakter"
			},
			email: {
				required: "Masukkan email",
				email: "Alamat email tidak valid"
			},
			web:{
			  url: "Alamat Web Salah"
			},
			comment:{
			  required: "Anda Belum Berkomentar",
			  minlength: "Komentar terlalu pendek"
			},
		}
	});
  });

$(function() {
	$( document ).tooltip({
		track: true
	});
});

  jQuery(document).ready(function($) {
      $('a[rel*=facebox]').facebox({
        loadingImage : 'lib/loading.gif',
        closeImage   : 'lib/closelabel.png'
      })
    })
$(document).ready(function(){
	//function for contact form dropdown
	function contact() {
		if($("#contactForm").is(":hidden")){
			$("#contactForm").slideDown("slow");
			$("#backgroundPopup").css({"opacity": "0.7"});
			$("#backgroundPopup").fadeIn("slow"); 
		}else{
			$("#contactForm").slideUp("slow");
			$("#backgroundPopup").fadeOut("slow");  
		}
	}
	 
	//run contact form when any contact link is clicked
	$(".contact").click(function(){contact()});
	
	//animation for same page links #
	$('a[href*=#]').each(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
		&& location.hostname == this.hostname
		&& this.hash.replace(/#/,'') ) {
		  var $targetId = $(this.hash), $targetAnchor = $('[name=' + this.hash.slice(1) +']');
		  var $target = $targetId.length ? $targetId : $targetAnchor.length ? $targetAnchor : false;
			if ($(this.hash).length) {
				$(this).click(function(event) {
					var targetOffset = $(this.hash).offset().top;
					var target = this.hash;
					event.preventDefault();			   
					$('html, body').animate({scrollTop: targetOffset}, 500);
					return false;
				});
			}
		}
	});



   //submission scripts
   /*
  $('.contactForm').submit( function(){
		//statements to validate the form	
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		var email = document.getElementById('e-mail');
		if (!filter.test(email.value)) {
			$('.email-missing').show();
		} else {$('.email-missing').hide();}
		if (document.cform.name.value == "") {
			$('.name-missing').show();
		} else {$('.name-missing').hide();}	
		if (document.cform.message.value == "") {
			$('.message-missing').show();
		} else {$('.message-missing').hide();}		
		if ((document.cform.name.value == "") || (!filter.test(email.value)) || (document.cform.message.value == "")){
			return false;
		} 
		
		if ((document.cform.name.value != "") && (filter.test(email.value)) && (document.cform.message.value != "")) {
			//hide the form
			$('.contactForm').hide();
		
			//show the loading bar
			$('.loader').append($('.bar'));
			$('.bar').css({display:'block'});
		
			//send the ajax request
			$.post('mail.php',{name:$('#name').val(),
							  email:$('#e-mail').val(),
							  message:$('#message').val()},
		
			//return the data
			function(data){
			  //hide the graphic
			  $('.bar').css({display:'none'});
			  $('.loader').append(data);
			});
			
			//waits 2000, then closes the form and fades out
			setTimeout('$("#backgroundPopup").fadeOut("slow"); $("#contactForm").slideUp("slow")', 2000);
			
			//stay on the page
			return false;
		} 
  });
	//only need force for IE6  
	$("#backgroundPopup").css({  
		"height": document.documentElement.clientHeight 
	});  
	*/
});
