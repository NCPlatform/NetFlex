/**
 * using url to highlight nav-item where we in
 */
 
 $(document).ready(function(){
 	var url = document.location.href;
 	if(url.match("user")){
 		$('#aUser').addClass("current");
 		$('#aMovie').addClass("sidebar-link");
 		$('#aDashboard').addClass("sidebar-link");
 		$('#navTitle').text("USER");
 	}else if(url.match("movie")){
 		$('#aUser').addClass("sidebar-link");
 		$('#aMovie').addClass("current");
 		$('#aDashboard').addClass("sidebar-link");
 		$('#navTitle').text("MOVIE");
 	}else{
 		$('#aUser').addClass("sidebar-link");
 		$('#aMovie').addClass("sidebar-link");
 		$('#aDashboard').addClass("current");
 		$('#navTitle').text("DASHBOARD");
 	}
 });