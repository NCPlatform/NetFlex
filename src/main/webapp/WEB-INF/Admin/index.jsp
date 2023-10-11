<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!-- HEAD에 들어갈 코드 -->

	<!-- custom css -->
	<link rel="stylesheet" href="/NetFlex/asset/css/admin/dashboard.css" type="text/css"/>

<!-- HEAD에 들어갈 코드 -->
<jsp:include page="/WEB-INF/Admin/header.jsp" />

<!-- card div -->
<div class="container-fluid">
	<div class="row pt-md-5 mt-md-3 mb-5">
		<div class="col-xl-3 col-sm-6 p-2">
			<div class="card card-common">
				<div class="card-body">
					<div class="d-flex justify-content-between">
						<i class="fa-solid fa-users fa-3x text-warning"></i>
						<div class="text-right text-secondary">
							<h5>User</h5>
							<h3><span id="cntUser"></span>명</h3>
						</div>
					</div>
				</div>
				<div class="card-footer text-secondary">
					<i class="fas fa-sync mr-3"></i>
					<span>UPDATE NOW</span>
				</div>
			</div>
		</div>
		
		<div class="col-xl-3 col-sm-6 p-2">
			<div class="card card-common">
				<div class="card-body">
					<div class="d-flex justify-content-between">
						<i class="fa-solid fa-film fa-3x text-dark"></i>
						<div class="text-right text-secondary">
							<h5>Movie</h5>
							<h3><span id="cntMovie"></span>개</h3>
						</div>
					</div>
				</div>
				<div class="card-footer text-secondary">
					<i class="fas fa-sync mr-3"></i>
					<span>UPDATE NOW</span>
				</div>
			</div>
		</div>
		
		<div class="col-xl-3 col-sm-6 p-2">
			<div class="card card-common">
				<div class="card-body">
					<div class="d-flex justify-content-between">
						<i class="fa-solid fa-bullhorn fa-3x text-danger"></i>
						<div class="text-right text-secondary">
							<h5>Report</h5>
							<h3><span id="cntReport"></span>개</h3>
						</div>
					</div>
				</div>
				<div class="card-footer text-secondary">
					<i class="fas fa-sync mr-3"></i>
					<span>UPDATE NOW</span>
				</div>
			</div>
		</div>
	</div>
</div>

<h3 id="moreReportIcon" class="text-muted text-center mb-3">최근 댓글 신고 목록<a href="/NetFlex/admin/report" class="text-decoration-none"><i class="fa-solid fa-angles-right"></i><span class="d-none d-sm-inline">더보기</span></a></h3>
<jsp:include page="/WEB-INF/Admin/report/ReportTable.jsp" />

<jsp:include page="/WEB-INF/Admin/footer.jsp" />
<!-- 추가 JS코드 -->
<script src="/NetFlex/asset/js/admin/dashboard.js"></script>
<!-- 추가 JS코드 -->
<jsp:include page="/WEB-INF/Admin/footDefault.jsp" />