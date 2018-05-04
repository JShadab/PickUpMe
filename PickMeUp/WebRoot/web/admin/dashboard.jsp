<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>DashBoard</title>
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
		<script type="text/javascript" src="js/jquery.leanModal.min.js">
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
		<link rel="stylesheet" type="text/css"
			href="/PickMeUp/web/css/easy-responsive-tabs.css " />
		<script src="/PickMeUp/web/js/easyResponsiveTabs.js">
</script>
	</head>
<body onload="init()">
		<div>
			<jsp:include page="/web/admin/header.jsp" />
		</div>

		<!-- Categories -->
		<!--Vertical Tab-->
		<div class="categories-section main-grid-border">
			<div class="container">
				<h2 class="head">
					Main Categories
				</h2>
				<div class="category-list">
					<div id="parentVerticalTab">
						<ul class="resp-tabs-list hor_1">
							<li>
								Add Experts
							</li>
							<li>
								Show Experts
							</li>
							<li>
								Show Customers
							</li>
							<li>
								Show Booked Services
							</li>
							<li>
								Payment Details
							</li>
							<li>
								Logout
							</li>


						</ul>
						<div class="resp-tabs-container hor_1">
							<span class="active total"
								style="display: block; text-align: center;" data-toggle="modal"
								data-target="#myModal"><strong>Admin Dashboard</strong> </span>
							<div>
								<div class="category">

									<div class="category-info">
										<h4>
											Add New Expert
										</h4>

									</div>
									<div class="clearfix"></div>

								</div>
								<div class="sub-categories">

									<form action="/PickMeUp/servlet/AddExpertServlet" method="post">


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

												<input type="text" placeholder="Enter your Name"
													required=" " name="name" />

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

												<input type="text" placeholder="Enter your Email"
													required=" " name="email" />

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
													required=" " name="contact" />

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

												<input type="text" placeholder="Enter your Address"
													required=" " name="address" />

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

												<input type="text" placeholder="Enter your PinCode"
													required=" " name="pincode" />

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
							<div>
								<div class="category">
									<div class="category-img">
										<img src="images/cat2.png" title="image" alt="" />
									</div>
									<div class="category-info">
										<h4>
											All Experts
										</h4>

									</div>
									<div class="clearfix"></div>
								</div>
								<div class="sub-categories">
									<table class="table table-striped">

										<thead>
											<tr>
												<th>
													Name
												</th>
												<th>
													Email
												</th>
												<th>
													Address
												</th>
												<th>
													Contact
												</th>
												<th>
													Edit | Delete
												</th>
											</tr>
										</thead>

										<tbody>

											<c:forEach var="expert" items="${allExperts}">

												<tr>
													<td>
														${expert.name}
													</td>
													<td>
														${expert.email}
													</td>
													<td>
														${expert.address}
													</td>
													<td>
														${expert.contact}
													</td>
													<td>
														<a
															href="/PickMeUp/web/admin/editExpert.jsp?id=${expert.id}"
															class="btn-warning">Edit</a> |
														<a
															href="/PickMeUp/servlet/DeleteExpertServlet?id=${expert.id}"
															class="btn btn-danger">Delete</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div>
								<div class="category">
									<div class="category-img">
										<img src="images/cat2.png" title="image" alt="" />
									</div>
									<div class="category-info">
										<h4>
											All Customers
										</h4>

									</div>
									<div class="clearfix"></div>
								</div>
								<div class="sub-categories">
									<table class="table table-striped">
										<tr>
											<th>
												Name
											</th>
											<th>
												Email
											</th>
											<th>
												Address
											</th>
											<th>
												Contact
											</th>
											<th>
												Edit | Delete
											</th>
										</tr>
										<c:forEach var="customer" items="${allCustomers}">
											<tr>
												<td>
													${customer.name}
												</td>
												<td>
													${customer.email}
												</td>
												<td>
													${customer.address}
												</td>
												<td>
													${customer.contact}
												</td>
												<td>
													<a
														href="/PickMeUp/web/admin/editCustomer.jsp?id=${customer.id}"
														class="btn-warning">Edit</a> |
													<a
														href="/PickMeUp/servlet/DeleteCustomerServlet?id=${customer.id}"
														class="btn btn-danger">Delete</a>
												</td>

											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
							<div>
								<div class="category">
									<div class="category-img">
										<img src="images/cat2.png" title="image" alt="" />
									</div>
									<div class="category-info">
										<h4>
											All Services
										</h4>

									</div>
									<div class="clearfix"></div>
								</div>
								<div class="sub-categories">
									<table class="table table-striped">
										<tr>
											<th>
												Name
											</th>
											<th>
												Email
											</th>
											<th>
												Address
											</th>
											<th>
												Contact
											</th>
											<th>
												Edit | Delete
											</th>
										</tr>
										<c:forEach var="service" items="${allServices}">
											<tr>
												<td>
													${service.name}
												</td>
												<td>
													${service.email}
												</td>
												<td>
													${service.address}
												</td>
												<td>
													${service.contact}
												</td>
												<td>
													<a href="" class="btn-warning">Edit</a> |
													<a href="" class="btn btn-danger">Delete</a>
												</td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
							<div>
								<div class="category">
									<div class="category-img">
										<img src="images/cat2.png" title="image" alt="" />
									</div>
									<div class="category-info">
										<h4>
											Payment Details
										</h4>

									</div>
									<div class="clearfix"></div>
								</div>
								<div class="sub-categories">
									<table class="table">
										<tr>
											<th>
												Name
											</th>
											<th>
												Email
											</th>
											<th>
												Address
											</th>
											<th>
												Contact
											</th>
										</tr>
									</table>
								</div>
							</div>



						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<!--Plug-in Initialisation-->
		<script type="text/javascript">
$(document).ready(function() {

	//Vertical Tab
		$('#parentVerticalTab').easyResponsiveTabs( {
			type : 'vertical', //Types: default, vertical, accordion
			width : 'auto', //auto or any width like 600px
			fit : true, // 100% fit in a container
			closed : 'accordion', // Start closed if in accordion view
			tabidentify : 'hor_1', // The tab groups identifier
			activate : function(event) { // Callback function if tab is switched
				var $tab = $(this);
				var $info = $('#nested-tabInfo2');
				var $name = $('span', $info);
				$name.text($tab.text());
				$info.show();
			}
		});
	});
</script>
		<!-- //Categories -->
		<!--footer section start-->
		<div>
			<jsp:include page="/web/footer.html" />
		</div>
		<!--footer section end-->
	</body>
</html>