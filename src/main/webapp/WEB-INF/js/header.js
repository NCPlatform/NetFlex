var currentURL = window.location.href;

if (currentURL.includes("/home")) {
    // 홈 페이지에 있을 때의 처리
    document.getElementById('home').style.fontWeight = 'bold';
    document.getElementById('home').style.color = 'red';
    document.getElementById('series').style.fontWeight = 'normal';
    document.getElementById('movie').style.fontWeight = 'normal';
    document.getElementById('newContents').style.fontWeight = 'normal';
    document.getElementById('dibsList').style.fontWeight = 'normal';
} else if (currentURL.includes("/series")) {
    // 시리즈 페이지에 있을 때의 처리
    document.getElementById('home').style.fontWeight = 'normal';
    document.getElementById('series').style.fontWeight = 'bold';
    document.getElementById('series').style.color = 'red';
    document.getElementById('movie').style.fontWeight = 'normal';
    document.getElementById('newContents').style.fontWeight = 'normal';
    document.getElementById('dibsList').style.fontWeight = 'normal';
} else if (currentURL.includes("/movie")) {
    // 영화 페이지에 있을 때의 처리
    document.getElementById('home').style.fontWeight = 'normal';
    document.getElementById('series').style.fontWeight = 'normal';
    document.getElementById('movie').style.fontWeight = 'bold';
     document.getElementById('movie').style.color = 'red';
    document.getElementById('newContents').style.fontWeight = 'normal';
    document.getElementById('dibsList').style.fontWeight = 'normal';
} else if (currentURL.includes("/newContents")) {
    // new! 요즘 대세 콘텐츠 페이지에 있을 때의 처리
    document.getElementById('home').style.fontWeight = 'normal';
    document.getElementById('series').style.fontWeight = 'normal';
    document.getElementById('movie').style.fontWeight = 'normal';
    document.getElementById('newContents').style.fontWeight = 'bold';
    document.getElementById('newContents').style.color = 'red';
    document.getElementById('dibsList').style.fontWeight = 'normal';
} else if (currentURL.includes("/dibsList")) {
    // 내가 찜한 리스트 페이지에 있을 때의 처리
    document.getElementById('home').style.fontWeight = 'normal';
    document.getElementById('series').style.fontWeight = 'normal';
    document.getElementById('movie').style.fontWeight = 'normal';
    document.getElementById('newContents').style.fontWeight = 'normal';
    document.getElementById('dibsList').style.fontWeight = 'bold';
    document.getElementById('dibsList').style.color = 'red';
}