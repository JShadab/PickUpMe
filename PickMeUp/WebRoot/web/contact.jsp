
<!DOCTYPE html>
<html>
	<head>
		<title>Contact</title>
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
		<br />
		<!-- Terms of use -->
		<div class="contact main-grid-border">
			<div class="container">
				<h2 class="head text-center">
					Contact Us
				</h2>
				<section id="hire">
				<form id="filldetails" action="PickMeUp/" method="post">
					<div class="field name-box">
						<input type="text" id="name" placeholder="Who Are You?" />
						<label for="name">
							Name
						</label>
						<span class="ss-icon">check</span>
					</div>

					<div class="field email-box">
						<input type="text" id="email" placeholder="example@email.com" />
						<label for="email">
							Email
						</label>
						<span class="ss-icon">check</span>
					</div>

					<div class="field ad-ID">
						<input type="text" id="email" placeholder="Ad ID" />
						<label for="email">
							Ad ID
						</label>
						<span class="ss-icon">check</span>
					</div>

					<div class="field phonenum-box">
						<input type="text" id="email" placeholder="Phone Number" />
						<label for="email">
							Phone
						</label>
						<span class="ss-icon">check</span>
					</div>

					<div class="field msg-box">
						<textarea id="msg" rows="4"
							placeholder="Your message goes here..." /></textarea>
						<label for="msg">
							Your Msg
						</label>
						<span class="ss-icon">check</span>
					</div>


				</form>
				<div class="upload">
					<h3 class="tlt">
						Add Attachment:
					</h3>
					<form id="upload" method="post" action="upload.php"
						enctype="multipart/form-data">
						<div id="drop">
							<a>Choose file</a>
							<input type="file" name="upl" multiple />
						</div>

						<ul class="show">
							<!-- The file uploads will be shown here -->
						</ul>
					</form>
					<div class="clear"></div>
					<form class="submit">
						<input class="button" type="submit" value="Send" />
					</form>
					<!-- JavaScript Includes -->
					<script src="js/jquery.knob.js">
</script>

					<!-- jQuery File Upload Dependencies -->
					<script src="js/jquery.ui.widget.js">
</script>
					<script src="js/jquery.fileupload.js">
</script>

					<!-- Our main JS file -->
					<script src="js/script.js">
</script>
				</div>
				</section>
				<script>
$('textarea').blur(function() {
	$('#hire textarea').each(function() {
		$this = $(this);
		if (this.value != '') {
			$this.addClass('focused');
			$('textarea + label + span').css( {
				'opacity' : 1
			});
		} else {
			$this.removeClass('focused');
			$('textarea + label + span').css( {
				'opacity' : 0
			});
		}
	});
});
$('#hire .field:first-child input').blur(function() {
	$('#hire .field:first-child input').each(function() {
		$this = $(this);
		if (this.value != '') {
			$this.addClass('focused');
			$('.field:first-child input + label + span').css( {
				'opacity' : 1
			});
		} else {
			$this.removeClass('focused');
			$('.field:first-child input + label + span').css( {
				'opacity' : 0
			});
		}
	});
});
$('#hire .field:nth-child(2) input').blur(function() {
	$('#hire .field:nth-child(2) input').each(function() {
		$this = $(this);
		if (this.value != '') {
			$this.addClass('focused');
			$('.field:nth-child(2) input + label + span').css( {
				'opacity' : 1
			});
		} else {
			$this.removeClass('focused');
			$('.field:nth-child(2) input + label + span').css( {
				'opacity' : 0
			});
		}
	});
});
$('#hire .field:nth-child(3) input').blur(function() {
	$('#hire .field:nth-child(3) input').each(function() {
		$this = $(this);
		if (this.value != '') {
			$this.addClass('focused');
			$('.field:nth-child(3) input + label + span').css( {
				'opacity' : 1
			});
		} else {
			$this.removeClass('focused');
			$('.field:nth-child(3) input + label + span').css( {
				'opacity' : 0
			});
		}
	});
});
$('#hire .field:nth-child(4) input').blur(function() {
	$('#hire .field:nth-child(4) input').each(function() {
		$this = $(this);
		if (this.value != '') {
			$this.addClass('focused');
			$('.field:nth-child(4) input + label + span').css( {
				'opacity' : 1
			});
		} else {
			$this.removeClass('focused');
			$('.field:nth-child(4) input + label + span').css( {
				'opacity' : 0
			});
		}
	});
});
//@ sourceURL=pen.js
</script>
				<script>
if (document.location.search.match(/type=embed/gi)) {
	window.parent.postMessage("resize", "*");
}
</script>
			</div>
		</div>
		<!-- // Terms of use -->
		<!--footer section start-->
		<jsp:include page="/web/footer.html" />
		<!--footer section end-->
	</body>
</html>