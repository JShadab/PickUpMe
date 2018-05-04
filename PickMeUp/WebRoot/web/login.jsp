
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
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
		<section>
		<div id="page-wrapper" class="sign-in-wrapper">
			<div class="graphs">
				<div class="sign-in-form">
					<div class="sign-in-form-top">
						<h1>
							Log in
						</h1>
					</div>
					<div class="signin">

						<form action="/PickMeUp/servlet/LoginServlet" method="post">

							<div class="log-input">
								<div class="log-input-left">

									<select name="type" class="form-control">
										<option value="customer">
											Customer
										</option>
										<option value="admin">
											Admin
										</option>
									</select>

								</div>
								<div class="clearfix">
								</div>
									<div class="clearfix">
								</div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
									<input type="text" class="user" placeholder="Your Email"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Your Email';}"
										name="email" />
								</div>

								<div class="clearfix">
								</div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
									<input type="password" class="lock" placeholder="password"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Email address:';}"
										name="password" />
								</div>

								<div class="clearfix">
								</div>
							</div>
							<input type="submit" value="Log in">
						</form>
					</div>
					<div class="new_people">
						<h2>
							For New People
						</h2>
						<p>
							Having hands on experience in creating innovative designs,I do
							offer design solutions which harness.
						</p>
						<a href="/PickMeUp/web/register.jsp">Register Now!</a>
					</div>
				</div>
			</div>
		</div>
		<!--footer section start-->
		<jsp:include page="/web/footer.html" />
		<!--footer section end-->
		</section>
	</body>
</html>