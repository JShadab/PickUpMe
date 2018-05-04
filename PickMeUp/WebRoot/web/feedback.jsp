
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

		<!-- Feedback -->
		<div class="feedback main-grid-border">
			<div class="container">
				<h2 class="head">
					Feedback
				</h2>
				<div class="feed-back">
					<h3>
						Tell us what you think of us
					</h3>
					<p>
						It is a long established fact that a reader will be distracted by
						the readable content of a page when looking at its layout. The
						point of using Lorem Ipsum Lorem Ipsum is simply dummy text of the
						printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s
					</p>
					<div class="feed-back-form">
						<form>
							<span>User Details</span>
							<input type="text" value="First Name" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'First Name';}">
							<input type="text" value="Last Name" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Last Name';}">
							<input type="text" value="Email" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Email';}">
							<input type="text" value="Phone No" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Phone No';}">
							<span>Is there anything you would like to tell us?</span>
							<textarea type="text" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Message...';}"
								required="">Message...</textarea>
							<input type="submit" value="submit">
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- // Feedback -->
		<!--footer section start-->
		<jsp:include page="/web/footer.html" />
		<!--footer section end-->
	</body>
</html>