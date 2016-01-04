<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 14-10-29
  Time: 下午1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>社区首页</title>
<jsp:include page="/jsp/public/init.jsp" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/slider.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="/jsp/public/header.jsp" />
		<script type="text/javascript">
			$(".nav ul li:eq(3)").addClass("nav_selected").find("a").addClass(
					"nav_selected_a").parent().siblings().removeClass(
					"nav_selected").find("a").removeClass("nav_selected_a");
		</script>
		<div class="inner clearfix">
			<!-- 热播佳片与热评影片 -->
			<div class="com_hot_moive_nav moiveNav" style="margin-bottom: 20px">
				<a href="javascript:void(0)" class="selected">热播佳片</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="javascript:void(0)">经典影片</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="${pageContext.request.contextPath}/jsp/Community/SeachMoive.jsp">查询更多影片>></a>
			</div>
			<div class="first_nav">
				<div id="hot_play">
					<a>
						<div class="page last_page play_pre"></div>
						<div class="page next_page play_next"></div>
					</a>
					<div class="com_hot_moive_list hot_play_list"
						style="position: relative;width:1060px;height: 311px;overflow:hidden;margin-left: 20px">
						<ul class="clearfix" style="width:3230px;left:0">
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/zoudaodi_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">走到底</span>（2001）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div id="hot_com" style="display: none">
					<a>
						<div class="page last_page com_pre"></div>
						<div class="page next_page com_next"></div>
					</a>
					<div class="com_hot_moive_list hot_com_list"
						style="position: relative;width:1060px;height: 311px;overflow:hidden;margin-left: 20px">
						<ul class="clearfix" style="width:3230px;left:0">
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/zoudaodi_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">走到底</span>（2001）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
							<li>
								<div style="padding: 5px">
									<div>
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
									</div>
									<div class="hoverBlue" style="padding-left:10px">
										<a href="#"> <span class="bold">落叶归根</span>（2006）
										</a><span class="bold green">7.1</span>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				//            $(".com_hot_moive_nav a").each(function(index,value){
				//                value.onclick = function(){
				//                    $(this).addClass("selected").siblings().removeClass("selected");
				//                    selectBox(index);
				//                }
				//            });
				//
				//            function selectBox(index){
				//                var select =  $(".first_nav>div:eq("+(index)+")");
				//                select.show().fadeIn().siblings().hide();
				//            }
			</script>
			<!-- 热门影评 -->
			<div class="com_hot_com">
				<div class="moiveNav"
					style="width:100%;border-bottom:1px solid #eeeeee">
					<a href="javascript:void(0)" class="orange">热门影评</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<%--<a href="javascript:void(0)">最新影评</a>&nbsp;&nbsp;&nbsp;&nbsp;--%>
					<a
						href="${pageContext.request.contextPath}/jsp/Community/MoiveCommentUI.jsp">更多影评>></a>
				</div>
				<div id="selectBox" style="width:100%;">
					<div class="Comment HotestComment">
						<ul>
							<li>
								<div class="clearfix">
									<div class="floatLeft">
										<div>
											<h3>1</h3>
										</div>
										<img src="${pageContext.request.contextPath}/images/ren1.gif" />
									</div>
									<div class="floatCenter">
										<div>“</div>
										<h3>
											<a
												href="${pageContext.request.contextPath}/jsp/Community/MoiveCommentDetail.jsp">To
												Knowledge</a>
										</h3>
										<ul class="clearfix" style="margin-top: 5px">
											<li><a href="#">lihaoahil</a></li>
											<li>评</li>
											<li><a href="#">《超体》</a></li>
											<li>2014-11-2</li>
										</ul>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这个电影我看了两遍我会乱说吗。。第一遍旁边坐了一个逗比每分钟几十个吐槽我眼...</p>
									</div>
									<%--<div class="floatRight">--%>
									<%--<img src="${pageContext.request.contextPath}/images/m4.png"/>--%>
									<%--</div>--%>
								</div>
							</li>
							<li>
								<div class="clearfix">
									<div class="floatLeft">
										<div>
											<h3>2</h3>
										</div>
										<img src="${pageContext.request.contextPath}/images/ren2.gif" />
									</div>
									<div class="floatCenter">
										<div>“</div>
										<h3>
											<a href="#">近几年甄子丹唯一能拿得出的电影</a>
										</h3>
										<ul class="clearfix" style="margin-top: 5px">
											<li><a href="#">ILM</a></li>
											<li>评</li>
											<li><a href="#">《一个人的武林》</a></li>
											<li>2014-11-2</li>
										</ul>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实在受不了这些连看都没看过就打一星，或者带着黑某人的情绪在打分的影迷了。现在中国...</p>
									</div>
								</div>
							</li>
							<li>
								<div class="clearfix">
									<div class="floatLeft">
										<div>
											<h3>3</h3>
										</div>
										<img src="${pageContext.request.contextPath}/images/ren3.gif" />
									</div>
									<div class="floatCenter">
										<div>“</div>
										<h3>
											<a href="#">这不是变态，这是婚姻的残酷真相</a>
										</h3>
										<ul class="clearfix" style="margin-top: 5px">
											<li><a href="#">旺仔少女...</a></li>
											<li>评</li>
											<li><a href="#">《消失的爱人》</a></li>
											<li>2014-11-2</li>
										</ul>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;之前看完预告片后，我同学说，这有什么好看的，肯定是他老公杀的啊。我说，不会吧，如果这么简单，芬奇就不会拍了。
											人性，生活，都没那么简单，何况电影...</p>
									</div>
								</div>
							</li>
							<li>
								<div class="clearfix">
									<div class="floatLeft">
										<div>
											<h3>4</h3>
										</div>
										<img src="${pageContext.request.contextPath}/images/ren4.jpg" />
									</div>
									<div class="floatCenter">
										<div>“</div>
										<h3>
											<a href="#"> 都知道这是个刷脸的社会可是你们为...</a>
										</h3>
										<ul class="clearfix" style="margin-top: 5px">
											<li><a href="#">南瓜国王... </a></li>
											<li>评</li>
											<li><a href="#">《忍者神龟：...</a></li>
											<li>2014-11-2</li>
										</ul>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;毁童年那！！！！
											大美妞开始又是闪亮登场，然后又是偶然发现了海龟们。。。。大姐，变形金刚您都玩过了，就别装惊...</p>
									</div>
								</div>
							</li>
						</ul>

					</div>
				</div>
			</div>
			<%--<script type="text/javascript">--%>
			<%--$(".com_hot_moive_nav a").each(function(index,value){--%>
			<%--value.onclick = function(){--%>
			<%--$(this).addClass("selected").siblings().removeClass("selected");--%>
			<%--selectBox(index);--%>
			<%--}--%>
			<%--});--%>

			<%--function selectBox(index){--%>
			<%--var select =  $("#selectBox>div:eq("+(index)+")");--%>
			<%--console.log(select.attr("class"));--%>
			<%--select.show().find(".box").show().fadeIn();--%>
			<%--select.siblings().hide().find(".box").hide();--%>
			<%--}--%>
			<%--</script>--%>
		</div>

		<jsp:include page="/jsp/public/footer.jsp" />
	</div>



</body>
</html>
