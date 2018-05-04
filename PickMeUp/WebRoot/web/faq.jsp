
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
		<!-- Faq -->
		<div class="faq main-grid-border">
			<div class="container">
				<h2 class="head">
					Faqs
				</h2>
				<dl class="faq-list">
					<dt class="faq-list_h">
						<h4 class="marker">
							Q?
						</h4>
						<h5 class="marker_head">
							Sed ut perspiciatis unde omnis iste natus error sit voluptatem
							accusantium?
						</h5>
					</dt>
					<dd>
						<h4 class="marker1">
							A.
						</h4>
						<p class="m_13">
							Vestibulum ante ipsum primis in faucibus orci luctus et trices
							posuere cubilia Suspendisse sollicitudin velit sed leo. Ut
							pharetra augue nec augue. Nam elit magnandrerit sit amet
							tincidunt ac viverra sed nulla. Donec porta diam eu massa.
							Quisque diam lorem interdum vapibus ac scelerisque vitae pede.
							Donec eget tellus non erat lacinia fermentum. Donec in velit vel
							ipsum auctorulvinar. Proin ullamcorper urna et tibulum iaculis
							lacinia est. Proin dictum elementum velit. Fusce euismod
							consequat ante. Lorem ipsum dolor sit amet consectetuer
							adipiscing elit. Pellentese sed dolor. Aliquam congue fermentum
							nisl. Mauris accumsan nullael diam. Sed in lacus ut enim
							adipiscing aliquet.
						</p>
					</dd>
					<dt class="faq-list_h">
						<h4 class="marker">
							Q?
						</h4>
						<h5 class="marker_head">
							But I must explain to you how all this mistaken idea of
							denouncing?
						</h5>
					</dt>
					<dd>
						<h4 class="marker">
							A.
						</h4>
						<p class="m_13">
							Aenean auctor wisi et urna. Aliquarat volutpat. Duis ac turpis.
							Integer rutrum ante eu lacusVestibulum libero nisl porta vel
							scelerisque eget malesuada at neque. Vivamus eget nibh.
							Etiamcursus leo vel metus. Nulla facilisi. Aenean nec eros.
						</p>
					</dd>
					<dt class="faq-list_h">
						<h4 class="marker">
							Q?
						</h4>
						<h5 class="marker_head">
							At vero eos et accusamus et iusto odio dignissimos ducimus qui
							blanditiis ?
						</h5>
					</dt>
					<dd>
						<h4 class="marker">
							A.
						</h4>
						<p class="m_13">
							Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio gravida
							atcursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis
							ultricies pharetra magna. Donec accumsan malesuada orci. Donec
							sit amet eros. Lorem ipsum dolor sit amet consectetuer adipiscing
							elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut
							tellus dolor dapibus eget elementum vel cursus eleifend elit.
						</p>
					</dd>
					<dt class="faq-list_h">
						<h4 class="marker">
							Q?
						</h4>
						<h5 class="marker_head">
							On the other hand, we denounce with righteous indignation and
							dislike ?
						</h5>
					</dt>
					<dd>
						<h4 class="marker">
							A.
						</h4>
						<p class="m_13">
							Donec eget tellus non erat lacinia fermentum. Donec in velit vel
							ipsum auctorulvinar. Proin ullamcorper urna et tibulum iaculis
							lacinia est. Proin dictum elementum velit. Fusce euismod
							consequat ante. Lorem ipsum dolor sit amet consectetuer
							adipiscing elit. Pellentese sed dolor. Aliquam congue fermentum
							nisl. Mauris accumsan nullael diam. Sed in lacus ut enim
							adipiscing aliquet. Donec eget tellus non erat lacinia fermentum.
							Donec in velit vel ipsum auctorulvinar. Proin ullamcorper urna et
							tibulum iaculis lacinia est.
						</p>
					</dd>
					<dt class="faq-list_h">
						<h4 class="marker">
							Q?
						</h4>
						<h5 class="marker_head">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit,?
						</h5>
					</dt>
					<dd>
						<h4 class="marker">
							A.
						</h4>
						<p class="m_13">
							Vestibulum ante ipsum primis in faucibus orci luctus et trices
							posuere cubilia Suspendisse sollicitudin velit sed leo. Ut
							pharetra augue nec augue. Nam elit magnandrerit sit amet
							tincidunt ac viverra sed nulla. Donec porta diam eu massa.
							Quisque diam lorem interdum vapibus ac scelerisque vitae pede.
							Donec eget tellus non erat lacinia fermentum. Donec in velit vel
							ipsum auctorulvinar. Proin ullamcorper urna et tibulum iaculis
							lacinia est. Proin dictum elementum velit. Fusce euismod
							consequat ante. Lorem ipsum dolor sit amet consectetuer
							adipiscing elit. Pellentese sed dolor. Aliquam congue fermentum
							nisl. Mauris accumsan nullael diam. Sed in lacus ut enim
							adipiscing aliquet.
						</p>
					</dd>
					<dt class="faq-list_h">
						<h4 class="marker">
							Q?
						</h4>
						<h5 class="marker_head">
							It is a long established fact that a reader will be distracted?
						</h5>
					</dt>
					<dd>
						<h4 class="marker">
							A.
						</h4>
						<p class="m_13">
							Aenean auctor wisi et urna. Aliquarat volutpat. Duis ac turpis.
							Integer rutrum ante eu lacusVestibulum libero nisl porta vel
							scelerisque eget malesuada at neque. Vivamus eget nibh.
							Etiamcursus leo vel metus. Nulla facilisi. Aenean nec eros.
						</p>
					</dd>
					<dt class="faq-list_h">
						<h4 class="marker">
							Q?
						</h4>
						<h5 class="marker_head">
							If you are going to use a passage of Lorem Ipsum?
						</h5>
					</dt>
					<dd>
						<h4 class="marker">
							A.
						</h4>
						<p class="m_13 last_2">
							Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio gravida
							atcursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis
							ultricies pharetra magna. Donec accumsan malesuada orci. Donec
							sit amet eros. Lorem ipsum dolor sit amet consectetuer adipiscing
							elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut
							tellus dolor dapibus eget elementum vel cursus eleifend elit.
						</p>
					</dd>
				</dl>

			</div>
		</div>
		<!-- // Faq -->
		<!--footer section start-->
		<jsp:include page="/web/footer.html" />
		<!--footer section end-->
	</body>
</html>