<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 14-11-3
  Time: 下午4:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>影院详情</title>
    <jsp:include page="${pageContext.request.contextPath}/jsp/public/init.jsp"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/TheaterDetailJS.js"></script>
</head>
<body>
<div class="container">
<jsp:include page="${pageContext.request.contextPath}/jsp/public/header.jsp"/>
<script type="text/javascript">
    $(".nav ul li:eq(1)").addClass("nav_selected").find("a").addClass("nav_selected_a")
            .parent() .siblings().removeClass("nav_selected").find("a").removeClass("nav_selected_a");
</script>
<div class="inner">
<div class="clearfix">
    <div class="td_left">
        <div class="td_intro">
            <div style="height: 200px;text-align: center">
                <img src="${pageContext.request.contextPath}/images/th1.jpg"/>
            </div>
            <div style="padding: 15px;text-align: center"><span>7</span>个影厅，<span>1065</span>个座位</div>
            <div style="text-align: center"><div class="button">收藏影院</div></div>
        </div>
        <div class="td_later">
            <div>
                <h3>即将上映：</h3>
            </div>
               <div>
                   <ul>
                        <li class="clearfix">

                            <dl class="uptime">
                                <dt>10月</dt>
                                <dd>31
                                <i class="icon_date"></i>
                                </dd>
                            </dl>

                            <div class="floatLeft">
                               <a href="#"><img width="100" height="138" src="${pageContext.request.contextPath}/images/lm1.png"/></a>
                            </div>
                            <div class="floatLeft">
                                <h4><a href="#">恐怖电影院</a></h4>
                                <p>36人想看</p>
                                <p>惊悚</p>
                            </div>
                        </li>
                       <li class="clearfix">

                           <dl class="uptime">
                               <dt>10月</dt>
                               <dd>31
                                   <i class="icon_date"></i>
                               </dd>
                           </dl>

                           <div class="floatLeft">
                               <a href="#"><img width="100" height="138" src="${pageContext.request.contextPath}/images/lm3.png"/></a>
                           </div>
                           <div class="floatLeft">
                               <h4><a href="#">孤岛惊魂</a></h4>
                               <p>36人想看</p>
                               <p>惊悚</p>
                           </div>
                       </li>
                        <%--<li>夜莺</li>--%>

                      </ul>
               </div>
            </div>

        </div>
    <div class="td_right">
        <div class="td_right_tlt">
            <p>湛江金影电影城</p>
            <div>地址：湛江市赤坎区跃进路36号爱华广场五楼&nbsp;&nbsp;<a style="color: #3377AA" href="#">[路线地图]</a></div>
            <div>电话：0759-3618688&nbsp;&nbsp;&nbsp;&nbsp;营业时间：10：30-01：00（次日）</div>
        </div>
        <div class="td_right_nav">
            <ul class="clearfix">
                <li class="td_nav_selected">影讯</li>
                <li>影院介绍</li>
                <li>优惠活动</li>
            </ul>
        </div>
        <div class="td_main">
        <div class="td_moiveNews">
            <div class="pt20 pl12 pb20 black" style="border-bottom:1px solid silver">请选择日期：<span class="green">今天 11月3日</span><span>明天 11月4日</span></div>
            <div style="padding: 20px"><span style="font-size: 25px;color: #000000">11月3日上映5部-共29场</span></div>
            <div class="single_moive">
                <ul class="clearfix">
                    <li>
                        <div class="clearfix">
                            <div>
                                <img src="${pageContext.request.contextPath}/images/lm2.png"/>
                                <div><img style="margin-right: 3px" src="${pageContext.request.contextPath}/images/pagination_next.gif">观看预告片</div>
                                <div>观看剧照</div>
                            </div>
                           <div class="moive_type">
                               <h3>忍者神龟：变种时代<span>&nbsp;&nbsp;6.5</span></h3><br/>
                                <div>
                                    <div  class="button" >全部</div>&nbsp;&nbsp;&nbsp;
                                    <div class="button">3D</div>&nbsp;&nbsp;&nbsp;
                                    <div class="button">2D</div>
                                </div>
                               <div class="moive_time">
                                   <ul>
                                       <li>
                                           <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                       </li>
                                       <li>
                                           <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                           <div class="pop_info">
                                               <div>12:20，英语版，1号厅，92个座位</div>
                                               <div>售价：45元<div class="button">选座购票</div></div>
                                           </div>
                                       </li>
                                       <li>
                                           <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                           <div class="pop_info">
                                               <div>12:20，英语版，1号厅，92个座位</div>
                                               <div>售价：45元<div class="button">选座购票</div></div>
                                           </div>
                                       </li>
                                       <li>
                                           <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                           <div class="pop_info">
                                               <div>12:20，英语版，1号厅，92个座位</div>
                                               <div>售价：45元<div class="button">选座购票</div></div>
                                           </div>
                                       </li>
                                       <li>
                                           <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                           <div class="pop_info">
                                               <div>12:20，英语版，1号厅，92个座位</div>
                                               <div>售价：45元<div class="button">选座购票</div></div>
                                           </div>
                                       </li>
                                       <li>
                                           <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                           <div class="pop_info">
                                               <div>12:20，英语版，1号厅，92个座位</div>
                                               <div>售价：45元<div class="button">选座购票</div></div>
                                           </div>
                                       </li>
                                       <li>
                                           <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                           <div class="pop_info">
                                               <div>12:20，英语版，1号厅，92个座位</div>
                                               <div>售价：45元<div class="button">选座购票</div></div>
                                           </div>
                                       </li>
                                   </ul>
                               </div>
                           </div>
                        </div>
                    </li>
                    <li>
                        <div class="clearfix">
                            <div>
                                <img src="${pageContext.request.contextPath}/images/m1.png"/>
                                <div><img style="margin-right: 3px" src="${pageContext.request.contextPath}/images/pagination_next.gif">观看预告片</div>
                                <div>观看剧照</div>
                            </div>
                            <div class="moive_type">
                                <h3>银河护卫队<span>&nbsp;&nbsp;6.5</span></h3><br/>
                                <div>
                                    <div  class="button">全部</div>&nbsp;&nbsp;&nbsp;
                                    <div class="button">3D</div>&nbsp;&nbsp;&nbsp;
                                    <div class="button">2D</div>
                                </div>
                                <div class="moive_time">
                                    <ul>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="clearfix">
                            <div>
                                <img src="${pageContext.request.contextPath}/images/lm4.png"/>
                                <div><img style="margin-right: 3px" src="${pageContext.request.contextPath}/images/pagination_next.gif">观看预告片</div>
                                <div>观看剧照</div>
                            </div>
                            <div class="moive_type">
                                <h3>夜莺<span>&nbsp;&nbsp;6.5</span></h3><br/>
                                <div>
                                    <div  class="button">全部</div>&nbsp;&nbsp;&nbsp;
                                    <div class="button">3D</div>&nbsp;&nbsp;&nbsp;
                                    <div class="button">2D</div>
                                </div>
                                <div class="moive_time">
                                    <ul>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div>
                            <div>
                                <img src="${pageContext.request.contextPath}/images/lm3.png"/>
                                <div><img style="margin-right: 3px" src="${pageContext.request.contextPath}/images/pagination_next.gif">观看预告片</div>
                                <div>观看剧照</div>
                            </div>
                            <div class="moive_type">
                                <h3>孤岛惊魂<span>&nbsp;&nbsp;6.5</span></h3><br/>
                                <div>
                                    <div  class="button">全部</div>&nbsp;&nbsp;&nbsp;
                                    <div class="button">3D</div>&nbsp;&nbsp;&nbsp;
                                    <div class="button">2D</div>
                                </div>
                                <div class="moive_time">
                                    <ul>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="#"><p>12:20 <span>￥45.00</span></p></a>
                                            <div class="pop_info">
                                                <div>12:20，英语版，1号厅，92个座位</div>
                                                <div>售价：45元<div class="button">选座购票</div></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="td_detail" style="display: none">
            <h2>特色餐厅</h2>
            <div>新款被动式偏振3D设备，金属银幕</div>
            <h2>特色服务</h2>
            <div>可停车</div>
            <h2>周边设施</h2>
            <div>
                <h4>周边餐饮：</h4>
                <div>影院外部：金华酒家</div>
                <h4>周边休闲：</h4>
                <div>影院外部：爱华台球俱乐部</div>
            </div>
            <h2>影院介绍</h2>
            <div>&nbsp;&nbsp;&nbsp;&nbsp;湛江金影电影城于2013年2月10日开业，是隶属于华南地区最具影响力的金逸珠江电影院线旗下的影院。全影院共有4个影厅369个座位，配备世界一线放映品牌比利时BARCO放映机及德国ISCOOPTIC镜头，采用国内一线音响品牌FIDEK音响设备及杜比电影立体声技术，力图给予观众最优质的视听享受。本影院是湛江首家采用偏振式3D放映设备的影院，偏振式被动3D技术是国际一线影院普遍采用的最新3D电影放映技术，具有色彩损失小，色彩还原度高，观看角度大等优点。偏振式3D眼镜与旧式主动快门式3D眼镜相比，重量大大减轻，佩戴更加舒适，且眼镜中不含电子元件，无辐射，更健康环保。
                金影电影城位于赤坎区跃进路爱华广场，邻近寸金公园、寸金公交站、湛江一中、湛江师范学院，人流量大，交通便利。爱华广场内设超市、桌球城、酒家、帝歌KTV，可全方位满足广大消费者的休闲娱乐购物需求。</div>
        </div>
        <div class="td_activity" style="display: none"></div>
         </div>
    </div>
</div>
<div class="td_comment inner" style="width:1000px;border-top: 1px solid #EEEEEE">
    <div class="rating clearfix">
        <div class="floatLeft" style="margin:10px 50px 0 0;">
            <span>服务质量：</span>
            <span class="starts">
                  <a href="javascript:void(0)">
                      <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                  </a>
                 <a href="javascript:void(0)">
                     <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                 </a>
                 <a href="javascript:void(0)">
                     <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                 </a>
                 <a href="javascript:void(0)">
                     <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                 </a>
                 <a href="javascript:void(0)">
                     <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                 </a>
            </span>
            <span>不错</span><br/><br/>
            <span>观影效果：</span>
              <span class="starts">
                  <a href="javascript:void(0)">
                      <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                  </a>
                 <a href="javascript:void(0)">
                     <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                 </a>
                 <a href="javascript:void(0)">
                     <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                 </a>
                 <a href="javascript:void(0)">
                     <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                 </a>
                 <a href="javascript:void(0)">
                     <img src="${pageContext.request.contextPath}/images/nst.gif"/>
                 </a>
            </span>
            <span>不错</span>
        </div>
        <div class="floatLeft">
            <span class="floatLeft">总体评价：</span>
            <span style="float:left;width:400px;height: 100px;border:1px solid black;display:inline-block">编辑框</span>
        </div>
    </div>
    <div>
        <h4 style="font-weight: normal">共<span class="font20">18</span>条评价</h4>
    </div>
    <div class="td_comment_list">
        <ul>
            <li>
                <div></div>
            </li>
        </ul>
    </div>
</div>
</div>
<jsp:include page="${pageContext.request.contextPath}/jsp/public/footer.jsp"/>
</div>
</body>
</html>
