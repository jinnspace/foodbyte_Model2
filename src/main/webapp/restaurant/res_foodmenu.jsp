<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/restaurant/res_header.jsp"%>
<%@ include file="/restaurant/res_subhead.jsp"%>
<!-- RestaurantVO, FoodmenuList, ReviewList-->
    <div id="res_tab">
        <div class="res_infotab" style="color:white;">메뉴</div>
        <div class="res_infotab" onclick="location.href='res_foodmenuAdd'">
        메뉴 추가</div>
    </div>
    <div id="res_menuall">
        <div id="res_menuinfo">
        	<c:forEach items="${FoodList}" var="FoodmenuVO">
             <div id="res_menu">	                	
                 	<h3>${FoodmenuVO.fname }
                 		<img id="res_menu_icon" src="images/update.png" onClick="location.href='fooba.do?command=res_foodmenuUpdateForm&fseq=${FoodmenuVO.fseq}'">	 
                 		<img id="res_menu_icon" src="images/delete.png" onClick="deletefm(${FoodmenuVO.fseq})">	                    
                 	</h3>
                 			  
                 <div class="grayyy">${FoodmenuVO.fcontent }</div><br>
	             <div class="menugaguk">${FoodmenuVO.fprice}원</div>
                 <img class="res_meima" src="images/foodmenu/${FoodmenuVO.fimage}">
             </div>
            </c:forEach>
        </div>
    </div>
</div>

<%@ include file="/restaurant/res_footer.jsp"%>