<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 14-10-29
  Time: 下午1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>个人主页</title>

<jsp:include
	page="/jsp/public/init.jsp" />
	
<link href="${pageContext.request.contextPath}/css/personalcss.css"
	rel="stylesheet" type="text/css">
	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/personalJS.js"></script>
	
</head>
<body style="background: url(${pageContext.request.contextPath}/images/blue.jpg) no-repeat fixed">
	<div class="container">
	
		<jsp:include page="/jsp/public/header.jsp" />
		
		<div class="inner" style="width:1024px;height: 1500px;">
			<div class="person_header">
				<div class="ph_header">
					<div class="ph_photo">
						<img src="${pageContext.request.contextPath}/images/userphoto.jpg" />
					</div>
					<div class="ph_username">
						倔强的小牛<img src="${pageContext.request.contextPath}/images/girl.png" />
					</div>
					<div class="ph_intro font14">用户没有填写个人简介</div>
					<div class="ph_opration">
						<div class="opt_box">
							<div>
								<span class="bold font20"> + </span>关注
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="person_nav">
				<a class="ph_nav_selected">个人主页</a> <a>博主足迹</a>
			</div>
			<div>
				<div class="floatLeft" style="width:25%">
					<div class="PCD_counter whitebg">
						<div class="ph_innerwrap">
							<table class="tb_counter" cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<td><a> <strong>76</strong> <span>关注</span>
										</a></td>
										<td><a> <strong>287</strong> <span>粉丝</span>
										</a></td>
										<td><a> <strong>601</strong> <span>微评</span>
										</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="ph_info_box whitebg">
						<div class="ph_info clearfix" style="padding:15px;margin: 20px 0">
							<p class="bold">基本资料</p>
							<p>广东，汕头</p>
							<p>24岁</p>
							<br />
							<p class="bold">教育信息</p>
							<p>广东海洋大学</p>
							<br /> <span class="floatRight font14"><a href="#">更多资料>></a></span>
						</div>
					</div>
					<div class="ph_fans_box whitebg">
						<div class=" ph_fans" style="padding: 15px">
							<p class="bold" style="padding-bottom:15px">他的粉丝</p>
							<ul class="clearfix">
								<li>
									<div>
										<div>
											<a href="#"><img
												src="${pageContext.request.contextPath}/images/gallery6.jpg"></a>
										</div>
										<div>
											<a href="#">陌上游</a>
										</div>
									</div>
								</li>
								<li>
									<div>
										<div>
											<a href="#"><img
												src="${pageContext.request.contextPath}/images/gallery6.jpg"></a>
										</div>
										<div>
											<a href="#">陌上游</a>
										</div>
									</div>
								</li>
								<li>
									<div>
										<div>
											<a href="#"><img
												src="${pageContext.request.contextPath}/images/gallery6.jpg"></a>
										</div>
										<div>
											<a href="#">陌上游</a>
										</div>
									</div>
								</li>
								<li>
									<div>
										<div>
											<a href="#"><img
												src="${pageContext.request.contextPath}/images/gallery6.jpg"></a>
										</div>
										<div>
											<a href="#">陌上游</a>
										</div>
									</div>
								</li>
								<li>
									<div>
										<div>
											<a href="#"><img
												src="${pageContext.request.contextPath}/images/gallery6.jpg"></a>
										</div>
										<div>
											<a href="#">陌上游</a>
										</div>
									</div>
								</li>
								<li>
									<div>
										<div>
											<a href="#"><img
												src="${pageContext.request.contextPath}/images/gallery6.jpg"></a>
										</div>
										<div>
											<a href="#">陌上游</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="floatright" style="width:72%">
					<div class="ph_type whitebg">
						<a href="javascript:void(0)">全部<i class="arrow_down"></i></a>
						<div class="box_down whitebg">
							<ul>
								<li><a href="#" class="moreblue">全部</a></li>
								<li><a href="#" class="moreblue">照片</a></li>
								<li><a href="#" class="moreblue">短评</a></li>
								<li><a href="#" class="moreblue">影评</a></li>
							</ul>
						</div>
					</div>
					<div class="small_comm clearfix whitebg">
						<p>
							<a href="#" class="blue moreblue">倔强的小牛</a>： <span>不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师不想当卧底的大侠不是好宗师</span>
						</p>
						<div class="small_moive">
							电影：
							<div style="display: inline-block;position: relative">
								<a href="#" class="blue moreblue moiveName">《黄飞鸿之英雄有梦》</a>
								<div class="small_pop_wrap" style="display:none">
									<div class="small_pop_box clearfix whitebg">
										<div class="floatLeft">
											<img width="100" height="132"
												src="${pageContext.request.contextPath}/images/lm1.png">
										</div>
										<div class="floatLeft pl12">
											<p>导演：周显扬</p>
											<p>98分钟</p>
											<p>动作/传记/剧情</p>
											<%--<p class="small_check"><a href="#" class="blue">查看影片详情>></a></p>--%>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="sm_info">
							<span class="mr30">8小时以前</span> <span class="mr30"><span>来自</span>电影微评</span>
							<%--<span>电影：<a href="#" style="color: #3377AA">《黄飞鸿之英雄有梦》</a></span>--%>
							<span class="sm_respn"><a class="orange"
								href="javascript:void(0)">举报</a><a class="blue"
								href="javascript:void(0)">回复(0)</a></span>
						</div>
					</div>
					<div class="big_comm clearfix whitebg">
						<div class="floatLeft" style="width:75%">
							<p>
								<a href="#" class="blue moreblue">倔强的小牛</a>：刚刚写了一篇影评。
							</p>
							<p>
								<a href="#" class="blue moreblue">《To Knowledge》</a>
							</p>
							<p>
								&nbsp;&nbsp;&nbsp;&nbsp;这个电影我看了两遍我会乱说吗。。第一遍旁边坐了一个逗比每分钟几十个吐槽我眼前全是各种弹幕划过女神的脸被挡得根本看不清好吗。于是第二天又一个人默默去看了一遍。。。
								先说一下，就是这个电影所立足的假设，也就是摩根弗里曼...<a href="#" class="blue moreblue">查看全文>></a>
							</p>
							<div class="sm_info">
								<span class="mr30">8小时以前</span> <span class="mr30"><span>来自</span>影评</span>
								<%--<span>电影：<a href="#" style="color: #3377AA">《黄飞鸿之英雄有梦》</a></span>--%>
								<span class="sm_respn"><a class="orange"
									href="javascript:void(0)">举报</a><a class="blue"
									href="javascript:void(0)">回复(0)</a></span>
							</div>
						</div>
						<div class="floatRight" style="width:23%">
							<img width="140" height="191"
								src="${pageContext.request.contextPath}/images/m4.png">
						</div>
					</div>
					<script type="text/javascript">
                    $(".moiveName").hover(function(){
                        $(".small_pop_wrap").show().fadeIn("1000");
                    },function(){
                        $(".small_pop_wrap").hide().fadeOut("1000");
                    });
                </script>
				</div>
			</div>
		</div>
		<jsp:include
			page="/jsp/public/footer.jsp" />
	</div>
</body>
</html>
