
//Page Preloader
$(window).load(function() { 
	//$("#loader").delay(500).fadeOut(); 
	//$(".mask").delay(1000).fadeOut("slow");
});




//Parallax	
$(window).bind('load', function () {
	parallaxInit();						  
});

	function parallaxInit() {
		$('#project-counters').parallax("30%", 0.1);
		
		/*add as necessary*/
	}	