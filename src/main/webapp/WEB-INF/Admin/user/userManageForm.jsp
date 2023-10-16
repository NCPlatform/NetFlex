<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- recent report table can show recent 5 report -->
<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<table class="table table-hover bg-light text-center">
				<thead>
					<tr>
						<th>이메일</th>
						<th>이름</th>
						<th class="d-none d-lg-table-cell">나이</th>
						<th class="d-none d-lg-table-cell">전화번호</th>
						<th class="d-none d-lg-table-cell">활성화 여부</th>
						<th><span class="d-none d-xl-inline-block">사용중인</span> 멤버십</th>
						<th><span class="d-none d-xl-inline-block">멤버십</span> 시작날짜</th>
						<th><span class="d-none d-xl-inline-block">멤버십</span> 종료날짜</th>
					</tr>
				</thead>
				<tbody id="userTbody">
					
				</tbody>
			</table>
			<div id="paging">
				
			</div>
		</div>
	</div>
</div>