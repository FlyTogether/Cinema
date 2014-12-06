<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>影片详情</title>
<jsp:include
	page="${pageContext.request.contextPath}/jsp/public/init.jsp" />
<script src="${pageContext.request.contextPath}/js/swfobject.js"
	type="text/javascript"></script>

</head>
<body>
	<div class="container">
		<jsp:include
			page="${pageContext.request.contextPath}/jsp/public/header.jsp" />
		<div class="inner clearfix">
			<div class="MoiveDetailInfo" style="padding: 30px 40px 0 0;">
				<div class="floatLeft moivePhoto">
					<img
						src="${pageContext.request.contextPath}<s:property value='%{imagePath}'></s:property> " />
				</div>
				<div class="floatLeft MoiveDetail" style="width:80%">
					<ul>
						<%-- <li><s:property value="%{movieName}" />&nbsp;&nbsp;&nbsp;&nbsp;<span
							class="star${el:reverse(score*10)}"></span> --%>
						<span class="font20 normal red"><s:property
								value="%{score*2}"></s:property></span>
						</li>
						<li><span>导演：</span> <s:property value="%{director}" /></li>
						<li><span>主演：</span> <s:property value="%{actor}" /></li>
						<li><span>类型：</span> <s:property value="%{type}" /></li>
						<li><span>时长：</span> <s:property value="%{timeLength}" /></li>
						<li><span>制片国家：</span> <s:property value="%{area}" /></li>
						<li><span>上映日期：</span> <s:property value="%{realseTime}" /></li>
						<li><div class="button" style="background-color: #3377AA">收藏此片</div></li>
						<%--<li><span>剧情简介：</span> <s:property value="%{introduction}"/></li>--%>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="MoiveDetailNav">
				<ul class="clearfix">
					<li class="borderTop">影讯</li>
					<li>预告片/剧照</li>
					<li>上映影院</li>
					<li>更多影评</li>
				</ul>
			</div>
			<div id="all_tab">
				<!-- 影讯 -->
				<div class="single_tab">
					<h2>剧情简介</h2>
					<div style="line-height: 25px">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<s:property value="%{introduction}" />
					</div>
					<h2>
						<i>2</i>&nbsp;个预告片
					</h2>
					<div class="prevue">
						<ul class="clearfix">
							<li><a href="#" class="clearfix"> <img width='250'
									height='141'
									src="${pageContext.request.contextPath}/images/yh2.jpg">
									<div>
										<b></b> <i>02:18</i> <span>中文国际版预告片</span>
									</div>
							</a></li>
							<li><a href="#" class="clearfix"> <img width='250'
									height='141'
									src="${pageContext.request.contextPath}/images/yh1.jpg">
									<div>
										<b></b> <i>00:57</i> <span>中文版终极预告片</span>
									</div>
							</a></li>
						</ul>
					</div>
					<h2>
						<i>18</i>&nbsp;张剧照
					</h2>
					<div class="moive_photo" style="position: relative">
						<div class="last_screen">
							<i class="pho_prev"></i>
						</div>
						<div class="next_screen">
							<i class="pho_next"></i>
						</div>
						<ul class="clearfix">
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh_100X100.jpg">
							</a></li>
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh_100X100.jpg">
							</a></li>
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh_100X100.jpg">
							</a></li>
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh_100X100.jpg">
							</a></li>
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh1_100X100.jpg">
							</a></li>
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh1_100X100.jpg">
							</a></li>
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh1_100X100.jpg">
							</a></li>
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh1_100X100.jpg">
							</a></li>
							<li><a> <img width='100' height='100'
									src="${pageContext.request.contextPath}/images/yh1_100X100.jpg">
							</a></li>
						</ul>
					</div>
				</div>
				<!-- 预告片/剧照 -->
				<div class="single_tab" style="display: none">
					<%--<OBJECT>--%>
					<%--<embed src="http://static1.mtime.cn/static/flash/outplayer.swf?vid=48565&mid=206198" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="630px" height="378"> </embed>--%>
					<%--</OBJECT>--%>
					<%--<object width="900" height="507" autoactive="true" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="videoplayer" name="flashfirebug0">--%>
					<%--<param value="http://static1.mtime.cn/20141028063848/flash/newvideoplayer.swf?vid=50879&amp;autoplay=1&amp;w=900&amp;h=507" name="movie">--%>
					<%--<param value="high" name="quality">--%>
					<%--<param value="true" name="allowFullScreen">--%>
					<%--<param value="false" name="menu">--%>
					<%--<param value="transparent" name="wmode">--%>
					<%--<param value="always" name="allowScriptAccess">--%>
					<%--<embed width="900" height="507" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="http://static1.mtime.cn/20141028063848/flash/newvideoplayer.swf?vid=50879&amp;autoplay=1&amp;w=900&amp;h=507" play="true" allowfullscreen="true" allowscriptaccess="always" wmode="transparent" id="flashfirebug0" name="flashfirebug0">--%>
					<%--</object>--%>

				</div>
				<!--上映影院 -->
				<div class="single_tab clearfix pt20" style="display: none">
					<div class="floatLeft" style="width:70%">
						<div class="date_list pb20"
							style="border-bottom: 1px solid #eeeeee">
							<span class="bold black">请选择日期：</span> <a href="#" class="green">今天&nbsp;&nbsp;11月6日</a>
							<a href="#">明天&nbsp;&nbsp;11月7日</a>
						</div>
						<div class="uptheaterList">
							<ul>
								<li>
									<div>
										<h2>
											<a class="floatLeft"
												href="${pageContext.request.contextPath}/jsp/Theater/TheaterDetail.jsp">中国国际影城-湛江店</a><span
												class="red floatRight">.8</span><span
												class="red pl12 floatRight font32">7</span>
										</h2>
										<br />
										<p>
											湛江市霞山区椹川大道1-3号江霞广场五楼<span class="button floatRight">选座购票</span>
										</p>
										<p>电话：0759-2299871，0759-2299877</p>
									</div>
								</li>
								<li>
									<div>
										<h2>
											<a class="floatLeft"
												href="${pageContext.request.contextPath}/jsp/Theater/TheaterDetail.jsp">中国国际影城-湛江店</a><span
												class="red floatRight">.8</span><span
												class="red pl12 floatRight font32">7</span>
										</h2>
										<br />
										<p>
											湛江市霞山区椹川大道1-3号江霞广场五楼<span class="button floatRight">选座购票</span>
										</p>
										<p>电话：0759-2299871，0759-2299877</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="floatRight pl12" style="width:28%">
						<div>
							<div class="moiveNav font20">正在热映</div>
							<div class="pl12 pb20 clearfix"
								style="border-left: 1px solid #eeeeee;">
								<div class="floatLeft">
									<a href="#"><img width="100" height="138"
										src="${pageContext.request.contextPath}/images/lm3.png" /></a>
								</div>
								<div class="floatLeft pl12" style="width:180px">
									<h4>
										<a href="#">孤岛惊魂</a>
									</h4>
									<p>导演：廉涛、王琨皓</p>
									<p>主演：李依伊/田苏灏/毛毅</p>
									<p>时长：118分钟</p>
									<p>悬疑/惊悚</p>
								</div>
							</div>
							<div class="pl12 pb20 clearfix"
								style="border-left: 1px solid #eeeeee;">
								<div class="floatLeft">
									<a href="#"><img width="100" height="138"
										src="${pageContext.request.contextPath}/images/lm3.png" /></a>
								</div>
								<div class="floatLeft pl12" style="width:180px">
									<h4>
										<a href="#">孤岛惊魂</a>
									</h4>
									<p>导演：廉涛、王琨皓</p>
									<p>主演：李依伊/田苏灏/毛毅</p>
									<p>时长：118分钟</p>
									<p>悬疑/惊悚</p>
								</div>
							</div>
							<div class="pl12 pb20 clearfix"
								style="border-left: 1px solid #eeeeee;">
								<div class="floatLeft">
									<a href="#"><img width="100" height="138"
										src="${pageContext.request.contextPath}/images/lm3.png" /></a>
								</div>
								<div class="floatLeft pl12" style="width:180px">
									<h4>
										<a href="#">孤岛惊魂</a>
									</h4>
									<p>导演：廉涛、王琨皓</p>
									<p>主演：李依伊/田苏灏/毛毅</p>
									<p>时长：118分钟</p>
									<p>悬疑/惊悚</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 更多影评 -->
				<div class="single_tab" style="display:none"></div>
			</div>
			<script type="text/javascript">
        $(".MoiveDetailNav ul li").each(function(index){
            $(this).click(function(){
                $(this).addClass("borderTop").siblings().removeClass("borderTop");
                $("#all_tab>div:eq("+index+")").show().siblings().hide();
            });
        });
    </script>
		</div>

		<jsp:include
			page="${pageContext.request.contextPath}/jsp/public/footer.jsp" />
	</div>
</body>
</html>
