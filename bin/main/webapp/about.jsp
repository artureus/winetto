<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    
    <%@include file="head.jsp" %>
    
    <body data-spy="scroll" data-target=".bs-docs-sidebar">
        
        <%@include file="navbar.jsp" %>
        
        <%@include file="header.jsp" %>

        <div class="container">
        	<div class="row">
	        	<div class="span3 bs-docs-sidebar">
					<ul class="nav nav-list bs-docs-sidenav">
						<li><a href="#about"><i class="icon-chevron-right"></i> About</a></li>
						<li><a href="#data"><i class="icon-chevron-right"></i> Data</a></li>
						<li><a href="#technology"><i class="icon-chevron-right"></i> Technology</a></li>
						<li><a href="#business_model"><i class="icon-chevron-right"></i> Business Model</a></li>
						<li><a href="#evolution"><i class="icon-chevron-right"></i> Evolution</a></li>
			        </ul>
				</div>
			    <div class="span9">	        
		        	<section id="about">
			          <div class="page-header">
			            <h1 style="color: #dddddd;">About Winetto</h1>
			          </div>			
			          <h3>Original idea</h3>
			          <p>Winetto was born to help wine lovers like you to find where to buy the brands you love and how much do they cost.</p>
			          <p>On the technology way, Winetto is a catalog of some things that I can design and develop for you. It's a representation of my love for technology and user experience around the wine. It's a playground, a sandbox, where I can test new things to learn, and new sensations to feel for you.</p>
			          <p>Winetto is still an alpha version. Nowadays, Winetto is an app test, maybe tomorrow is a must have app... who knows!? :)</p>
			          <h3>Agility</h3>
			          <p>During last year I've been reading a lot about a agile methodologies like <a href="http://theleanstartup.com/" target="_blank">LeanStartup</a> and <a href="http://en.wikipedia.org/wiki/Scrum_(development)" target="_blank">Scrum</a>. I love them. Why don't we choose them earlier?
			          <p>What I want for Winetto and my next projects is to create and launch to the market, as fast as possible, sustainables projects that I love to manage. The main goal: ask people if they love the project SOON. From the idea to the Lean Startup as soon as possible.</p>
			          <p>Then, if the idea works, start experimenting to find and consolidate a solid business model.
			        </section>			        
			        <section id="data">
			          <div class="page-header">
			            <h1 style="color: #dddddd;">Data</h1>
			           </div>
			          <p>At the moment, Winetto's data comes from <a href="http://www.wine-searcher.com" target="_blank">Wine Searcher</a>, so they are under the Terms of Use of <a href="http://www.wine-searcher.com" target="_blank">Wine Searcher</a>.</p>
			          <p></p>			
			        </section>
			        <section id="technology">
			          <div class="page-header">
			            <h1 style="color: #dddddd;">Technology</h1>
			          </div>
			          <h3>ide</h3>
			          <p>My first choice for an IDE (Integrated Development Environment) when I'm working with JAVA apps is <a href="http://www.eclipse.org/" target="_blank">Eclipse</a>. In this case, I choose Eclipse Juno, the latest Eclipse flavor.</p>
			          <h3>server</h3>
			          <p>For the first time, I use <a href="http//www.heroku.com/" target="_blank">heroku</a> as a PaaS (Platform as a Service) as a cloud application platform for Java. Heroku offers an agile development for Ruby, Node.js, Java, Python and others, to manage and scale apps on the cloud.</p>
			          <p>Mi experience... It's awesome! :). I will use it again and again, although I must test <a href="https://cloud.google.com/products/" target="_blank">Google App Engine</a> too.</p>
			          <p>In this case, I use <a href="http://jetty.codehaus.org/jetty/" target="_blank">Jetty</a> as HTTP server, client and servlet container, instate of <a href="http://tomcat.apache.org/" target="_blank">Tomcat</a>. And <a href="http://maven.apache.org/" target="_blank">Maven</a> instate of <a href="http://ant.apache.org/" target="_blank">Ant</a>.</p>	
			          <h3>html5 + css3 + jquery + twitter bootstrap + initializr</h3>
			          <p>For the Front-End, I choose the latest versions of <a href="http://www.w3schools.com/html5/" target="_blank">HTML5</a>, <a href="http://www.w3schools.com/css3/" target="_blank">CSS3</a>, <a href="http://jquery.com/" target="_blank">JQuery 1.9.1</a> and <a href="http://twitter.github.com/bootstrap/" target="_blank">Twitter Bootstrap 2.3.0</a> from a custom project template made with <a href="http://www.initializr.com/" target="_blank">Initializr</a>.</p>
			          <p>HTML5 provides new HTML useful tags. This feature makes easy to identify more elements and work with them. Also, now, HTML code is more clear.</p>
			          <p>On Winetto, you will find another interesting HTML5 feature: the usage of local storage. HTML5 local storage is an evolution of cookies that makes posible store String data on user's browser. On Winetto, after you make the first search, you will see a message below the inputs with the information you enter before. This information is saved on HTML5 local storage.</p>
			          <p>You will see CSS3 features like gradients backgrounds, shadows, round corner elements.</p>
			          <p>For fast Front-End developments, I love Twitter Bootstrap! :) It provides an awesome and modern HTML Framework to have tons of HTML elements available to plug&play on your app, based on HTML5 and CSS3.</p>
			          <p>Also, Bootstrap is designed with CSS media queries to make responsive layouts: adaptative pages according to user's device.</p>
			          <p>And... the icing on the cake is... Initializr! A tool to create a skeleton for your HTML5 app in seconds. Based on Bootstrap, HTML5 Boiler Plate and other latest technologies. Also, this tool install Modernizr.js to your app, providing a execution control of the HTML/CSS/JS elements available on the client browser. I used Initializr to create Winetto's skeleton.</p>
			          <h3>java + servlets + jsp + jstl</h3>
			          <p>Within dozens of programming languages, I choose Java for Winetto because it's robust, fast on runtime, scalable and I have many years of experience.</p>
			          <p>At the moment, I choose Java JDK 1.6 because, during the first steps with heroku, JDK 1.7 was causing some errors as you can see in this <a href="http://stackoverflow.com/questions/15587073/failed-to-collect-maven-dependencies-in-java-helloworld-when-deploying-to-heroku" target="_blank">Stackoverflow entry</a>.</p>
			          <p>Winetto is so simple now, that, almost, could be done in plain HTML. But API needs Access-Control-Allow-Origin policy allowed configured on server. To avoid that without changing server configuration, we call the API from our own servlet instead of a client HTML.</p>
			          <p>This way, we could develop a Model-View-Cotroller Java app with Servlets and JSP+JSTL. Technically, it is only a View-Controller app, because nowadays Winetto doesn't use a Model: there is no database... yet.</p>
			          <p><a href="http://jstl.java.net/" target="_blank">JSTL</a> provides a very useful tags to consume Servlet data into a JSP. It's easy with <a href="http://stackoverflow.com/tags/el/info" target="_blank">EL laguage</a> and fast-reading.</p>
			          <p>On the other hand, we use a typical HTTPRequest call (instead of <a href="http://en.wikipedia.org/wiki/AJAX" target="_blank">AJAX</a>) with method "get" to keep the params on the URL and let users share the result easily. I love the magic of AJAX, surely, I will use it in the future, on login process, and other user interactivity as "like it!" button.</p>
			          <h3>json + gson</h3>
			          <p>APIs services usually provides results in two formats: <a href="http://en.wikipedia.org/wiki/XML" target="_blank">XML</a> and <a href="http://json.org/" target="_blank">Json</a>. In this case, Wine Searcher enable Json answers. I choose having results in Json format because it's a lightweight data interchange technology that could improve user's experience at Winetto.</p>
			          <p>Even more, from Java apps it's easy and fast to have manage Json objects making use of some library like <a href="https://code.google.com/p/json-simple/" target="_blank">JSON Simple</a> or GSON (from Google team). For Winetto, I choose GSON because it has better documentation available and I like, at least, give it a try to all Google creations.</p>
			          <p>GSON is a powerful library that converts Java objects into Json objects and Json String to a Java object with to simple methods "toJson" and "fromJson".</p>
			          <h3>sources</h3>
			          <p>You can <a href="https://github.com/artureus/winetto" target="_blank">follow the proyect on GitHub</a>.</p>
			          <h3>resources</h3>
			          <p>I usually count on the internet community to complete my knowledge and help me resolving errors and bugs in society. My first information source choice is <a href="http://stackoverflow.com/" target="_blank">Stackoverflow</a>.</p>
		        	</section>
		        	<section id="business-model">
			          <div class="page-header">
			            <h1 style="color: #dddddd;">Business Model</h1>
			          </div>
			          <p>On this project, it seems, is suitable to implement a business model based on ads and affiliation: Google AdSense and affiliate links. But I must think about it...</p>
		          	</section>
		        	<section id="evolution">
			          <div class="page-header">
			            <h1 style="color: #dddddd;">Evolution</h1>
			          </div>
			          <p>Winetto pretends to be a useful Mashup for wine lovers: An hybrid app that mix external data from one or serveral APIs and internal data from users.</p>
			          <p>The next steps could be adding more merchant information and wine data to become more useful for users. Tell me what would you want to have on Winetto. Tell me how do you want to live your Winetto experience. Write me to my gmail: arturo.arg</p>
		          	</section>
				</div>
			</div>
			
            <hr>
            
            <%@include file="footer.jsp" %>			
			
        </div> <!-- /container -->
		
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/vendor/bootstrap-affix.js"></script>

        <script src="js/main.js"></script>
        
        <script>
	        $(document).ready (function (){
	        	setTimeout(function () {
        	      $('.bs-docs-sidenav').affix({
        	        offset: {
        	          top: function () { return $window.width() <= 980 ? 290 : 210 }
        	        , bottom: 270
        	        }
        	      })
        	    }, 100)
	        )};
	     </script>

    </body>
</html>