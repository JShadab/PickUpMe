
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
		<br />
		<br />

		<!-- map -->
		<div class="container">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3558.533255121136!2d81.05624606504445!3d26.886566433138917!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399be209f66beb21%3A0x1b86de5491f63997!2sBbd!5e0!3m2!1sen!2sin!4v1524856875856"
				width="100%" height="450" frameborder="1" style="border: 1"
				allowfullscreen></iframe>
		</div>
		<!-- // map -->
		<!--footer section start-->
		<jsp:include page="/web/footer.html" />
		<!--footer section end-->
	</body>
</html>