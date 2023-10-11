</head>
<body>
	<nav class="navbar navbar-expand-md navbar-light">
		<button class="navbar-toggler ml-auto mb-2 bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="sidebar">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-1 col-lg-3 col-xl-2 sidebar fixed-top">
						<a href="/NetFlex/admin" class="navbar-brand text-white text-center d-block mx-auto py-3 mb-4 bottom-border">ADMIN</a>
						<ul class="navbar-nav flex-column mt-4">
							<li class="nav-item">
								<a href="/NetFlex/admin" id="aDashboard" class="nav-link text-white p-3 mb-2">
									<i class="fas fa-home text-white fa-lg me-3"></i><span class="navDetail">DASHBOARD</span>
								</a>
							</li>
							<li class="nav-item">
								<a href="/NetFlex/admin/user" id="aUser" class="nav-link text-white p-3 mb-2">
									<i class="fas fa-user text-white fa-lg me-3"></i><span class="navDetail">USER</span>
								</a>
							</li>
							<li class="nav-item">
								<a href="#" id="aMovie" class="nav-link text-white p-3 mb-2">
									<i class="fas fa-film text-white fa-lg me-3"></i><span class="navDetail">MOVIE</span>
								</a>
							</li>
							<li class="nav-item">
								<a href="/NetFlex/admin/report" id="aReport" class="nav-link text-white p-3 mb-2">
									<i class="fas fa-bullhorn text-white fa-lg me-3"></i><span class="navDetail">Report</span>
								</a>
							</li>
						</ul>
					</div>
					<div class="col-md-11 col-lg-9 col-xl-10 ms-auto bg-dark fixed-top pb-2 top-navbar">
						<div class="row align-items-center">
							<div class="col-md-4">
								<h4 id="navTitle" class="text-light text-uppercase mb-0"></h4>
							</div>
							<div class="col-md-5">
								<form action="">
									<div class="input-group">
										<input type="text" class="form-control search-input" placeholder="Search...">
										<button type="button" class="btn btn-light search-button">
											<i class="fas fa-search text-danger"></i>
										</button>
									</div>
								</form>
							</div>
							<div class="col-md-3">
								<ul class="navbar-nav">
									<li class="nav-item icon-parent">
										<a href="#" class="nav-link icon-bullet">
											<i class="fas fa-comments text-secondary fa-lg"></i>
										</a>
									</li>
									<li class="nav-item icon-parent">
										<a href="#" class="nav-link icon-bullet">
											<i class="fa-solid fa-bell text-secondary fa-lg"></i>
										</a>
									</li>
									<li class="nav-item ms-md-auto">
										<a href="#" class="nav-link" data-bs-toggle="modal" data-bs-target="#sign-out">
											<i class="fas fa-sign-out text-danger fa-lg"></i>
										</a>
									</li>
									<li class="nav-item">
										<a href="/NetFlex" class="nav-link">
											<i class="fas fa-house text-danger fa-lg"></i>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	
	<!-- modal -->
	<div class="modal fade" id="sign-out">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Log-Out</h4>
					<button type="button" class="close" data-bs-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					Press logout to leave.
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" data-bs-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-danger" data-bs-dismiss="modal">LogOut</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-1 col-lg-3 col-xl-2"></div>
		<div class="col-md-11 col-lg-9 col-xl-10 ms-auto">
			<div class="container-fluid adminContainer">

		