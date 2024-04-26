<nav class="navbar navbar-expand-lg navbar-light bg-light" >
	<div class="container" style="background-color: black; color: white;" >
		<a class="navbar-brand" href="index.jsp" style="background-color: black; color: white; font-size: 24px;" ><span style="color:red;">A</span>Cloth</a>
		<button style="background-color: white; color: white;" class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent" >
			<ul class="navbar-nav ml-auto" >
							<li class="nav-item"><a class="nav-link" href="firstpage2.jsp" style="background-color: black; color: white;">Home</a></li>
			
				<li class="nav-item"><a class="nav-link" href="index.jsp" style="background-color: black; color: white;">Shop</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp" style="background-color: black; color: white;">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
				<%
				if (auth != null) {
				%>
				<li class="nav-item"><a class="nav-link" href="orders.jsp" style="background-color: black; color: white;">Orders</a></li>
				<li class="nav-item"><a class="nav-link" href="log-out" style="background-color: black; color: white;">Logout</a></li>
				<%
				} else {
				%>
				<li class="nav-item"><a class="nav-link" href="login.jsp" style="background-color: black; color: white;">Login</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</div>
</nav>