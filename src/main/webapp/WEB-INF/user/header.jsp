<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="../css/head.css">
</head>
<body>
   <header>
      <a href="/NetFlex/user/home"><img src="../asset/img/netflex.png"></a>
      <nav class="navbar navbar-expand-lg bg-dark-body-tertiary">
        <div class="container-fluid">
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              메뉴
              </a>
          </button>
          
          <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" href="">홈</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/NetFlex/user/series">시리즈</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/NetFlex/user/movie">영화</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/NetFlex/user/newContents">NEW! 요즘 대세 콘텐츠</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/NetFlex/user/dibsList">내가 찜한 리스트</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

        <ul class="menu-icons">
        
           <!-- 검색 칸 -->
         <div id="searchBox" class="search-box">
             <input type="text" placeholder="검색어를 입력하세요">
         </div>
          <li>
            <button class="btn btn-dark">
              <img src="../asset/img/search.png" class="icons" id="searchIcon">
            </button>
          </li>
          <li>
            <button class="btn btn-dark">
              <img src="../asset/img/species.png" class="icons">
            </button>
          </li>
          <li>
            <button class="btn btn-dark">
              <img src="../asset/img/profil01.png" class="icons">
            </button>
          </li>
      </ul>
   </header>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>   
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="../js/iconsearch.js"></script>
</body>
</html>