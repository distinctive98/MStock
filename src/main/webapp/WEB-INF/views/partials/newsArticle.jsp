<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- chart.js 주식 차트 -->
<script>
var d = new Date();
var day = d.getDate();
var month = (1 + d.getMonth());
month = month >= 10 ? month : '0' + month;
day = day >= 10 ? day : '0' + day;
/* 오늘 yyyy-mm-dd  */
var today = d.getFullYear()+ "-"+ month+ "-" + day;

var crawlingNews = function(){$.getJSON('/mstock/resources/json/'+today+'.json', function(data) {

				var news = [];
					
				$.each(data,function(key,value) {
							if(value.code=="<%=request.getParameter("code")%>"){
										news.push(value.newsRecode);
							}
				});
					   
				var article;
				for(var i=0;i<10;i++){
					article = "<tr class='check' data-toggle='modal' data-id='"+i+"' data-target='#newsInfo'><td>"+news[0][i].title+"</td><td>"+news[0][i].press+"</td><td>"+news[0][i].time+"</td></tr>";
					
					$("#appendArticle").append(article);
				}
				
				$(document).ready(function(){
					$("#article").on("click",".check",function () {
					    var index=$(this).attr('data-id');
					    $("#NewsTitle").text(news[0][index].title);
					    $("#NewsContent").text(news[0][index].content);
					    $("#newsInfo").modal("show");
					});
				});
				});
};
</script>
