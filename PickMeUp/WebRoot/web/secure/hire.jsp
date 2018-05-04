<!--
Author: JustJava
Author URL: http://JustJava.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
	<head>
		<title>PickMeUp! a Business Category Flat Bootstrap Responsive
			Website Template | Post Ad :: JustJava</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap-select.css">
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
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
		<script type="text/javascript" src="js/jquery.min.js">
</script>
		<!-- js -->
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/bootstrap.min.js">
</script>
		<script src="js/bootstrap-select.js">
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
		<script type="text/javascript" src="js/jquery.leanModal.min.js">
</script>
		<link href="css/jquery.uls.css" rel="stylesheet" />
		<link href="css/jquery.uls.grid.css" rel="stylesheet" />
		<link href="css/jquery.uls.lcd.css" rel="stylesheet" />
		<!-- Source -->
		<script src="js/jquery.uls.data.js">
</script>
		<script src="js/jquery.uls.data.utils.js">
</script>
		<script src="js/jquery.uls.lcd.js">
</script>
		<script src="js/jquery.uls.languagefilter.js">
</script>
		<script src="js/jquery.uls.regionfilter.js">
</script>
		<script src="js/jquery.uls.core.js">
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
			href="css/easy-responsive-tabs.css " />
		<script src="js/easyResponsiveTabs.js">
</script>
	</head>
	<body>
		<div>
			<jsp:include page="/web/header.jsp" />
		</div>
		<!-- Submit Ad -->
		<div class="submit-ad main-grid-border">
			<div class="container">
				<h2 class="head">
					Post an Ad
				</h2>
				<div class="post-ad-form">
					<form>
						<label>
							Select Category
							<span>*</span>
						</label>
						<select class="">
							<option>
								Select Category
							</option>
							<option>
								Driver
							</option>
							<option>
								Electrician
							</option>
							<option>
								Car Mechanics
							</option>
							<option>
								Bike Mechanics
							</option>
							<option>
								Carpenter
							</option>
							<option>
								Pet care Taker
							</option>

							<option>
								Tailor
							</option>

							<option>
								Books, Sports and hobbies
							</option>
							<option>
								Kids
							</option>
							<option>
								Services
							</option>
							<option>
								Real, Estate
							</option>
						</select>
						<div class="clearfix"></div>
						<label>
							Ad Title
							<span>*</span>
						</label>
						<input type="text" class="phone" placeholder="">
						<div class="clearfix"></div>
						<label>
							Ad Description
							<span>*</span>
						</label>
						<textarea class="mess"
							placeholder="Write few lines about your product"></textarea>
						<div class="clearfix"></div>
						<div class="upload-ad-photos">
							<label>
								Photos for your ad :
							</label>
							<div class="photos-upload-view">
								<form id="upload" action="index.html" method="POST"
									enctype="multipart/form-data">

									<input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE"
										value="300000" />

									<div>
										<input type="file" id="fileselect" name="fileselect[]"
											multiple="multiple" />
										<div id="filedrag">
											or drop files here
										</div>
									</div>

									<div id="submitbutton">
										<button type="submit">
											Upload Files
										</button>
									</div>

								</form>

								<div id="messages">
									<p>
										Status Messages
									</p>
								</div>
							</div>
							<div class="clearfix"></div>
							<script src="js/filedrag.js">
</script>
						</div>
						<div class="personal-details">
							<form>
								<label>
									Your Name
									<span>*</span>
								</label>
								<input type="text" class="name" placeholder="">
								<div class="clearfix"></div>
								<label>
									Your Mobile No
									<span>*</span>
								</label>
								<input type="text" class="phone" placeholder="">
								<div class="clearfix"></div>
								<label>
									Your Email Address
									<span>*</span>
								</label>
								<input type="text" class="email" placeholder="">
								<div class="clearfix"></div>
								<p class="post-terms">
									By clicking
									<strong>post Button</strong> you accept our
									<a href="terms.html" target="_blank">Terms of Use </a> and
									<a href="privacy.html" target="_blank">Privacy Policy</a>
								</p>
								<input type="submit" value="Post">
								<div class="clearfix"></div>
							</form>
						</div>
				</div>
			</div>
		</div>
		<!-- // Submit Ad -->
		<!--footer section start-->
		<div>
			<jsp:include page="/web/footer.html" />
		</div>
		<!--footer section end-->
	</body>
</html>