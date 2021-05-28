package com.finalproj.missingitnow.common.page;

public class Pagenation {

	
	public static PageInfoDTO getPageInfo(int pageNo, int totalCount, int limit, int buttonAmount) {
		
		int maxPage;
		int startPage;
		int endPage;
		int startRow;
		int endRow;
		
		/* 총 페이지수 계산 */
		maxPage =(int)Math.ceil((double)totalCount / limit);
		
		if(pageNo > maxPage) {
			
			if(maxPage == 0) {
				
			} else {
				
				pageNo = maxPage;
				
			}
			
		}
		
		
		/* 현재 페이지에 보여줄 시작 페이지 수 */
		startPage = (int)(Math.ceil((double) pageNo/buttonAmount)-1)*buttonAmount+1;
		
		/* 현재 페이지에 보여줄 마지막 페이지 수 */
		endPage = startPage + buttonAmount - 1;
		
		
		/* max 페이지가 더 작은 경우 마지막 페이지가 max 페이지 */
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		if(maxPage == 0 && endPage == 0) {
			maxPage = startPage;
			endPage = startPage;
			
		}
		
		/* DB에서 조회 할 시작 번호와 마지막 행 번호를 계산 */
		startRow = (pageNo - 1) * limit + 1;
		endRow = startRow + limit - 1;
		
		
		
		System.out.println("시작열 : " + startRow);
		System.out.println("종료열 : " + endRow);
		
		if(endRow > totalCount) {
			
			endRow = totalCount;
			
		}
		
		PageInfoDTO pageInfo = new PageInfoDTO(pageNo, totalCount, limit, buttonAmount, maxPage, startPage, endPage, startRow, endRow);
		
		
		return pageInfo;
	}
	
}
