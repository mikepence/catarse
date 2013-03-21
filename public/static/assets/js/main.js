$(function() {

	
/* ----- Main Menu ----- */
	
	if($().mobileMenu) {
		$('#main-navigation').mobileMenu();
		$('#slider ul.nav').mobileMenu();
	}



/* ----- Rating ----- */

	if($().raty) {
		
		$(".vote .stars").raty({
			readOnly: false,
			path: "assets/img/",
			score: 3
		});
		
		$(".banners .stars, .item .rating .stars, .item-mini .rating .stars, #rate .stars").raty({
			readOnly: false,
			path: "assets/img/",
			score: 3,
			size: 17,
			starOn  : 'star-1-on.png',
			starOff : 'star-1-off.png'
		});
	
		/*$("#rate .stars").each(function(){
			var rating = $(this).attr("data-score");
			$(this).raty({
		  		readOnly: true,
		  		path: "assets/img/",
		  		score: rating,
		  		number: rating,
				size: 17,
				starOn  : 'star-1-on.png',
				starOff : 'star-1-off.png'
		  	});
	  	});*/
		
		/*$("#user-profile .stars").each(function(){
			var rating = $(this).attr("data-score");
			$(this).raty({
		  		readOnly: true,
		  		path: "assets/img/",
		  		score: rating,
		  		number: rating,
				size: 27,
		  		starOn  : 'star-3-on.png'
		  	});
	  	});*/
	
		$("#sponsor-profile .stars, #user-profile .stars").each(function(){
			var rating = $(this).attr("data-score");
			$(this).raty({
		  		readOnly: false,
		  		path: "assets/img/",
		  		score: rating,
				size: 20,
		  		starOn  : 'star-4-on.png',
		  		starOff : 'star-4-off.png'
		  	});
	  	});
	}


/* ----- Forms ----- */	

	if (!Modernizr.input.placeholder){
		$("input, textarea").each(function(){
			if($(this).val()=="" && $(this).attr("placeholder")!=""){
				$(this).val($(this).attr("placeholder"));
				$(this).focus(function(){
					if($(this).val()==$(this).attr("placeholder")) $(this).val("");
				});
				$(this).blur(function(){
					if($(this).val()=="") $(this).val($(this).attr("placeholder"));
				});
			}
		});
	}
	
	if(typeof nicEditor!='undefined') {
		new nicEditor().panelInstance('rich-text');
	}

	if($().dynamicForm) {
		$("#duplicate").dynamicForm("#add", "#remove", { limit:100 });
		$("#user-item").dynamicForm("#add-user", "#remove-user", { limit:100 });
	}

	if($().customInput) {
		$('input').customInput();
	}
	
	if($().customFileInput) {
		$('input[type="file"]').customFileInput();
	}
	
	if($().selectmenu) {
		$('#page select').selectmenu();
	}
	
	if($().datepicker) {
		$(".datepicker").datepicker();
	}

	if($().popover) {
		$('.popinfo').popover({
			html: true,
			placement: "right",
			trigger: "focus"
		});
	}

	$('.pull-down > a').click(function(){
		$('.pull-down').toggleClass("open");
		$('.pull-down ul').toggle();
	});

	$("[data-edit=edit]").each(function(){
		$(this).css({
			"position": "relative"
		});
		$(this).append("<div class='edit-control'><a href='#'><img src='assets/img/pencil.png'></a></div>");
	});

	$("[data-edit=delete]").each(function(){
		$(this).css({
			"position": "relative"
		});
		$(this).append("<div class='edit-control'><a href='#'><img src='assets/img/delete.png'></a></div>");
	});

	$("[data-edit=edit-delete]").each(function(){
		$(this).css({
			"position": "relative"
		});
		$(this).append("<div class='edit-control edit-actions-2'><a href='#'><img src='assets/img/pencil.png'></a><a href='#'><img src='assets/img/delete.png'></a></div>");
	});
	


/* ----- Prevent Link ----- */	

	$("#skills dt a, #recommendations a").click(function(event){
		event.preventDefault();
	});


});
