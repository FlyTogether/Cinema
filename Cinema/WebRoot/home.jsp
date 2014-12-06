<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>首页</title>
<jsp:include page="jsp/public/init.jsp" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/nivo-slider.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/light/light.css"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider();
	});
</script>
<style type="text/css">
.nivo-caption {
	position: absolute;
	bottom: 20px !important;
	color: #fff;
	left: 50% !important;
	margin: 0px 0px 30px -480px;
	/*padding: 0 !important;*/
	width: 1000px !important;
	height: 160px;
	z-index: 9985;
	display: block !important;
	opacity: 1 !important;
	/*background: url(/images/black.png) !important;*/
	padding: 10px 10px !important;
	border-radius: 8px;
}

.nivo-caption span {
	padding: 10px 0;
	display: block;
}

.nivo-caption a {
	border: none !important;
}
</style>
</head>
<body>
	<jsp:include page="jsp/public/header.jsp" />
	<script type="text/javascript">
		$(".nav ul li:eq(0)").addClass("nav_selected").find("a").addClass(
				"nav_selected_a").parent().siblings().removeClass(
				"nav_selected").find("a").removeClass("nav_selected_a");
	</script>
	<!-- Banner Start -->
	<div class="banner">

		<div class="slider-wrapper theme-light">
			<div id="slider" class="nivoSlider">
				<a href="#"><img style="width:100%;height: 100%"
					src="${pageContext.request.contextPath}/test/test.jpg"
					data-thumb="./images/banner/1.jpg" alt="" title="#banner0" /></a> <a
					href="#"><img style="width:100%;height: 100%"
					src="${pageContext.request.contextPath}/test/test1.jpg"
					data-thumb="./images/banner/1.jpg" alt="" title="#banner1" /></a> <a
					href="#"><img style="width:100%;height: 100%"
					src="${pageContext.request.contextPath}/test/test2.jpg"
					data-thumb="./images/banner/1.jpg" alt="" title="#banner2" /></a>
			</div>

			<div id="banner0" class="nivo-html-caption text">
				<div class="ban-capt-desc">
					<div class="ban-capt-mid">
						<div class="ban-capt-in">
							<!--<img src="./images/index_shadow.png" style="position:absolute;bottom:0;width:100%;height: 100%">-->
							<h1>
								<a class="white" href="#" style="font-family: '黑体'">标题 </a>
							</h1>
							<span style="display: inline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<a href="#"><span style="display: inline;line-height:23px;">内容
							</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="inner" style="padding-top:70px;">
		<div>
			<div class="moiveNav">
				<a href="javascript:void(0)" class="selected">正在热映</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="javascript:void(0)">即将上映</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="${pageContext.request.contextPath }/client/TheaterServlet"
					style="font-size: 15px;font-weight:normal;margin-top: 15px;">更多影片>></a>
			</div>
			<div class="moiveList indexMoiveList" id="nowMoive">
				<ul class="clearfix">
					<c:forEach items="${onNowMovies}" var="movie">
						<li>
							<div>
								<div class="moiveImg">
									<a href="#"> <img
										src="${pageContext.request.contextPath}/upload/${movie.image }" />
									</a>
								</div>
								<div>
									<p>${movie.name }</p>
								</div>
								<div>
									<a class="button"
										href="${pageContext.request.contextPath}/jsp/home/SelectSeatUI.jsp">
										选座购票 </a>
								</div>
							</div>
							<div class="tanchu">
								<div class="showinfo">
									<%--<em style="width:40px;height:40px;background:url(${pageContext.request.contextPath}/images/prev.gif) no-repeat 40px 0;position:absolute;top:125px;left:-45px;"></em>--%>
									<h3>露水红颜（2014）</h3>
									<h4 class="normal">For Love or Money</h4>
									<p>98分钟-爱情/剧情</p>
									<p>11月07日上映&nbsp;-&nbsp;10加影院上映64场</p>
								</div>
								<div
									style="border-top: 1px dotted silver;position:relative;padding:20px;text-align:left;">
									<em>“</em> 漂亮女生邢露，一个没落贵族的后代，只能像一个普通女孩一样飘泊。情动、邂逅、初恋、失恋，邢...
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="moiveList indexMoiveList" style="display: none"
				id="laterMoive">
				<ul class="clearfix">
					<c:forEach items="${comingSoonMovie}" var="movie">
						<li>
							<div>
								<div class="moiveImg">
									<a href="#"><img
										src="${pageContext.request.contextPath}/upload/${movie.image}" /></a>
								</div>
								<div>${movie.name }</div>
								<div>预计上映: ${movie.showtime }</div>
							</div>
							<div class="tanchu">
								<div class="showinfo">
									<%--<em style="width:40px;height:40px;background:url(${pageContext.request.contextPath}/images/prev.gif) no-repeat 40px 0;position:absolute;top:125px;left:-45px;"></em>--%>
									<h3>露水红颜（2014）</h3>
									<h4 class="normal">For Love or Money</h4>
									<p>98分钟-爱情/剧情</p>
									<p>11月07日上映&nbsp;-&nbsp;10加影院上映64场</p>
								</div>
								<div
									style="border-top: 1px dotted silver;position:relative;padding:20px;text-align:left;">
									<em>“</em> 漂亮女生邢露，一个没落贵族的后代，只能像一个普通女孩一样飘泊。情动、邂逅、初恋、失恋，邢...
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<script type="text/javascript">
				$(".indexMoiveList ul li .moiveImg").hover(
						function() {
							$(this).parent().parent().find(".tanchu").stop()
									.fadeIn("200");
						},
						function() {
							$(this).parent().parent().find(".tanchu").stop()
									.fadeOut("fast");
						});
			</script>
		</div>
		<script type="text/javascript">
			$(".moiveNav a:eq(0)").click(
					function() {
						$(this).addClass("selected").siblings().removeClass(
								"selected");
						$("#nowMoive").show().fadeIn();
						$("#laterMoive").hide();
					});
			$(".moiveNav a:eq(1)").click(
					function() {
						$(this).addClass("selected").siblings().removeClass(
								"selected");
						$("#nowMoive").hide();
						$("#laterMoive").show().fadeIn();
					});
		</script>
		<div class="clearfix" style="width:100%;">
			<div class="hotComment">
				<div class="hotCommentNav">
					<a href="#" class="selected">最新影评</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="${pageContext.request.contextPath}/jsp/Community/CommunityHome.jsp">更多影评>></a>
				</div>
				<div class="hotCommentList">
					<ul>
						<c:forEach items="${comments }" var="comment">
							<li>
								<div>
									<div style="font-size: 13px">
										用户：<a
											href="${pageContext.request.contextPath}/jsp/home/personal.jsp">${comment.username}
											</a>&nbsp;&nbsp;评论&nbsp;&nbsp;<a href="#">${comment.moviename} </a>
									</div>
									<div>
										&nbsp;&nbsp; &nbsp;&nbsp;
										${comment.content }
										<a href="#">[更多]</a>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

			</div>
			<div class="hotNews">
				<div class="hotNewsNav">
					<a href="#" class="selected">热门资讯</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="${pageContext.request.contextPath}/jsp/MovieNews/WanhuatongHome.jsp">更多资讯>></a>
				</div>
				<div class="hotNewsList">
					<ul>
						<%-- <s:iterator value="%{#movieNewses}" var="mns">
							<li>
								<div>
									<img
										src="${pageContext.request.contextPath}<s:property value="#mns.imagePath"></s:property>" />
								</div>
								<div>
									<h3>
										<a href="#"><s:property value="#mns.title"></s:property></a>
									</h3>
									<span><s:property value="#mns.content"></s:property><a
										href="#">[更多]</a></span>
								</div>
							</li>
						</s:iterator> --%>
						<li>
							<div>
								<img src="${pageContext.request.contextPath}/images/mnews2.png" />
							</div>
							<div>
								<h3>
									<a href="#">北美周五票房榜出炉</a>
								</h3>
								<span>低成本恐怖片《死亡占卜》登顶本周末北美票房榜，成为了环球影业、Blumhouse
									Pictures、还有迈克尔·贝的白金沙丘公司又一次以小博大的壮举。</span>
							</div>
						</li>
						<li>
							<div>
								<img src="${pageContext.request.contextPath}/images/mnews3.png" />
							</div>
							<div>
								<h3>
									<a href="#">"冬兵"回归《美队3》</a>
								</h3>
								<span>曾出演《美国队长》的男星塞巴斯蒂安·斯坦除了要准备回归《美国队长3》中的角色以外，还将参演《火星人》和《瑞克和闪电》。</span>
							</div>
						</li>
						<li>
							<div>
								<img src="${pageContext.request.contextPath}/images/mnews4.png" />
							</div>
							<div>
								<h3>
									<a href="#">"十二公民"罗马电影节夺冠</a>
								</h3>
								<span>中国电影《十二公民》在今天凌晨夺得罗马电影节
									“马可·奥列留”奖，成为该电影节首部摘取最高大奖的中国电影。影片由徐昂执导、何冰、韩童生等演员主演，根据经典影片《十二怒汉》改编，讲述一桩富二代弑父的奇特案件。</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<%--</div>--%>
	<jsp:include page="jsp/public/footer.jsp" />
</body>
</html>