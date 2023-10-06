<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<link rel="stylesheet" href="../css/home.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	  rel="stylesheet"
	  integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	  crossorigin="anonymous"/>
</head>
<body>
<jsp:include page="../user/header.jsp" />
<main>
        <div class="container">
            <div class="movie-main">
                <img src="../asset/img/masklogo.png" alt="">
                <br>
                <br>
                <br>
                <p>외모 콤플렉스를 가진 평범한 직장인 김모미. 밤마다 마스크로 얼굴을 가린 채 인터넷 방송 BJ로 활동하던 중 의도치 않은 사건에 휘말리게 되는 그녀의 파란만장한 일대기.</p>
            </div>
            
            <div class="buttons">
                <button class="btn play" id="openWatchJSP">
                    &#9654; 재생
                </button>
			
                <button class="btn info" id="openNewModal">
                    &#8505; 상세정보
                </button>
            </div>
        </div>
</main>
	<div class="p-3 mb-2 bg-black">
	<div class="carousel-category">한국 드라마</div>
	<div id="carouselExample1" class="carousel slide" data-bs-interval="false">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	     <div class="carousel-item active">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABZTwZzLcALx_5Jh8KFwBZkMd5cYWxhG9-OvkdfYW6n2i4tmmT_5nxUdf2GGAKyQtcr3TnQsQKVBtFH9dqGl-x3_hWdPagf8LqEQ.webp?r=9bb" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABWpN26ahvrbn73mva-bt1oCzKRj6F_1w0rmhWyI5339ptgV0bmXvPrG-64JkWXDx1mne6-ynAX4b3bdrJK-xKKSojJdSrltR-oU8T4zZCjrTDoW1NZGeehenhAMVlS_46IFu5UHDF1PW9Ippk6FDPI0MwpjnNPlPmeNRHbl-u1r6FJWtk3jPiiGXj5ATv5-SgAAi-5BgGxymtc2DI0EekFNygKRgXXyd3PhbBEZ1yYgemaB9GR3DTD7kM2UliCCfQNw7EgzuYpAzmGhpyIEqardySYSL0AB151NtycEA91GXVnugo1y-nQpFMq1LDBdbF5pkGg8JKem8fqriHJMkf3UJwOKtiPKvTKuy6LwkCEE5hkQn1_WWwwUAeKoLK04.jpg?r=49e" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button">&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABfkkI9peDv_VGv3OSDirOA03pGDhyGP8a2GHGfqFakq_PXtZx_HAN5NpBgF_pMmAmOS0pKGgn7VBMRoLptdh2vsFUPl2p7eq6y1bHCUwFjnxoyqDzqfIqQHRlEAr53QkTCnqXsanMPw-aclBgJNl7tMSpOlWZ9-nrAqwBLU17IEkd5TMZVTYOUiY4Dx_amTit5l4GdOb9NzHdoedjOw7m-lCBWjWP6b91B6qyihWHZ_blxEtWgLJ1K_BDjliaPzj_aQaa5ENcpBIEwaHD8104fI2EklVJ5uDXCS9JYN6onItoD2mO4yrkNHq463JXujhxsnqM6fqTcV3tr1QfR1CYznhLXyT8rfQqW4_NDNc2qV_WMhpdJM_WsN37M_wfj5RMLeEXuAOGGm3gkznICT3UHDnTJ8JHbdR1mAujTi0F090QIsBiEeCdXLroHNyXVy0v2jm78BbzHVjsqMEPTIuCqnRDFSuZVbTngBrDl2q6QVyuhzJkbMFLKXTxlKCEIZzNgk.webp?r=d60" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABWRqiuy1lFZvsGmPMhMOtiK8lItxx5o-LlXsCGy24oxX3rQqmF_Jefk0OApU1QqdsFIoypL0NCqywBvJkY9p54o9O5__Sbe3WpcWkQlvhSG0bvHuLqjGDfzDoLv1A3fpjsAoHEvTnK9667_0aauwF9qncEuZX2VEQssTbMWy6Zq4yG5_-kTBeA9ZEAka9aC2Msz7ln8PJtw_jkucyxezHNxZf9XjojnltDcKdqNPiaJ5VmnzdxDUHjQlXMw_eEw-vMd_ZNiiimgXqQWdZGBT-Tajq30t_ZZYy0EWa-2yvEOnHnrQPFdiwCoXleKn8yFuFx_U3hWqiEOV32shI6G2ErYyGruH0c3vNPz4LJ19mMLDxa5_i3pImqfWPhPggfA.jpg?r=31b" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABXO9IJHa20NA5AQt8To9aS0PcW6Ut2iRxkgtzMtG2oT9CJk7ZN26h50kmhV5VSKVIEMEB3zpRHY6tdxv2B9Aa70QnlkxZn-RkPs.webp?r=4cc" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABf2X6LsmYD8hnmsdtJ9YRaofAnDhKMqIYHhamzHO0OFy0-WPJCSffni6bC8fmvMkYNtjB2U-pKZ7s6hmkgqrtTTtzcsZb1bzoVk12gtIaQrFXGqWzGxlVPs-sHL11lzjZlT9lyhavvKlO35TKxtRXT0N3InN1c5alHP6McYTvUE_dZTMCAn0Tv9JFYSfSZnnLSd_CCZZDOUgD0EOHx0amI-xNEARYZMLYtLa30Apb2MP8WYZ4VUhxIZCqFPgOnivu0hJ3b7vVdi-Lp5IN8uBQigIuwrrydtE46xVOPN0NChiLvkMvsKwHu9OxstKJDkxG2ZaJI2znwWiJ9FOR3A446TksjhpJ0cpGlEmO1HFLKhP5xIMYVzu2rThvTq1t2PqEF1-R8C1V5-pg06Cl0gPX1laHf-yQl28uf45KONYHTLoP8SDSfNjvVI4FBpWfZ7yvagmVTBs.webp?r=201" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABXO09CUilORe6fR5DxCkOM766BkSFDkn7pb2kg6JslFmlY-oQCqRI57DiJB2FNdCruzgvTzACFzy_xUSkFXRsJHj0Df58kdwkGnByJc7LzAtVwxqH-ySmAEUdiJFbsQZzq5Z3Pk5CX1iDzuopOIzGoYm5cOgw8Mv4VDk2ODa0UnFi9xJP-U7FpCSGyWm_25X.jpg?r=417" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABZcKHQJ6OI-8K3JT5BwtJT5WpYFFvxgDDQbT21yB4Ag1EToBVGxa7ekw_OdQDWAEjq9ngN4qIPVsMTYzCYJjAueCChln0k9U9mgx6rGUbwK-dCRJo6ixwXY4DbVIq6N3OeE7syHSEeJ36q3GbbZQQdI4wKMGGHqhj4cGzbCx1XPEWiQw01qrFpULwjnqeAA56HVt8bND1zncR4mwwgLzZKLyy8pibdQPnffR_RmHRim5WyCSGBVYHImsE8MXclRFirNrOqGcpapVCYCR411RwjIPUe2yug7fXXpfLxsQ2WT1pe7MkcWQbAr414dLMSXtkIqQgb0KwqYTS04x4qegBaMPCELBGkCkH_IrAlXwWcu-TpOLYpk2g-A17Vp-e9LJvKJq2_jylexuZQsFfr45MygHpeQm-J4Ozko7eBGX38kH-aoyGTE5q4brf09WuKKtiu1Ipi50EyMDC9fhzV_KYUU49iVbaJ1XEmSAZ2ODdgftAYsCWSJxikR9nOw4KuKws9M.webp?r=5b3" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABYXxxs7JXHUdiBVb_4EwfSfWvrX-PwputCz_1thZEIt1mZc0-1N0Sr_zODgIHMDXm1YJcQZDD3XXNdgEaa3b8bvm1kJ2OEI8jqg.webp?r=934" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQuK1JxUvL_JK22fCmNRYp8Ppn8B45zkaq8W8-_LjdpX-v0Pz6OZ7VYwOgfpbsPVC_7SNLnA--1q2EfST8HsRfm-BSNt1EMyt9s.webp?r=98d" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABUtZNDSGiFy_vTjGwW02evjVt-KX3ZcXEsV_qKuaBko9Nsx86TamtxSBTJe6LPTIYVMzxB_UfEUzGr5rPb8wCegA9C2ClrkF3LM.webp?r=0b6" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQPEbMv-1FJAlV3_TwrYdbwmy8WIpA4RxCFmHwCFVL3r4iWLtYA2GTh7tal-fHMqnH5ncQtCbDvJz3f1g5Z7AyZ5ajahcru5qGg.webp?r=a9e" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABa9-UsT-k44yru_Lh3zUAKiYudrXf-RbT7_v9C5lxtHuPvAAJZkDWGrpE-a_WiZxRmnAspuIDpJLDG3BMVBQd7gGmPuASG0gSxc.webp?r=865" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQ__EN8-fmxaOnxJNMula_j3BciyRRmYZnVvKbCv2sFJCcL8qRQsO2TfSyp8f5ZbOpEh9BDh-t18WSTcU54mMpZaxzYBqpqBCHt24HuCcZHYRoYdJVHNeIUoTpPy6w9k_C3M.jpg?r=b06" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABbpM90VYExknAUuRQsLMXpDyYlaCa76LArIvSmLgpY4MY7uHvM4zyjO7VxmWxmCSSN0HMldSfmqfTuBshWzBm78Tuzm76zIKC7f7WfHxOt61yWhtCcrNygJmgnMfMcR_0hMx.jpg?r=373" class="d-block w-100" alt="...">
	         	<div class="button-container">
		            <button class="btn btn-primary details-button" >&#9654; 재생</button>
		            <button class="btn btn-primary details-button2">&#8505; 상세정보</button>
		        </div>
	         </div>
	      </div>
	    </div>
	  </div>
	  
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample1" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample1" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	<div class="carousel-category">name 님이 시청 중인 콘텐츠 </div>
	<div id="carouselExample2" class="carousel slide" data-bs-interval="false">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	  	<div class="carousel-item active">
      		<img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABRzYq0pd4lIVswmcfg-UC9uoBOygKxldZ93Xn14kH7Q9E0bHUCQchKuAJestC6McPTfywuqRBL3KuCHN16UD7tywXseW1QJ2R90.webp?r=fe1" class="d-block w-100" style="max-width: 280px; height: auto;">
    	</div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample2" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample2" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	
	<div class="carousel-category">지금 뜨는 콘텐츠</div>
	<div id="carouselExample3" class="carousel slide" data-bs-interval="false">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	     <div class="carousel-item active">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABf5P-bNcFTaN7Wjz1i0gpLFvZK4aDNhzCxmTAbU7rvReCFHA6ed1X83CsbuwXsAReGoSNw6AsYtf9ZhKdWx29bxClT31904QjbOedmSIH58nkN6Rq-b6L6ocySIbJn7hPsjUCLnluI1xKrnlGQH6Gop0DJMc0qq6bJyZgUKwYXSMyA1qedlv0iSM6RAji9U.jpg?r=417" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABV08tzzBECoGzWYxiK-0s9itsh8rPSXXmDPa9Sh-816BOey-xSUfIF_Oy60LeajC21Z0b_uvXmNyXxiaVEzHbYt7hR6XDR_xAMrtgwEZ3VwdXYyKR-U2mjb0d_VLZ6CSDbawsfYJR1RLqccYs5pgE1-A7IojboZriS3lXpfYAgTG5vUFL0qxBDd-tZtK7aT46t_w95JOvczWdYbXJJP2PON2eDw9mQfQPrGY3N-8Kg5-0vs4JBXgRPwsPpgK7xUFmvNHQ9Eg6vokOdStMb5JQ0fD0j872x9zYTBm_iLavz7dJRD6YEtLea9ofF8yru0NsDGUhivpypFJJtjudlxO3cibvvTJx8UvJ2HXfuUyB6pNv3kV5akyZ9qUB5SuC25D7JJ6TivFeBCQJ2Y5FLHjSsTs4oE0euQRdsxNp7e7usjf2tUxLaq7iLCxhQ0v1Lr4WvV9WJr6a4fDt1CrlW_c-YRd4KYXNP24YPcKpmfeN9IDblvBMhnDt2RY5jPm9fh-AHA.webp?r=176" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABaTK-jky-I5dvAvS0kAhXGMZc_2UkpKyDT8WNFM2FqirxCycW3nnAnz_j6bg9wif3pfhYS-aPidggcuZcXZojGxrlOD3C78pCoOc0jY9X-OZXwYKlQXaZwQClXzVj-j-LBD0lZSSBpYNiWFNuNCfd2vbk_9VmAVizKTE5_2By7owv1AdodI7KpgB9qZ7ATH0FHpA2viAUl_KVEZu12oUq-qFq0BTDiX_us-bhdEyXKCqlTZZlYii6uFD462K_JDFOvkohpFQi0w5VZr0gKhIfMet3b61Vmi6lkOL31GY-T4MqFaxCvkKcT5DljjdByMzim14HIMHWPPb8VmQ_tpYIX0FkMiOfVp5JjSMn0qMu34_frTZdgwyFbhBw50jXkRwpj9R5pF8oQiUmshLr2ahs41KrV0DpPFCEpmnTSjJ201B4N6fpRL3LLzsMGU5rguhapkLxPAe.webp?r=ff1" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABeoAOlD6FgmOlhqCi19h9vAnef1EmeJuCuhauDwh2ZBcgaCScfNXZjkhjkNsOV79kkdtWa0bRUQuQoDZLs3mhzbqncBwN1ePQe7uIy1TWRbuQe5z28br0vrI3ksdPmJ_BGgRvVW71_2uxgVK6fRG0toiV2b6ohfCECH3niop0bYZpAnWtjGejmfRbHyMgZCIYRXCnI8twKZvgxK05qVu53Sfdd1jfliRB7O-Uh31bQkGV3wCJJI_CvyQaK1dB-j0nv3qvjGrHkA5ZFQ8nqq4dcrDXwNg2cY7hoMPEUwi5VQee-Ei7H4MLdAOxO61RC03e3MPmzW1zB8Mxh2R5k71x2-uwIM9fzHUG98M-YvhyRMqRSIcTXB2hxKIB3HEEw5zv1l5S-LNZZb-Ry1ljRWrotQdI6YwpAmLBCpU4MOlNGgIA_mXfWM4ys61uKewA30QU7B4PvoYNvcDoKVFj72OxayRxKpXMI-qYIfZ4Z852HJVinmFddektTgaprfmBgRp91ZUpk6HuYdS5RYuvalrIn5WKkEIEr4.jpg?r=567" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABb6zbIXkT69dhNHF8xmhirOtmeijElbw-VeLxCwSG11Hv_060f8x0uLr4lswquOfSXME9zYIovAzrX7CUsvD9QG1m5dNoQvGK7bBxY5IKaOwCovp2KERhhtoNxK0HrtxYIu4.jpg?r=1c0" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABUtZNDSGiFy_vTjGwW02evjVt-KX3ZcXEsV_qKuaBko9Nsx86TamtxSBTJe6LPTIYVMzxB_UfEUzGr5rPb8wCegA9C2ClrkF3LM.webp?r=0b6" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQ__EN8-fmxaOnxJNMula_j3BciyRRmYZnVvKbCv2sFJCcL8qRQsO2TfSyp8f5ZbOpEh9BDh-t18WSTcU54mMpZaxzYBqpqBCHt24HuCcZHYRoYdJVHNeIUoTpPy6w9k_C3M.jpg?r=b06" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABaHuYNa6WqzbD0SNLI1ZofQwfSvnq8xXPW3A6SPFj4uFOt6P207ma4CsY9hyYzsvrsVsMbPaJ6NyhJ2Me3rt1SFRZziLxyFfgf4.webp?r=537" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABaXfhtqgWbbHeyNmqtJT-jMnmXrhzcHXzxOelsFTrARxMOgKXKpn51fDUoju9aOa5KmT2iMrycOCuH26YevH7FzAeIFzaY6N3L4.webp?r=f17" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQ82YCJ9foWbWTS9LwGqbpgv-i-Id-YEr9trV5Nkz8SzvsQ3wJi2uorrhztM0fe8SefFASpcSyN3wsdgJbgs4ZU-SJmmaDKbDOE.webp?r=1a3" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABfbqGcl5QMiA0yXZ1dau91UMXICLnD9m4nAX6H4aFau_ganarGhUXIctelw10GymgIjlPWVJT_RaIeR4yZGVIxv6mnZMXyqZjb0.webp?r=831" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQ82YCJ9foWbWTS9LwGqbpgv-i-Id-YEr9trV5Nkz8SzvsQ3wJi2uorrhztM0fe8SefFASpcSyN3wsdgJbgs4ZU-SJmmaDKbDOE.webp?r=1a3" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABSTAQefUW_SKOT-L1ziSuYSeYxBR-q56zpFeC5wuydRaReMpszNn9RUi8giEbONyNDsdihj-htj8lq4_IcSnFxxDTtf5tXrX-BFJ4veyBVrr7Loq_n8wssFnLemazUDABN0P.jpg?r=f2e" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQ3XpSUWOFrtkHJpow9e6xshdqjwNRnhGZ-ZbhA0lPNAgOQ_t8jjwgFh7hOsYnuC0QBgCibq0uNkTSgJlawWCfoKTzfDbqnXUpU.webp?r=54c" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABf9s4fofuPbE_XoTtixZB7-3o5hwkVOzQxlGSgNrJJ04vhmSHhoHw_S9B_T0HOGS880qiTSrBNJgP2Jd-L1XIwQDAe5vQxanGYycky5MfhBLViSQvEPDVt25iCt1Rg23Z_nIYA34z6mBL23DkPJYT6Y8-qBUnUQWTRo2KtPssAcIyGtJk5bgd7bSr8BLMYMzE4LjrUKt5S9Ou-XY0daUlp9LLhlCOGZK96S9oTh9Uo2_uZkQ6LSVy9i1L07nd_746GNdfWjh4ZqpYC159Oz56mGqYIbVS2i59GcEw6AHvbD18fh4Ojg0e-tjSu9Pm37qByIe7OLT68zfUtOYwQleeEm6uAa87t7hApAEyIznt9M9x1Y6WtBcp7ecISMWccdKJqIQI68rAEFdEGbRaMUUA_IHud_Y_vI4wISTL93T4Oj1sYqkzGBvaog0YA2oqUkxINXvpC3I.webp?r=937" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample3" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample3" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	<div class="carousel-category">새로 올라온 콘텐츠</div>
	<div id="carouselExample4" class="carousel slide" data-bs-interval="false">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	     <div class="carousel-item active">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABeoAOlD6FgmOlhqCi19h9vAnef1EmeJuCuhauDwh2ZBcgaCScfNXZjkhjkNsOV79kkdtWa0bRUQuQoDZLs3mhzbqncBwN1ePQe7uIy1TWRbuQe5z28br0vrI3ksdPmJ_BGgRvVW71_2uxgVK6fRG0toiV2b6ohfCECH3niop0bYZpAnWtjGejmfRbHyMgZCIYRXCnI8twKZvgxK05qVu53Sfdd1jfliRB7O-Uh31bQkGV3wCJJI_CvyQaK1dB-j0nv3qvjGrHkA5ZFQ8nqq4dcrDXwNg2cY7hoMPEUwi5VQee-Ei7H4MLdAOxO61RC03e3MPmzW1zB8Mxh2R5k71x2-uwIM9fzHUG98M-YvhyRMqRSIcTXB2hxKIB3HEEw5zv1l5S-LNZZb-Ry1ljRWrotQdI6YwpAmLBCpU4MOlNGgIA_mXfWM4ys61uKewA30QU7B4PvoYNvcDoKVFj72OxayRxKpXMI-qYIfZ4Z852HJVinmFddektTgaprfmBgRp91ZUpk6HuYdS5RYuvalrIn5WKkEIEr4.jpg?r=567" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABbM5ylsxY2T2eOazjTvWAaxSRpT-CmBLljZGM_fqMxg9oyEZ0bMW1sAJOVioF9LJv54de02DyDS7-d5YxjT7iOzC3WhaJ81Eev2EW2xTibBh-Of461dpvHYUO5OfCOSz2FIokyxmNAk-g_1XG_-vK_2moffyrK5ra_DYUxvE_5hiWWNs7BNGm_nmrFRhBRE.jpg?r=31b" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABdSTrjt5Q7ddpkZgFRxIX6gH9ZzczGOZBPSRVJGI-7vAbkm7FA4VTpD-rPky9tp9AMMw9lIeL_s94_cTfu2C2Xh3kcOwebx3JOrz6__OiUDREQYXshC0uK8PFQ1J_Ni1ivEM_aL6BIdt7Y0UyyAGodfjHU0OskHP11mTppnYPcSL33M_U5MvRCshwzFO_nVTX362V1NuSFKP_4SOjLnRa_EANgtMezPpl0qXfoPIWMP8wA__jReewbh4JLkRLgFk-ZaFItRQgdcXrH_Fm3vkBNoXAA9vwpWntJG77HKbAUO1w3aAgXRsQwSxKrk.jpg?r=638" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABfKgDZG-4KCLuM2Ve0nzacmEbA1hwoh1GhYPMdXhEA8dbTVtPYUoxNSJ1C54OwRWrwwyJZrLVAIev_v5BZDIEz_bB_0hseMins1gm9uIeSUYoDCDCGnNqGZxT4CP_p6i1FHS_LagcjKyMf4ADpZ7bc5kW2h4x9PNb-A.webp?r=ee9" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABYO9W-Zu3-MifosAg6xJvpD6Tzkizzn0MobYfViQWDQhj07MV5Now-Zi2Hu73ZOsKNCLOUDzWAXSX_m_-l35_-stmUkCG1DdqDo.webp?r=cab" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABalP_ajMs_8OIKZW1TEeljMuoQMeawAwSudJ8DoGA1DLLC8a0eRHl1k3hpc1hz79GWJ789TXTH3Yuss5pCWHELYRWdPaExkUDHA.webp?r=9e6" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABdVdESuVvEkD9K2YnzWLQEeJjyJ38p6ifiyGVYzAtUiycRNMQdy5ZDmWrKGMOi3Ds9bmckPow79ZKgSgBOf0_yUGaujohDgmJ2bRnBpQ8oEpW8QJdjT4jvxj3iRNOchoj97bh70YmYP_nW8RwYBLphaPONJ7bMiU48eT9J0dMhVoj4IZ_xFyJtr-zUcsu7XikE3NT4exUsCUo1gNcKvhJYRJYZbL3E_KIJ7bgCIteUGQmAGj4JfIRbp70KynGduALiE9nCESS1gJ0Hvbm0fVPuyGAtQ2PcaeTDpOC3JEGRzOzGoQnyazRhDjxyesqAb7dL-SMprVj15LHAGVayNYtAOvCpZtk-6LZuH_NZdKhsXnlBbCaDhudw.jpg?r=f03" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABeywPwBi4kwJJJGvMYve5pKMQxZTH2IZekc9BM-l0nHKVvpQ5C8NM1GzcUhJbt1Rf5824ks40sGChj8XYBoZg6viA-z-XHyI4ljZiyeX4GghYGPkxKfHETWh0iuvqWws8utFTQsUV2JY_o0IUrwTz7dfso3pj-pkOY8.webp?r=946" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABZgSgE0dNSLsFEknTyC59TV-G3SE5updGv4E5gSLlaO8_Aqf5Wj7hw-ADKB-CRoJMwz3PUz-eqP1vibamzoKYRDR5h3WacuWZaThHagni_rWAsiUL7RyNnAy9XE0smPJNRGX.jpg?r=c91" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABSyydz0OKK5U5WBSQugoxa2ALFZE8l5V-mR_s4kFBaL3HIxxLED0gS70sG1MIMToTOjnXa0vZWydIh9VR8nlyBwdB2rIs31p3NEh14ouvg9OGniuVmzpYTDBIX9Q7SS-QTq_y07HDWVSsvAD-GeKDc3_U0Q-rZx5XY6BkMngDkbUpMK9TwWo0NObFblalFc.jpg?r=fd5" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABSE4ri4AaXjOQAtapMQeGXm3o4yE1E8FFzQckj_TiYXTWiJH-B3UIDAtVZwEdzRJEM92989fch28nvVjpKHwd-MRgfm58x3Jfc8.webp?r=b06" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABSPR-QZqByWSPRRuhlvZWyFSO3TuC3mm21fdDhG_pa_4WxZ8Gky_9xLT_-6Mo0x1i8vd96aoH2avEnuG92l-BZSu2YUvYVas90U.webp?r=eaa" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABcHG_GzySUoLYD37gEdMYTvyAEB9EKaRnmWOYhiFBy5Og8x_O8dxwM31XOy46lWPOA-TaF3pZsbn4iC49LiAGJKhNlSiQ_wCBvXA3bDYyaoxVqE1bCATQWAgbLKIBleNpr3h.jpg?r=af4" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABX8bovNvnF0TNOiW-TySWtKmHQrUToybH_yNJVRqKUL8ElSWgCixk5yiOqgS67-Z3uTaGqot8yvkvP4ohwYx_IIsfa2El3IjPSmZcQsxyeAMV4eoSifl2q84Bi9lIPm9a2g3DaqljSYPrQT6Pu6_mIysdNHe4zwJuz05XZAwJoivGc75sXV9cQ8eTlx5UBJjhVD4QO0jmadDBwkQTZRSQzDlPKuvvig5zvapIyy5qALnINJkuhim1bxJdpY5W4DOXcF4og0nF9qAjzz10XcKm4vdspQ8aFbS-BlTQ7GdmOjVje5YHpTjMt_VMI7v.jpg?r=031" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABcxyE3SYbqISK6NYdosKLVt6gCn-Gohil7n9kg6m-R3mxheqnOxwqENf_d8uzy8e5T7dYDymmoAxiLITM0IEogRnwiiUWcJeEI0.webp?r=fb7" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample4" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample4" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	<div class="carousel-category">내가 찜한 리스트</div>
	<div id="carouselExample5" class="carousel slide" data-bs-interval="false">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	     <div class="carousel-item active">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABULL6gQNVOLPXFcJkqw_-oY-nwpvW6d-AqPibSwqkluKhFGb0A1hqeUNv9upwQxS90PM25AGrvEuzDyUnxYtjUgsZGPbyiCSN52qzOUCC3I96dZj3CB48D31UfZyAocFcLCx1bCoIeRQTicRYb7Qu1rIrCpYBcYbLmIPfEOcHczeoL3LOR4dXY0gvz4BXmZu6WywF-7a3yjfaiEbOZt-Nbxsi9e-sse6mExVSa-y5m0JG_XkRu_IzPBjKKaqtcd_09sgVYxj_AK-N0Z0aoxCzQVDc429Ov_Sq3aXDpZ6xqKI8GS68m9BfyyDTVlYBsKcdDAdLv_am34oKB6M7WUns0ictyWBG-ulSmj_oKebr7075kiQPZCFbAVszEPzmEW8plHKUZbanRudS-kAVNJJigOeRsoVygJM_puMgu_Peit7OP6IYqNx5l5i2PGjnA_X_mAb8w5Xt1GIiWALQyGy2mlqs0bNoIyBGSBcfBh7GRambkKyxoRdl1Ka7hPbYZY2Cyw.webp?r=473" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABWpN26ahvrbn73mva-bt1oCzKRj6F_1w0rmhWyI5339ptgV0bmXvPrG-64JkWXDx1mne6-ynAX4b3bdrJK-xKKSojJdSrltR-oU8T4zZCjrTDoW1NZGeehenhAMVlS_46IFu5UHDF1PW9Ippk6FDPI0MwpjnNPlPmeNRHbl-u1r6FJWtk3jPiiGXj5ATv5-SgAAi-5BgGxymtc2DI0EekFNygKRgXXyd3PhbBEZ1yYgemaB9GR3DTD7kM2UliCCfQNw7EgzuYpAzmGhpyIEqardySYSL0AB151NtycEA91GXVnugo1y-nQpFMq1LDBdbF5pkGg8JKem8fqriHJMkf3UJwOKtiPKvTKuy6LwkCEE5hkQn1_WWwwUAeKoLK04.jpg?r=49e" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABYXxxs7JXHUdiBVb_4EwfSfWvrX-PwputCz_1thZEIt1mZc0-1N0Sr_zODgIHMDXm1YJcQZDD3XXNdgEaa3b8bvm1kJ2OEI8jqg.webp?r=934" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABf5P-bNcFTaN7Wjz1i0gpLFvZK4aDNhzCxmTAbU7rvReCFHA6ed1X83CsbuwXsAReGoSNw6AsYtf9ZhKdWx29bxClT31904QjbOedmSIH58nkN6Rq-b6L6ocySIbJn7hPsjUCLnluI1xKrnlGQH6Gop0DJMc0qq6bJyZgUKwYXSMyA1qedlv0iSM6RAji9U.jpg?r=417" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABf2X6LsmYD8hnmsdtJ9YRaofAnDhKMqIYHhamzHO0OFy0-WPJCSffni6bC8fmvMkYNtjB2U-pKZ7s6hmkgqrtTTtzcsZb1bzoVk12gtIaQrFXGqWzGxlVPs-sHL11lzjZlT9lyhavvKlO35TKxtRXT0N3InN1c5alHP6McYTvUE_dZTMCAn0Tv9JFYSfSZnnLSd_CCZZDOUgD0EOHx0amI-xNEARYZMLYtLa30Apb2MP8WYZ4VUhxIZCqFPgOnivu0hJ3b7vVdi-Lp5IN8uBQigIuwrrydtE46xVOPN0NChiLvkMvsKwHu9OxstKJDkxG2ZaJI2znwWiJ9FOR3A446TksjhpJ0cpGlEmO1HFLKhP5xIMYVzu2rThvTq1t2PqEF1-R8C1V5-pg06Cl0gPX1laHf-yQl28uf45KONYHTLoP8SDSfNjvVI4FBpWfZ7yvagmVTBs.webp?r=201" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABV08tzzBECoGzWYxiK-0s9itsh8rPSXXmDPa9Sh-816BOey-xSUfIF_Oy60LeajC21Z0b_uvXmNyXxiaVEzHbYt7hR6XDR_xAMrtgwEZ3VwdXYyKR-U2mjb0d_VLZ6CSDbawsfYJR1RLqccYs5pgE1-A7IojboZriS3lXpfYAgTG5vUFL0qxBDd-tZtK7aT46t_w95JOvczWdYbXJJP2PON2eDw9mQfQPrGY3N-8Kg5-0vs4JBXgRPwsPpgK7xUFmvNHQ9Eg6vokOdStMb5JQ0fD0j872x9zYTBm_iLavz7dJRD6YEtLea9ofF8yru0NsDGUhivpypFJJtjudlxO3cibvvTJx8UvJ2HXfuUyB6pNv3kV5akyZ9qUB5SuC25D7JJ6TivFeBCQJ2Y5FLHjSsTs4oE0euQRdsxNp7e7usjf2tUxLaq7iLCxhQ0v1Lr4WvV9WJr6a4fDt1CrlW_c-YRd4KYXNP24YPcKpmfeN9IDblvBMhnDt2RY5jPm9fh-AHA.webp?r=176" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQuK1JxUvL_JK22fCmNRYp8Ppn8B45zkaq8W8-_LjdpX-v0Pz6OZ7VYwOgfpbsPVC_7SNLnA--1q2EfST8HsRfm-BSNt1EMyt9s.webp?r=98d" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABSoXkdmqminN2X6mOtMGr8chTOB2XK5dP97oPu_a4elgs3Q_fhnSsa_swwUYYQeRxt2xFmLiPQy07hZww79FgCF0Q66qje2rUMU.webp?r=0a9" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABXVmvTu1c85WRA9D821YmTkranUGg2N1wLrX_NlL3HK6ymPqWRdMRda4hjletCJWG0ZsBmEZhUW95q_FuwJlNFwnsMhd-0xRVxI.webp?r=f73" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABcOHJgKneS2V1Nj8bUMRe1-K8EsRIDxgTFHCy12ctWPBODKqyILQsK9sQksELMZqsj-YDqUxZYJ-kkIyFGNR6NgzPC_7tEZKEy4.webp?r=c40" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample5" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample5" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	<div class="carousel-category">다시보기 추천 콘텐츠</div>
	<div id="carouselExample6" class="carousel slide" data-bs-interval="false">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	     <div class="carousel-item active">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABfueDgRSSKb8e73W5swJkGHTN70L0EMIHohO08HhVB6puQ6olcNeYa2SjNpzsvQtimCmUnlswLgVpQ6pJOs7WHKhliO4qVECZoU.webp?r=4ac" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABfbqGcl5QMiA0yXZ1dau91UMXICLnD9m4nAX6H4aFau_ganarGhUXIctelw10GymgIjlPWVJT_RaIeR4yZGVIxv6mnZMXyqZjb0.webp?r=831" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABaXfhtqgWbbHeyNmqtJT-jMnmXrhzcHXzxOelsFTrARxMOgKXKpn51fDUoju9aOa5KmT2iMrycOCuH26YevH7FzAeIFzaY6N3L4.webp?r=f17" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABRDv8KYnmGSKLAa4gqcrt6wI8d5l-ivPwMp2AXu_yVhayvpa0AiiFi2qKGofJUFD6evvmeUnKL-IsMviLiemrTABJgzp5r00t44.webp?r=6bf" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABXu4kW8ZTdoCyxHF7neSmPN8zCRQ335V4qg2AAyI3JifkUubXAEwcsT3rvKTb44agqTFpJ24wRNAlUkx9s8eDYAOACKcJHLdPCM.webp?r=a84" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABRmGfOr8Vl4ThcLLZgZtQUmw9-S3CtjB-QLx86wkUg9tPSbTMSPdCe8gkifmWyDI0Op3Gq2BRiikfLdt4zpy-bJnSjnNvLOTiomW0GDXl0ZrQOrdwnAehsraO6I7kyfEnIAU.jpg?r=0e8" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABcsqC--Ke6JOQY3phosC8P9AJUGSiRfvHk2yUmCeUxYD3Iz83wtAl_BtYFqBvW2lGbZOEYoocGNDi4EHh9G9lyXIHOxPHdVM51Q.webp?r=87c" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQ3XpSUWOFrtkHJpow9e6xshdqjwNRnhGZ-ZbhA0lPNAgOQ_t8jjwgFh7hOsYnuC0QBgCibq0uNkTSgJlawWCfoKTzfDbqnXUpU.webp?r=54c" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABZshdAPFJDwgKSoTLTHxhy-HFWb_KvZ14enlFcjdPrXVjn_dlVavXjjrRWZMxSd8QOX6H5DIYT31ypOB8UK-1CEJjkMBGtrMc3Y.webp?r=ad9" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABbVmZl5JrLV1OW6Q6ASxoopq3k9yW3OAWqiJRv-ILodzuHKYHH6Iz3TYJh2kEazUqnV3HLl51e62J1lYkT6nop88fQuxUx-V958.webp?r=bea" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample6" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample6" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	<div class="carousel-category">한국 영화</div>
	<div id="carouselExample7" class="carousel slide" data-bs-interval="false">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	     <div class="carousel-item active">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABdYxot9OePkfu7aNinmuEqHwamughAyyrRbImTN0KN9A8SbtEqA4Buoj54PYx9yRZ3A-f-x-IL1bzxfwYSN_3Gcru6k2KMVmwxnW_lFMwmbKWgSpwKIbwxOEC4vUn-KQfuBE.jpg?r=3f8" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABRZyMHHWESmcpvewxZraxGiA038Q3e6JpN552pH6LI7UvpnJq5160L75QwOWIHiAG_Wr4L3ywZbeGS6whB8WJeNqYDH2Doi2wSs.webp?r=eae" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABeRm92nKh3PgRGakcazUIIRLhXb22xPFjmQrcsXVeCyVh8uwQLsCMkRaqGsaYYbs4EjKAFdmUnE7pDFv1MqJLomr6Xyj3crU_74.webp?r=ac0" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABdmbnlcy9L0izhBGjyoznMcoHwIMXaDiZ6U-4O3YFA7T6J6AU6FlxvtiO9kyGXwE_WNclfp1vwahf-9mh7qleIOnbhM4vQxeGH8.webp?r=c49" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABecg9fzDvw-FujnohXJHjQ7Tb-8meb5ZqS-OwpdrSRT3b_DW1EOZaMzVBHOLx686KFILXxj_5nLcjRpkw4AauffvpORVT510X64.webp?r=76a" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABT0mAIUI85Nevod1xu0sss7ScP-ZhrNCst1fVdEYf09c2HwZNzsqm83Hqx5rgXZwBD3Zu4ROPu1wNk2LG8kvAN4WUbJWhtzF058.webp?r=692" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABfBqwbo7_4TaT4nhzjZwVpzNzo9B3aQWXeLSWVd3jAeVu3oxzCJLWRe_rItFH1rON7oIjX6fbise-HtwsKk36hpo8yjsUFDHs4U.webp?r=88d" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABaPb5kdrfoxR--U5plCx6hzg4V1nOUoFpS7rEGS2icl8PU5I-kGyTyPFiW0GeKmBoFsYCu2mHfX-TJOrnecY3e1TjOYRxd9JAUQ.webp?r=16e" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABSCeTg8qaoPI5D0onb-GzHk07g8Ev9QBllx5A_ybFY_ystu894UmGZ-ZBg2JD-fb9FIVnshtIFQPJNAb_8y54fSyJ4Dw4t1aKqk.webp?r=52e" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABcn4zL2i8VUAppssvmEKtNBLTlbTNHZ9ODUwAe8-GtS0_UzGjCq3GyacdB_TTXUj_sfYtIyrs0NoIxgkgW7Ljh5BdDC9sPF5Gqk.webp?r=7e7" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	     <div class="carousel-item">
	      <div class="row">
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABUvHGPUqBVq2YPQV9LtQdK76RBwfQM_Dp3bJphHtRB8PpOKdKTGkPm7Ri_8aZxah91fUadQLQak53GYtBf_BXjA8TuWBDHpFwWs.webp?r=4ca" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABc-FNR92nF1AVQ_ZDSVXlmhZdoJQAhqOYmTaxJTQpgaJ5giVnQpeTiksgqzodJhYJdJVNtJ1rqxyDxvd1Fn7N93G2pO1arR_W3g.webp?r=677" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABZWBEgF4Q7heC7HSE8LJSfcm1q4Accu_y_u6PtZNrojERSYEfJQDHPL3qd-wkz1uzy39l6Vbq-NV2dq_CqYVvfyvEGsc-PYm8qU.webp?r=78d" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABZXoEpBgau3ZS4z0liYJMH1E-Qy9WB-QObsO-WDZhxk1IfuRmvxKiPWJG6zi534bOcJc-r08MZ2bs-olTLWRvVBLvpNbh_Z1fMdYsxPZXuYTvj22hwgPOxI2_ZiITqkkjgrD.jpg?r=a14" class="d-block w-100" alt="...">
	         </div>
	         <div class="col">
	            <img src="https://occ-0-4796-993.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABcKgAwqN_VdPA9fCcvCVgU3Ubxh9xsmU9iwHYqyZ304Yc1JvS5OHkbwDotW9CihQRfotee4k_bjkHqWfsS_cF4xFv8DpLnh1b-A.webp?r=704" class="d-block w-100" alt="...">
	         </div>
	      </div>
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample7" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample7" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	</div>
	<!-- Modal -->
	<div class="modal fade dark-mode" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <!-- <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">동영상 제목</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div> -->
            <div class="modal-body">
                <iframe id="videoFrame" width="100%" height="315" src="" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
      </div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="../js/home.js"></script>
<script type="text/javascript" src="../js/watch.js"></script>

<jsp:include page="../user/footer.jsp" />
</body>
</html>