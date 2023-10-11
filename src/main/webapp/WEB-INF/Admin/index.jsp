<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!-- HEAD에 들어갈 코드 -->

<!-- HEAD에 들어갈 코드 -->
<jsp:include page="/WEB-INF/Admin/header.jsp" />

<!-- card div -->
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-9 ms-auto">
			<div class="row pt-5 mt-3 mb-5">
				<div class="col-sm-6 p-2">
					<div class="card">
						<div class="card-body">
							<div class="d-flex justify-content-between">
								<i class="fa-solid fa-users fa-3x text-warning"></i>
								<div class="text-right text-secondary">
									<h5>User</h5>
									<h3>SQL로 유저 수 COUNT하기 명</h3>
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
	</div>
</div>

<jsp:include page="/WEB-INF/Admin/footer.jsp" />