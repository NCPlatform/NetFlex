<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <header>
      <a href="/NetFlex/movie/home"><img src="/NetFlex/asset/image/netflex.png"></a>
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
                <a class="nav-link" href="/NetFlex/movie/home">홈</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/NetFlex/movie/series">시리즈</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/NetFlex/movie/movie">영화</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" onclick="alert('준비중입니다');">NEW! 요즘 대세 콘텐츠</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/NetFlex/movie/dibsList">내가 찜한 리스트</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

        <ul class="menu-icons">
        
           <!-- 검색 칸 -->
         <div id="searchBox" class="search-box">
             <input id="searchBoxInput" type="text" placeholder="제목, 사람, 장르">
         </div>
          <li>
            <button class="btn btn-dark">
              <img src="/NetFlex/asset/image/search.png" class="icons" id="searchIcon">
            </button>
          </li>
          <li>
            <button class="btn btn-dark">
              <img src="/NetFlex/asset/image/species.png" class="icons">
            </button>
          </li>
          <li>
            <button class="btn btn-dark" id="logout">
              로그아웃
            </button>
          </li>
      </ul>
   </header>