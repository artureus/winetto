<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    
    <%@include file="head.jsp" %>
    
    <body>
        
        <%@include file="navbar.jsp" %>
        
        <%@include file="header.jsp" %>

        <div class="container">
        
        	<%@include file="wines.jsp" %>
			
            <hr>
            
            <%@include file="footer.jsp" %>			
			
        </div> <!-- /container -->
		
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/vendor/bootstrap-affix.js"></script>

        <script src="js/main.js"></script>

		<script type="text/javascript">
			$(document).ready(function(event) {
				
				if(localStorage &&
				   localStorage.getItem('saved_wine') &&
				   localStorage.getItem('saved_vintage')
				   ) {
					$('#info_last_search').html("<p style='color: #ffffff;'>Your last search was: <span style='color: #dddddd;'>" + 
												 localStorage.getItem('saved_wine') +
												 " (" + localStorage.getItem('saved_vintage') +
												 ")</span></p>").show();
				}
				
				$('#search-btn').click(function() {
					var searchWine = $('#search_wine').val();
					var searchVintage = $('#search_vintage').val();
					
					$('#wine-data').fadeOut();
					$('.message').fadeOut();
					$('#loading').html("<img src='img/loading.gif' />").show();
					
					$('#search_terms').html(searchWine + " (" + searchVintage + ")").show();
					localStorage.setItem('saved_wine', searchWine);
					localStorage.setItem('saved_vintage', searchVintage);					
				});
				
			});
		</script>

        <script>
            //var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            //(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            //g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
            //s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
    </body>
</html>