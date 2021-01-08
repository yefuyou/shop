<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="admin_menu.jsp" %>
    <title>用户菜单</title>
    <!--/sidebar-->
    <div class="main-wrap">

           
        <div class="result-wrap">
            <form action="/shop/manage/admin_douserdel" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="/shop/manage/admin_toproductadd"><i class="icon-font"></i>新增商品</a>
                     
                        <!--  a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a-->
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>ID</th>
                            <th>商品名称</th>
                            <th>操作</th>
                            
                        </tr>
                        
                          <c:forEach var="p" items="${plist }">
                        	<tr>
                        		<td>${p.PRODUCT_ID }</td>
                        		<td><img src="../images/product/${p.PRODUCT_FILENAME}" width="80" height="80">
                        			${p.PRODUCT_NAME }
                        		</td>
                        		<td>
                        			<a href="admin_toproductupdate?id=${p.PRODUCT_ID }">修改</a>
                        			
                        			 <a href="javascript:Delete('你确定要删除用户【${p.PRODUCT_NAME}】吗？','/shop/manage/admin_doprodel?id=${p.PRODUCT_ID}')">删除</a>
                        		</td>
                        	</tr>
                        	
	                    </c:forEach>
                       
                       
                       
                        <script>
                        function Delete(mess, url){
                        	if(confirm(mess)){
                        		location.href=url;
                        	}
                        }
                        
                     </script>
                    </table>
              
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>>