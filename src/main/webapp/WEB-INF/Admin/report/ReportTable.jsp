<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- recent report table can show recent 5 report -->
<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<table class="table table-hover bg-light text-center">
				<thead>
					<tr>
						<th class="d-none d-lg-table-cell">신고 번호</th>
						<th>댓글 내용</th>
						<th class="d-none d-lg-table-cell">신고자 이메일</th>
						<th>신고자 별칭</th>
						<th>신고 사유</th>
						<th>확인여부</th>
					</tr>
				</thead>
				<tbody id="reportTbody">
					
				</tbody>
			</table>
			<div id="paging">
				
			</div>
		</div>
	</div>
</div>