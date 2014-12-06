<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>影院首页</title>
<jsp:include page="/jsp/public/init.jsp" />
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/TheaterHomeJS.js"></script>
</head>
<body>

	<div class="container">
		<jsp:include page="/jsp/public/header.jsp" />
		<script type="text/javascript">
			$(".nav ul li:eq(1)").addClass("nav_selected").find("a").addClass(
					"nav_selected_a").parent().siblings().removeClass(
					"nav_selected").find("a").removeClass("nav_selected_a");
		</script>
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
								<h1>
									<a class="white" href="#" style="font-family: '黑体'">标题</a>
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
		<div style="background-color: #ffffff;position: relative;top:-50px">
			<div class="inner clearfix" style="padding-top:70px;">
				<div class="search" style="margin-bottom: 20px">
					<div class="school_select_nav city_search"
						style="width:800px;margin: 0 auto">
						<ul class="clearfix">
							<li><a href="javascript:void(0)" id="city"
								style=" text-decoration: underline;">切换城市</a>&nbsp;&nbsp;<span
								id="cityName" class="font14">湛江</span>
								<div class="select_icon">
									<div class="selectNav">
										<ul class="clearfix">
											<li class="border_bottom"><a
												href="javascript:getCity('a')">热门</a></li>
											<li><a href="javascript:getCity('a')">A-G</a></li>
											<li><a href="javascript:getCity('h')">H-L</a></li>
											<li><a href="javascript:getCity('m')">M-T</a></li>
											<li><a href="javascript:getCity('w')">W-Z</a></li>
										</ul>
									</div>
									<div class="selectOne">
										<ul class="clearfix" id="areas">
											<c:forEach items="${cinemas }" var="cinema">
												<li><a href="javascript:void(0)">${cinema.address }
												</a></li>
											</c:forEach>
											<%-- <s:iterator value="%{#areas}" var="a">
												<li><a href="javascript:void(0)"><s:property
															value="#a.name"></s:property> </a></li>
												<li><a href="javascript:void(0)">湛江</a></li>
											</s:iterator> --%>
										</ul>
									</div>
								</div></li>
							<li style="  padding: 17px 0 0 0;">选择影片</li>
							<li style="position: relative">
								<div id="movName">
									<span class="font14" id="moive">影片</span><span class="arrorw2"></span>
								</div>
								<div class="select_icon" id="select_moive_icon">
									<%--<div class="selectNav">--%>
									<%--<ul class="clearfix">--%>
									<%--<li class="border_bottom"><a href="#">热门</a></li>--%>
									<%--<li><a href="#">A-G</a></li>--%>
									<%--<li><a href="#">H-L</a></li>--%>
									<%--<li><a href="#">M-T</a></li>--%>
									<%--<li><a href="#">W-Z</a></li>--%>
									<%--</ul>--%>
									<%--</div>--%>
									<%--<script type="text/javascript">--%>
									<%--function movie(id) {--%>
									<%--//                                alert(id);--%>
									<%--//                                alert($("#"+id+"mov").html());--%>
									<%--var inner = $("#"+id+"mov").html();--%>
									<%--$("#movName").empty();--%>
									<%--$("#movName").append($("<span class='font14'>"+inner+"</span><span class='arrorw2' ></span>"));--%>
									<%--//                               alert( $("a[name='movieInner']").html());--%>
									<%--}--%>
									<%--</script>--%>
									<div class="selectMoive">

										<ul class="clearfix">
											<c:forEach items="${onNowMovies }" var="movie">
												<li><span style="display:none" class="moiveId">${movie.id }</span>
													<a data="moive" id="${movie.id }mov"
													href="javascript:movie(${movie.id })">${movie.name } </a><span
													class="floatRight bold green">${movie.popularity}</span></li>
											</c:forEach>
											<%-- <s:iterator value="%{#currentMovie}" var="cm">
												<li><span style="display:none" class="moiveId"><s:property
															value='#cm.id'></s:property></span> <a data="moive"
													id="<s:property value='#cm.id'></s:property>mov"
													href="javascript:movie(<s:property value='#cm.id'></s:property>)"><s:property
															value="#cm.movieName"></s:property> </a><span
													class="floatRight bold green"><s:property
															value="%{#cm.score*2}"></s:property></span></li>
												<li><a href="javascript:void(0)">银河护卫队</a><span class="floatRight bold green">7.0</span></li>
												<li><a href="javascript:void(0)">移动迷宫</a><span class="floatRight bold green">7.0</span></li>
												<li><a href="javascript:void(0)">宇宙之子</a><span class="floatRight bold green">7.0</span></li>
												<li><a href="javascript:void(0)">心花路放</a><span class="floatRight bold green">7.0</span></li>
												<li><a href="javascript:void(0)">不能说的夏天</a><span class="floatRight bold green">7.0</span></li>
											</s:iterator> --%>

										</ul>
									</div>
								</div>
							</li>
							<li style="position: relative">
								<div id="theater">
									<span id="TheaterName" class="font14">影院</span><span
										class="arrorw2"></span>
								</div>
								<div class="select_icon" style="width:500px">
									<%--<div class="selectNav">--%>
									<%--<ul class="clearfix">--%>
									<%--<li class="border_bottom"><a href="#">热门</a></li>--%>
									<%--<li><a href="#">霞山区</a></li>--%>
									<%--<li><a href="#">赤坎区</a></li>--%>
									<%--</ul>--%>
									<%--</div>--%>
									<div class="selectCinema">

										<ul class="clearfix">
											<c:forEach items="${cinemas }" var="cinema">
												<li><a>${cinema.name }</a></li>
											</c:forEach>
											<%-- <s:iterator value="%{#zhanjiang}" var="ar">
												<li><span class="green"><s:property
															value="#ar.name" /> </span> <s:iterator value="%{#ar.theaters}"
														var="theater">
														<a><s:property value="#theater.theaterName" /> </a>
														<a>湛江金影电影城</a>
														<a>湛江上影影城</a>
														<a>湛江横店电影城</a>
													</s:iterator></li>
											</s:iterator> --%>
											<%--<li>--%>
											<%--<span  class="green">霞山区</span>--%>
											<%--<a>金逸湛江霞山店</a>--%>
											<%--<a>中影国际影城湛江店</a>--%>
											<%--<a>湛江市荣基国际影城</a>--%>
											<%--</li>--%>
										</ul>
									</div>
								</div>
							</li>
							<li style="position: relative">
								<div id="time">
									<span class="font14">选时间</span><span class="arrorw2"></span>
								</div>
								<div class="select_icon" style="width:500px;padding:0">
									<div>
										<div class="select_date">
											<dl>
												<dd>今天（11月7日）</dd>
											</dl>
										</div>
										<div class="select_time">
											<ul>
												<li><a href="#" target="_blank"> <span class="time">12:20</span>
														<span class="ting">3D.2号厅</span> <span class="mprice">￥30</span>
														<span class="yprice">￥40</span> <span class="button">选座购票</span>
												</a></li>
												<li><a href="#" target="_blank"> <span class="time">12:20</span>
														<span class="ting">3D.2号厅</span> <span class="mprice">￥30</span>
														<span class="yprice">￥40</span> <span class="button">选座购票</span>
												</a></li>
												<li><a href="#" target="_blank"> <span class="time">12:20</span>
														<span class="ting">3D.2号厅</span> <span class="mprice">￥30</span>
														<span class="yprice">￥40</span> <span class="button">选座购票</span>
												</a></li>
												<li><a href="#" target="_blank"> <span class="time">12:20</span>
														<span class="ting">3D.2号厅</span> <span class="mprice">￥30</span>
														<span class="yprice">￥40</span> <span class="button">选座购票</span>
												</a></li>
												<li><a href="#" target="_blank"> <span class="time">12:20</span>
														<span class="ting">3D.2号厅</span> <span class="mprice">￥30</span>
														<span class="yprice">￥40</span> <span class="button">选座购票</span>
												</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="clearfix">
					<div class="leftBox">
						<div id="nowMoive">
							<div class="moiveNav">
								<span>正在上映</span>&nbsp;&nbsp;&nbsp;&nbsp;
								<ul class="clearfix" style="display: inline-block;">
									<li><a href="#">全部</a>&nbsp;&nbsp;|</li>
									<li><a href="#">动作</a>&nbsp;&nbsp;|</li>
									<li><a href="#">爱情</a>&nbsp;&nbsp;|</li>
									<li><a href="#">喜剧</a>&nbsp;&nbsp;|</li>
									<li><a href="#">冒险</a>&nbsp;&nbsp;|</li>
									<li><a href="#">科幻</a>&nbsp;&nbsp;|</li>
									<li><a href="#">悬疑</a>&nbsp;&nbsp;|</li>
								</ul>
							</div>
							<div class="moiveList THmoiveList">
								<ul class="clearfix">
									<c:forEach items="${onNowMovies }" var="movie">
										<li>
											<div class="clearfix" style="width:320px;position: relative;">
												<div class="moiveImg floatLeft">
													<a
														href="${pageContext.request.contextPath}/jsp/Theater/MovieDetail.jsp">
														<img
														src="${pageContext.request.contextPath}/upload/${movie.image }" />
													</a>
												</div>
												<div class="moiveInfo floatLeft"
													style="padding: 5px 0 5px 8px;">
													<ul>
														<li><h3>
																<a href="#">${movie.name } </a>
															</h3>&nbsp;<span>${movie.popularity }</span></li>
														<li>导演：${movie.director }</li>
														<li>类型：${movie.type }</li>
														<li>时长：${movie.runtime }</li>
														<li>主演：${movie.castActor }</li>
														<li><a class="button" style="color: #ffffff"
															href="${pageContext.request.contextPath}/jsp/home/SelectSeatUI.jsp">选座购票</a></li>
													</ul>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							<div class="uploadMore">显示全部影片</div>
						</div>
						<br />
						<div id="laterMoive">
							<div class="moiveNav">
								<span>即将上映</span>&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<div class="moiveList THmoiveList">
								<ul class="clearfix">
									<c:forEach items="${comingSoonMovies }" var="movie">
										<li>
											<div class="clearfix" style="width:320px;position: relative;">
												<div class="moiveImg floatLeft">
													<a href="#"><img
														src="${pageContext.request.contextPath}/upload/${movie.image } " /></a>
												</div>
												<div class="moiveInfo floatLeft"
													style="padding: 5px 0 5px 8px;">
													<ul>
														<li><h3>
																<a href="#">${movie.name } </a>
															</h3></li>
														<li>首映：${movie.showtime }</li>
														<li>导演：${movie.director }</li>
														<li>时长：${movie.runtime }</li>
														<li>主演：${movie.castActor }</li>
														<li><div>
																<a href="#">[查看影讯]</a>
															</div></li>
													</ul>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							<div class="uploadMore">显示全部影片</div>
						</div>
					</div>
					<div class="rightBox">
						<div>
							<div class="moiveNav">
								<span>上周热度排行榜</span>
							</div>
							<table class="hotRankTable" cellspacing="7px">
								<tbody>
									<c:forEach items="${comingSoonMovies }" var="movie">
										<tr>
											<td>${1 }.&nbsp;&nbsp;</td>
											<td><a href="#">${movie.name }&nbsp;&nbsp;&nbsp;&nbsp;<span>${movie.popularity }</span></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div>
							<div class="moiveNav">
								<span>新片影评</span>&nbsp;&nbsp;&nbsp; <a href="#"
									style="font-weight: normal">查看更多影评>></a>
							</div>
							<div class="newMoiveComment">
								<ul>
									<c:forEach items="${comments }" var="comment">
										<li>
											<p>${comment.moviename }</p> <span>${10 } 条评论</span>
										</li>
									</c:forEach>
								</ul>
							</div>
							<table class="theaterList"></table>
						</div>
					</div>
				</div>
				<div class="allTheater">
					<div class="moiveNav">
						<span><span style="font-weight: bold">湛江</span> 电影院</span>&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<div class="all-theaterList">
						<div>
							<div class="all-theaterList_nav">
								<ul class="clearfix">
									<li>区域：</li>
									<li class="hasSelected">全部</li>
									<li>霞山区</li>
									<li>赤坎区</li>
									<li>徐闻县</li>
									<li>雷州市</li>
									<li>廉江市</li>
								</ul>
							</div>
							<br />
							<div class="all-theaterList_nav">
								<ul class="clearfix">
									<li>排序：</li>
									<li class="hasSelected">默认</li>
									<li>电影院收藏量</li>
								</ul>
							</div>
						</div>
						<div class="all-theaterList-show">
							<ul>
								<c:forEach items="${cinemas }" var="cinema">
									<li>
										<div class="single_theater clearfix">
											<div class="thphoto">
												<a
													href="${pageContext.request.contextPath}/jsp/Theater/TheaterDetail.jsp"><img
													src="${pageContext.request.contextPath}/imgs/cinema.jpg" /></a>
											</div>
											<div style="width:50%;">
												<ul>
													<li class="clearfix"><div class="floatLeft">
															<a
																href="${pageContext.request.contextPath}/jsp/Theater/TheaterDetail.jsp">${cinema.name }
															</a>&nbsp;&nbsp; ${0 } 人收藏
														</div></li>
													<li>详细地址：${cinema.address }</li>
													<li>联系电话：${cinema.phone }</li>
												</ul>
											</div>
											<div class="select_theater">
												<div>
													评分：<span>${9.0 } </span>
												</div>
												<br />
												<div class="button">选座购票</div>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/jsp/public/footer.jsp" />
	</div>
</body>
</html>
