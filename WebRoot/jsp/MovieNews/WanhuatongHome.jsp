<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>万花筒主页</title>
<jsp:include page="/jsp/public/init.jsp" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/waterfall.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="/jsp/public/header.jsp" />
		<script type="text/javascript">
        $(".nav ul li:eq(2)").addClass("nav_selected").find("a").addClass("nav_selected_a")
                .parent() .siblings().removeClass("nav_selected").find("a").removeClass("nav_selected_a");
    </script>
		<div class="inner">
			<div style="width:71%;float: left">
				<div class="moiveNav" style="width:100%">
					<%--<ul>--%>
					<%--<li> <a href="javascript:void(0)" class="selected">全部</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>--%>
					<%--<li>  <a href="javascript:void(0)">热读</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>--%>
					<%--<li> <a href="javascript:void(0)">人物</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>--%>
					<%--<li> <a href="javascript:void(0)">生活</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>--%>
					<%--<li>    <a href="javascript:void(0)">产业</a></li>--%>
					<%--<li>    <a href="javascript:void(0)">哈哈</a></li>--%>
					<%--</ul>--%>
					<a href="javascript:void(0)" class="selected">全部</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="javascript:void(0)">热读</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="javascript:void(0)">人物</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="javascript:void(0)">生活</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="javascript:void(0)" style="  font-size: 20px;">产业</a>
					<%--<a href="javascript:void(0)"></a>&nbsp;&nbsp;&nbsp;&nbsp;--%>
					<%--<a href="javascript:void(0)"></a>--%>
				</div>
				<div id="selectBox" style="width:100%;">
					<div class="allNews clearfix">
						<div id="main" class="clearfix">
			<%-- 				<s:iterator value="%{#allTelecines}" var="alte">
                   <div class="box">
                       <div class="border">
                           <div class="pic">
                               <a href="${pageContext.request.contextPath}/jsp/MoiveNews/MoiveNewsDetail.jsp"><img src="${pageContext.request.contextPath}<s:property value='#alte.imagePath'/> "></a>
                           </div>
                           <div class="title">
                               <a href="${pageContext.request.contextPath}/jsp/MoiveNews/MoiveNewsDetail.jsp"><s:property value="#alte.title"></s:property> </a>
                               &nbsp;&nbsp;&nbsp;&nbsp;<span><img style="width:15px" src="${pageContext.request.contextPath}/images/pageview.png" />25</span>
                           </div>
                           <div class="newsInfo">
                               <span class="floatRight"><s:property value="#alte.time"></s:property></span>
                           </div>
                       </div>
                   </div>
               </s:iterator> --%>

							<div class="box">
								<div class="border">
									<div class="pic">
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/news2.jpg"></a>
									</div>
									<div class="title">
										<a href="#">《德水里五兄弟》12月上映 尹尚贤、宋清晨主演</a>
										&nbsp;&nbsp;&nbsp;&nbsp;<span><img style="width:15px"
											src="${pageContext.request.contextPath}/images/pageview.png" />25</span>
									</div>
									<div class="newsInfo">
										<span class="floatRight">2014-10-31</span>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="border">
									<div class="pic">
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/news3.jpg"></a>
									</div>
									<div class="title">
										<a href="#">中国影片同日抢镜</a> &nbsp;&nbsp;&nbsp;&nbsp;<span><img
											style="width:15px"
											src="${pageContext.request.contextPath}/images/pageview.png" />25</span>
									</div>
									<div class="newsInfo">
										<span class="floatRight">2014-10-31</span>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="border">
									<div class="pic">
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/news4.jpg"></a>
									</div>
									<div class="title">
										<a href="#">中国影片同日抢镜</a> &nbsp;&nbsp;&nbsp;&nbsp;<span><img
											style="width:15px"
											src="${pageContext.request.contextPath}/images/pageview.png" />25</span>
									</div>
									<div class="newsInfo">
										<span class="floatRight">2014-10-31</span>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="border">
									<div class="pic">
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/news5.jpg"></a>
									</div>
									<div class="title">
										<a href="#">《激战》新闻发布会</a> &nbsp;&nbsp;&nbsp;&nbsp;<span><img
											style="width:15px"
											src="${pageContext.request.contextPath}/images/pageview.png" />25</span>
									</div>
									<div class="newsInfo">
										<span class="floatRight">2014-10-31</span>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="border">
									<div class="pic">
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/news6.jpg"></a>
									</div>
									<div class="title">
										<a href="#">戛纳电影节闭幕 评审团主席伊莎贝尔亮相</a> &nbsp;&nbsp;&nbsp;&nbsp;<span><img
											style="width:15px"
											src="${pageContext.request.contextPath}/images/pageview.png" />25</span>
									</div>
									<div class="newsInfo">
										<span class="floatRight">2014-10-31</span>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="border">
									<div class="pic">
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/news7.jpg"></a>
									</div>
									<div class="title">
										<a href="#">新版《乌鸦》并非翻拍作品 风格类似吴宇森电影</a>
										&nbsp;&nbsp;&nbsp;&nbsp;<span><img style="width:15px"
											src="${pageContext.request.contextPath}/images/pageview.png" />25</span>
									</div>
									<div class="newsInfo">
										<span class="floatRight">2014-10-31</span>
									</div>
								</div>
							</div>
							<div class="box">
								<div class="border">
									<div class="pic">
										<a href="#"><img
											src="${pageContext.request.contextPath}/images/news8.jpg"></a>
									</div>
									<div class="title">
										<a href="#">小马奔腾内乱爆发 金燕斥责股东侵占李明遗产</a> &nbsp;&nbsp;&nbsp;&nbsp;<span><img
											style="width:15px"
											src="${pageContext.request.contextPath}/images/pageview.png" />25</span>
									</div>
									<div class="newsInfo">
										<span class="floatRight">2014-10-31</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="allHotNews" style="display: none">2</div>
					<div class="manNews" style="display: none">
						<ul>
							<li><a href="#">全部</a></li>
							<li>|</li>
							<li><a href="#">内地</a></li>
							<li>|</li>
							<li><a href="#">港台</a></li>
							<li>|</li>
							<li><a href="#">欧美</a></li>
							<li>|</li>
							<li><a href="#">日韩</a></li>
							<li>|</li>
							<li><a href="#">其他</a></li>
						</ul>
					</div>
					<div class="liftNews" style="display: none">4</div>
				</div>
			</div>
			<script type="text/javascript">
            $(".moiveNav a").each(function(index,value){
                value.onclick = function(){
                    $(this).addClass("selected").siblings().removeClass("selected");
                    selectBox(index);
                }
            });

            function selectBox(index){
                var select =  $("#selectBox>div:eq("+(index)+")");
                console.log(select.attr("class"));
               select.show().find(".box").show().fadeIn();
                select.siblings().hide().find(".box").hide();
            }
        </script>
			<div class="newsRight">
				<div class="moiveNav">
					<span>本月热读</span>
				</div>
				<div class="monthHot">
					<ul>
						<!--  <s:iterator value="%{#topMovieNews}" var="tm" status="st">
                        <li>
                            <i class="num"><s:property value="#st.count"/></i>
                            <h3><a href="#"><s:property value="#tm.title"/> </a></h3>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#tm.content"/> </p> 
                        </li>
                    </s:iterator> -->
						<li><i class="num">2</i>
							<h3>
								<a href="#">阿里马云力推好莱坞生意 拟与索尼联合投资电影</a>
							</h3>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;马云说道：“我来这里是为了学习，我希望来这里寻找合作伙伴，我们担心那些有钱但浅薄的人，电影是改变中国年轻人举止的最佳途径。”马云指出，随着中国中产阶层壮大至2亿人，中国将成为全球最大的电影市场...</p>
						</li>
						<li><i class="num">3</i>
							<h3>
								<a href="#">电影《恶人谷》香港开机 吴镇宇逗狗郑中基搞笑</a>
							</h3>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;日前，由谷德昭执导，吴镇宇、郑中基、江疏影联袂主演的喜剧电影《恶人谷》举行了开机仪式。开机当天，导演谷德昭携吴镇宇、郑中基、江疏影、周秀娜、林子聪等一众演员悉数到场，一只明星狗还作为吴镇宇的特别搭档现身现场...</p>
						</li>
						<li><i class="num">4</i>
							<h3>
								<a href="#">《德州电锯杀人狂》将拍摄前传 法国导演执导</a>
							</h3>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;备受瞩目的《德州电锯杀人狂》的前传《皮革脸》（LEATHERFACE）已经筹备了许久，目前终于有了动静。据外媒报道，法国的导演组合亚历山大·布斯蒂罗和朱利安·莫利将一起执导这部电影。而这两位法国导演也是以拍摄恐怖片而著称的，他们之前最著名的作品是《身在其中》和《铁青》...</p>
						</li>
						<li><i class="num">5</i>
							<h3>
								<a href="#">美国东部电影博览会 杜比全景声影片已突破200部</a>
							</h3>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;杜比实验室本周亮相2014年美国东部电影博览会（ShowEast
								2014，美国佛罗里达州罗德岱堡市，威斯汀外交官度假村，
								301号展台），展示最优秀的影院技术，为下一代电影行业的发展奠定基础。在音频方面，公司将重点突出杜比全景声（Dolby
								Atmos）音频格式...</p></li>
					</ul>
				</div>
			</div>
			<script type="text/javascript">
									$(".monthHot ul li").hover(
											function() {
												$(this).find("p").stop()
														.slideDown().parent
														.siblings().find("p")
														.hide();
											},
											function() {
												$(this).find("p").stop()
														.slideUp();
											})
								</script>
		</div>

		<%--<jsp:include page="${pageContext.request.contextPath}/jsp/public/footer.jsp"/>--%>
	</div>
</body>
</html>
