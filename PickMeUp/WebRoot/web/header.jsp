<div class="header">
	<div class="container">
		<div class="logo">
			<a href="/PickMeUp/web/index.jsp"><span>Pick</span>me Up!</a>
		</div>
		<div class="header-right">
			<a class="account" href="/PickMeUp/web/login.jsp">My Account</a>
			&nbsp;

			<c:if test="${empty sessionScope.customer}">

				<a class="account" href="/PickMeUp/web/secure/userProfile.jsp">${sessionScope.customer.name}
				</a>

			</c:if>
		</div>
	</div>

	<span class="active uls-trigger"> <a
		href="/PickMeUp/web/secure/userProfile.jsp"> </a> </span>
</div>
<div class="banner text-center">
	<div class="container">
		<h1>
			Hire a buddy for your personal/domestic needs
			<span class="segment-heading"> online </span> with PickMeUp!
		</h1>
		<p>
			Now you can manage every domestic need at your door step. We provide
			Human resources specialized in their fields at your service.
		</p>
		<a href="/PickMeUp/web/secure/hire.jsp">Hire</a>
		<br />
	</div>
	<br />

	<br />

	<br />
</div>