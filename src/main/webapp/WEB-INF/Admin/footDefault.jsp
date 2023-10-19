<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<script src="/NetFlex/asset/js/admin/nav.js"></script>
	
	<c:if test="${email != 'admin@gmail.com' }">
		<script>
			Swal.fire({
				icon: 'warning',
		     	title: '관리자만 접근이 가능합니다.',
		     	confirmButtonText: '예',
		    }).then((result)=> {
		    	location.href="/NetFlex";
		    });
		</script>
	</c:if>
</body>