package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Setter @Getter
public class Paging {
	private int currentPage; // 현재 페이지
	private int pageBlock; // 페이지를 몇페이지 단위로 만들건지
	private int pageSize; // 1페이지당 게시글 수
	private int totalA; // 총 글 수
	private StringBuffer pagingHTML;
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		int totalP = (totalA + pageSize - 1) / pageSize; // 총 페이지 수
		
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		
		if(endPage > totalP) // endPage가 totalP보다 크면 endPage를 totalP로 바꾸기
			endPage = totalP;
		
		pagingHTML.append("<div class='btn-toolbar' role='toolbar'>");
		
		pagingHTML.append("<div class='btn-group' role='group'>");
		if(startPage != 1) {
			pagingHTML.append("<button class='btn btn-light' id='paging' onclick='paging("+ (startPage-1) +")' >&lt;</button>");
		}else {
			pagingHTML.append("<button class='btn btn-light' id='paging' onclick='paging("+ (startPage-1) +")' disabled>&lt;</button>");
		}
		pagingHTML.append("</div>");
		
		pagingHTML.append("<div class='btn-group ms-2 me-2' role='group'>");
		
		for(int i=startPage; i<=endPage; i++) {
			
			if(i == currentPage) {
				pagingHTML.append("<button type='button' class='btn btn-success' id='currentPaging' onclick='paging(" + i + ")' disabled>" + i + "</button>");

			}else {
				pagingHTML.append("<button type='button' class='btn btn-light' id='paging' onclick='paging(" + i + ")'>" + i + "</button>");
			}
		}
		
		pagingHTML.append("</div>");
		
		pagingHTML.append("<div class='btn-group' role='group'>");
		if(endPage != totalP) {
			pagingHTML.append("<button class='btn btn-light' id='paging' onclick='paging("+ (endPage+1) +")'>&gt;</button>");
		}else {
			pagingHTML.append("<button class='btn btn-light' id='paging' onclick='paging("+ (endPage+1) +")' disabled>&gt;</button>");
		}
		pagingHTML.append("</div>");
		
		pagingHTML.append("</div>");
	}
}
