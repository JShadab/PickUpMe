
<!DOCTYPE html>
<html>
	<head>
		<title>Home</title>
		<link rel="stylesheet" href="/PickMeUp/web/css/bootstrap.min.css">
		<link rel="stylesheet" href="/PickMeUp/web/css/bootstrap-select.css">
		<link href="/PickMeUp/web/css/style.css" rel="stylesheet"
			type="text/css" media="all" />
		<link rel="stylesheet" href="/PickMeUp/web/css/flexslider.css"
			type="text/css" media="screen" />
		<link rel="stylesheet" href="/PickMeUp/web/css/font-awesome.min.css" />
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

function init() {
	var msg = '${param.msg}';

	if (msg) {
		alert(msg);
	}
}
</script>
	</head>
	<body onload="init()">
		<div>
			<jsp:include page="/web/header.jsp" />
		</div>
		<br />
		<!-- content-starts-here -->
		<div class="content">
			<div class="categories">
				<div class="container">
					<div class="col-md-2 focus-grid">
						<a href="/PickMeUp/servlet/FindExpertServlet?key=Driver">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-cab"></i>
									</div>
									<h4 class="clrchg">
										Drivers
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="/PickMeUp/servlet/FindExpertServlet?key=CarMech">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-wrench"></i>
									</div>
									<h4 class="clrchg">
										Car Mechanic
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="/PickMeUp/servlet/FindExpertServlet?key=BikeMech">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-motorcycle"></i>
									</div>
									<h4 class="clrchg">
										Bike Mechanic
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="/PickMeUp/servlet/FindExpertServlet?key=Electrician">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-plug"></i>
									</div>
									<h4 class="clrchg">
										Electrician
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
					<a href="/PickMeUp/servlet/FindExpertServlet?key=Plumber">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-ship"></i>
									</div>
									<h4 class="clrchg">
										Plumbers
									</h4>
								</div>
							</div> </a>
					</div>
					<!--<div class="col-md-2 focus-grid">
						<a href="categories.html#parentVerticalTab6">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-paw"></i>
									</div>
									<h4 class="clrchg">
										Pets
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.html#parentVerticalTab7">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-book"></i>
									</div>
									<h4 class="clrchg">
										Books, Sports & Hobbies
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.html#parentVerticalTab8">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-asterisk"></i>
									</div>
									<h4 class="clrchg">
										Fashion
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.html#parentVerticalTab9">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-gamepad"></i>
									</div>
									<h4 class="clrchg">
										Kids
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.html#parentVerticalTab10">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-shield"></i>
									</div>
									<h4 class="clrchg">
										Services
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.html#parentVerticalTab11">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-at"></i>
									</div>
									<h4 class="clrchg">
										Jobs
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.html#parentVerticalTab12">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image">
										<i class="fa fa-home"></i>
									</div>
									<h4 class="clrchg">
										Real Estate
									</h4>
								</div>
							</div> </a>
					</div>
					<div class="clearfix"></div>
				</div>
			-->
				</div>


			</div>



			<br />
			<br />
			<br />

			<!--footer section start-->
			<jsp:include page="/web/footer.html" />
			<!--footer section end-->
	</body>
</html>