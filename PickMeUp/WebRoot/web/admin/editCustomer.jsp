
<!DOCTYPE html>
<html>
	<head>
		<title>Register</title>
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
	</head>
	<body>
		<div>
			<jsp:include page="/web/header.jsp" />
		</div>
		<br />
		<section>
		<div id="page-wrapper" class="sign-in-wrapper">
			<div class="graphs">
				<div class="sign-up">
					<h1>
						Edit Customer Details
					</h1>


					<form action="/PickMeUp/servlet/EditExpertServlet" method="post">

						<input type="hidden" value="${customer.id}" name="id" />

						<div class="sign-u">
							<div class="sign-up1">
								<h4>
									Category* :
								</h4>
							</div>
							<div class="sign-up2">

								<select name="category" class="form-control">

									<option value="Driver">
										Driver
									</option>
									<option value="Electrician">
										Electrician
									</option>
									<option value="Car_Mechanic">
										Car Mechanic
									</option>
									<option value="Bike_Mechanic">
										Bike Mechanic
									</option>
								</select>

							</div>
							<div class="clearfix">
							</div>
						</div>

						<div class="sign-u">
							<div class="sign-up1">
								<h4>
									Name* :
								</h4>
							</div>
							<div class="sign-up2">

								<input type="text" placeholder="Enter your Name" required=" "
									value="${customer..name}" name="name" />

							</div>
							<div class="clearfix">
							</div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>
									Email Address* :
								</h4>
							</div>
							<div class="sign-up2">

								<input type="text" placeholder="Enter your Email" required=" "
									value="${customer..email}" name="email" />

							</div>
							<div class="clearfix">
							</div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>
									Contact Number* :
								</h4>
							</div>
							<div class="sign-up2">

								<input type="text" placeholder="Enter your Contact Number"
									required=" " name="contact" value="${customer..contact}" />

							</div>
							<div class="clearfix">
							</div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>
									Address* :
								</h4>
							</div>
							<div class="sign-up2">

								<input type="text" placeholder="Enter your Address" required=" "
									value="${customer..address}" name="address" />

							</div>
							<div class="clearfix">
							</div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>
									PinCode* :
								</h4>
							</div>
							<div class="sign-up2">

								<input type="text" placeholder="Enter your PinCode" required=" "
									value="${customer..pincode}" name="pincode" />

							</div>
							<div class="clearfix">
							</div>
						</div>

						<div class="sub_home">
							<div class="sub_home_left">
								<input type="submit" value="Add">
							</div>

							<div class="clearfix">
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>

		<!--footer section start-->
		<jsp:include page="/web/footer.html" />
		<!--footer section end-->
		</section>
	</body>
</html>