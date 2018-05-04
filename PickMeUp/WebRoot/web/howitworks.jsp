
<!DOCTYPE html>
<html>
	<head>
		<title>How we Work</title>
		<link rel="stylesheet" href="/PickMeUp/web/css/bootstrap.min.css">
		<link rel="stylesheet" href="/PickMeUp/web/css/bootstrap-select.css">
		<link href="/PickMeUp/web/css/style.css" rel="stylesheet"
			type="text/css" media="all" />
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords"
			content="PickMeUp! Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
		<script type="application/x-javascript">
addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}</script>
		<!-- //for-mobile-apps -->
		<!--fonts-->
		<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed'
			rel='stylesheet' type='text/css'>
		<link
			href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
			rel='stylesheet' type='text/css'>

		<link rel="stylesheet" href="/PickMeUp/web/css/flexslider.css"
			type="text/css" media="screen" />
		<link rel="stylesheet" href="/PickMeUp/web/css/font-awesome.min.css" />
		<!--//fonts-->
		<!-- js -->
		<script type="text/javascript" src="/PickMeUp/web/js/jquery.min.js">
</script>
		<!-- js -->
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="/PickMeUp/web/js/bootstrap.min.js">
</script>
		<script src="/PickMeUp/web/js/bootstrap-select.js">
</script>
		<script>
$(document).ready(function() {
	var mySelect = $('#first-disabled2');

	$('#special').on('click', function() {
		mySelect.find('option:selected').prop('disabled', true);
		mySelect.selectpicker('refresh');
	});

	$('#special2').on('click', function() {
		mySelect.find('option:disabled').prop('disabled', false);
		mySelect.selectpicker('refresh');
	});

	$('#basic2').selectpicker( {
		liveSearch : true,
		maxOptions : 1
	});
});
</script>
		<script type="text/javascript"
			src="/PickMeUp/web/js/jquery.leanModal.min.js">
</script>
		<link href="/PickMeUp/web/css/jquery.uls.css" rel="stylesheet" />
		<link href="/PickMeUp/web/css/jquery.uls.grid.css" rel="stylesheet" />
		<link href="/PickMeUp/web/css/jquery.uls.lcd.css" rel="stylesheet" />
		<!-- Source -->
		<script src="/PickMeUp/web/js/jquery.uls.data.js">
</script>
		<script src="/PickMeUp/web/js/jquery.uls.data.utils.js">
</script>
		<script src="/PickMeUp/web/js/jquery.uls.lcd.js">
</script>
		<script src="/PickMeUp/web/js/jquery.uls.languagefilter.js">
</script>
		<script src="/PickMeUp/web/js/jquery.uls.regionfilter.js">
</script>
		<script src="/PickMeUp/web/js/jquery.uls.core.js">
</script>
		<script>
$(document).ready(function() {
	$('.uls-trigger').uls( {
		onSelect : function(language) {
			var languageName = $.uls.data.getAutonym(language);
			$('.uls-trigger').text(languageName);
		},
		quickList : [ 'en', 'hi', 'he', 'ml', 'ta', 'fr' ]
	//FIXME
			});
});
</script>
		<link rel="stylesheet" type="text/css"
			href="/PickMeUp/web/css/easy-responsive-tabs.css " />
		<script src="/PickMeUp/web/js/easyResponsiveTabs.js">
</script>
	</head>
	<body>
		<div>
			<jsp:include page="/web/header.jsp" />
		</div>


		<!-- How it works -->
		<div class="work-section">
			<div class="container">
				<h2 class="head">
					How It Works
				</h2>
				<div class="work-section-head text-center">
					<p>
						Fast, easy and free to find a buddy, what you are looking for.
					</p>
				</div>
				<div class="work-section-grids text-center">
					<div class="col-md-3 work-section-grid">
						<i class="fa fa-laptop"></i>
						<h4>
							Browse our Website
						</h4>

						<span class="arrow1"><img
								src="/PickMeUp/web/images/arrow1.png" alt="" /> </span>
					</div>
					<div class="col-md-3 work-section-grid">
						<i class="fa fa-eye"></i>
						<h4>
							Find an expert
						</h4>

						<span class="arrow2"><img
								src="/PickMeUp/web/images/arrow2.png" alt="" /> </span>
					</div>
					<div class="col-md-3 work-section-grid">
						<i class="fa fa-phone"></i>
						<h4>
							contact the expert
						</h4>

						<span class="arrow1"><img
								src="/PickMeUp/web/images/arrow1.png" alt="" /> </span>
					</div>
					<div class="col-md-3 work-section-grid">
						<i class="fa fa-money"></i>
						<h4>
							make transactions
						</h4>

					</div>
					<div class="clearfix"></div>
					<a class="work" href="/PickMeUp/web/index.jsp">Get start Now</a>
				</div>
			</div>
		</div>
		<div class="happy-clients">
			<div class="container">
				<div class="happy-clients-head text-center wow fadeInRight"
					data-wow-delay="0.4s">
					<h3>
						Happy Clients
					</h3>
					<p>
						We are explain who is using our business solutions
					</p>
				</div>
				<div class="happy-clients-grids">
					<div class="col-md-6 happy-clients-grid wow bounceIn"
						data-wow-delay="0.4s">
						<div class="client">
							<img src="/PickMeUp/web/images/client_1.jpg" alt="" />
						</div>
						<div class="client-info">
							<p>
								<img src="/PickMeUp/web/images/open-quatation.jpg" class="open"
									alt="" />
								Lorem Ipsum is simply dummy text of the printing and typesetting
								industry. Lorem Ipsum has been the industry standard dummy text
								ever since the 1500s, when an unknown printer took a galley of
								type and scrambled it to make.
								<img src="/PickMeUp/web/images/close-quatation.jpg"
									class="closeq" alt="" />
							</p>
							<h4>
								<a href="#">Darwin Michle, </a>Project manager
								</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6 happy-clients-grid span_66 wow bounceIn"
						data-wow-delay="0.4s">
						<div class="client">
							<img src="/PickMeUp/web/images/client_2.jpg" alt="" />
						</div>
						<div class="client-info">
							<p>
								<img src="/PickMeUp/web/images/open-quatation.jpg" class="open"
									alt="" />
								Lorem Ipsum is simply dummy text of the printing and typesetting
								industry. Lorem Ipsum has been the industry standard dummy text
								ever since the 1500s, when an unknown printer took a galley of
								type and scrambled it to make a type specimen book.
								<img src="/PickMeUp/web/images/close-quatation.jpg"
									class="closeq" alt="" />
							</p>
							<h4>
								<a href="#">Madam Elisabath, </a>Creative Director
								</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6 happy-clients-grid wow bounceIn"
						data-wow-delay="0.4s">
						<div class="client">
							<img src="/PickMeUp/web/images/client_3.jpg" alt="" />
						</div>
						<div class="client-info">
							<p>
								<img src="/PickMeUp/web/images/open-quatation.jpg" class="open"
									alt="" />
								Lorem Ipsum is simply dummy text of the printing and typesetting
								industry. Lorem Ipsum has been the industry standard dummy text
								ever since the 1500s, when an unknown printer took a galley of
								type and scrambled it to make.
								<img src="/PickMeUp/web/images/close-quatation.jpg"
									class="closeq" alt="" />
							</p>
							<h4>
								<a href="#">Clips arter, </a>Lipsum director
								</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6 happy-clients-grid span_66 wow bounceIn"
						data-wow-delay="0.4s">
						<div class="client">
							<img src="/PickMeUp/web/images/client_4.jpg" alt="" />
						</div>
						<div class="client-info">
							<p>
								<img src="/PickMeUp/web/images/open-quatation.jpg" class="open"
									alt="" />
								Lorem Ipsum is simply dummy text of the printing and typesetting
								industry. Lorem Ipsum has been the industry standard dummy text
								ever since the 1500s, when an unknown printer took a galley of
								type and scrambled it to make a type specimen book.
								<img src="/PickMeUp/web/images/close-quatation.jpg"
									class="closeq" alt="" />
							</p>
							<h4>
								<a href="#">zam cristafr, </a>manager
								</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- // How it works -->
		<!--footer section start-->
		<jsp:include page="/web/footer.html" />
		<!--footer section end-->
	</body>
</html>