<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 14-10-29
  Time: 下午1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>影评</title>
    <jsp:include page="${pageContext.request.contextPath}/jsp/public/init.jsp"/>
</head>
<body>
<div class="container">
<jsp:include page="${pageContext.request.contextPath}/jsp/public/header.jsp"/>
<script type="text/javascript">
    $(".nav ul li:eq(3)").addClass("nav_selected").find("a").addClass("nav_selected_a")
            .parent() .siblings().removeClass("nav_selected").find("a").removeClass("nav_selected_a");
</script>
<div class="inner clearfix">
<div style="width:65%;float: left">
    <div class="moiveNav" style="width:100%">
        <a href="javascript:void(0)" class="selected">热门影评</a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="javascript:void(0)">最新影评</a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="javascript:void(0)"></a>
    </div>
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
    <div id="selectBox" style="width:100%;">
        <div class="Comment HotestComment">
            <ul>
                <li>
                    <div class="clearfix">
                        <div class="floatLeft">
                            <div ><h3>1</h3></div>
                            <img src="${pageContext.request.contextPath}/images/ren1.gif"/>
                        </div>
                        <div class="floatCenter">
                            <h3><a href="${pageContext.request.contextPath}/jsp/Community/MoiveCommentDetail.jsp">To Knowledge</a></h3>
                            <ul class="clearfix" style="margin-top: 5px">
                                <li><a href="#">lihaoahil</a></li>
                                <li>评</li>
                                <li><a href="#">《超体》</a><span class="star45"></span></li>
                                <li>2014-11-2</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;这个电影我看了两遍我会乱说吗。。第一遍旁边坐了一个逗比每分钟几十个吐槽我眼前全是各种弹幕划过女神的脸被挡得根本看不清好吗。于是第二天又一个人默默去看了一遍。。。 先说一下，就是这个电影所立足的假设，也就是摩根弗里曼在演讲里提到的，人类迄今为止只是用了10%的cerebral capacity，其实一点道理都没有。所以心存幻想，觉得自己有朝一日额头被人拿板...</p>
                        </div>
                        <div class="floatRight">
                            <img src="${pageContext.request.contextPath}/images/m4.png"/>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix">
                        <div class="floatLeft">
                            <div ><h3>2</h3></div>
                            <img src="${pageContext.request.contextPath}/images/ren2.gif"/>
                        </div>
                        <div class="floatCenter">
                            <h3><a href="#">近几年甄子丹唯一能拿得出的电影</a></h3>
                            <ul class="clearfix" style="margin-top: 5px">
                                <li><a href="#">ILM</a></li>
                                <li>评</li>
                                <li><a href="#">《一个人的武林》</a><span class="star40"></span></li>
                                <li>2014-11-2</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;实在受不了这些连看都没看过就打一星，或者带着黑某人的情绪在打分的影迷了。现在中国电影“劣币驱逐良币”的局面，所谓影迷是不是也应该好好反思下自己在这种场景下所充当的角色？ 电影的整个故事虽然有破绽，但是整体问题不大，这点很难得，一般而言，甄子丹的好多电影，打斗都值得一看，但是往往整个故事却...</p>
                        </div>
                        <div class="floatRight">
                            <img src="${pageContext.request.contextPath}/images/lm5.png"/>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix">
                        <div class="floatLeft">
                            <div ><h3>3</h3></div>
                            <img src="${pageContext.request.contextPath}/images/ren3.gif"/>
                        </div>
                        <div class="floatCenter">
                            <h3><a href="#">这不是变态，这是婚姻的残酷真相</a></h3>
                            <ul class="clearfix" style="margin-top: 5px">
                                <li><a href="#">旺仔少女小小酥 </a></li>
                                <li>评</li>
                                <li><a href="#">《消失的爱人》</a><span class="star45"></span></li>
                                <li>2014-11-2</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;之前看完预告片后，我同学说，这有什么好看的，肯定是他老公杀的啊。我说，不会吧，如果这么简单，芬奇就不会拍了。 人性，生活，都没那么简单，何况电影。 看完以后果然不失望。同样的涉及婚姻一步步失去生命的通俗主题，可以是《蓝色情人节》，可以是《革命之路》，但最聪明的是《消失的爱人》——用极其极端的方式表现，剧情本身悬疑四起足够精彩，再辅以大量涉及传...</p>
                        </div>
                        <div class="floatRight">
                            <img src="${pageContext.request.contextPath}/images/m1.jpg"/>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix">
                        <div class="floatLeft">
                            <div ><h3>4</h3></div>
                            <img src="${pageContext.request.contextPath}/images/ren4.jpg"/>
                        </div>
                        <div class="floatCenter">
                            <h3><a href="#"> 都知道这是个刷脸的社会可是你们为什么长成那样？</a></h3>
                            <ul class="clearfix" style="margin-top: 5px">
                                <li><a href="#">南瓜国王@似水流年 </a></li>
                                <li>评</li>
                                <li><a href="#">《忍者神龟：变种时代》</a><span class="star30"></span></li>
                                <li>2014-11-2</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;毁童年那！！！！ 大美妞开始又是闪亮登场，然后又是偶然发现了海龟们。。。。大姐，变形金刚您都玩过了，就别装惊讶了！ 然后忍者龟登场了！！！ 都知道这是个刷脸的社会可是你们为什么长成那样？ 你们长得也太着急了，还反复说自己是teenage.... 导演大叔您怎么想的，这就好像隔壁40多的王阿姨告诉你自己才13岁，天天卖萌大家hold的住么？ 正式应了那句老话，吐啊吐...</p>
                        </div>
                        <div class="floatRight">
                            <img src="${pageContext.request.contextPath}/images/lm2.png"/>
                        </div>
                    </div>
                </li>
            </ul>

        </div>
        <div class="Comment newestComment" style="display: none">
            <ul>
                <li>
                    <div class="clearfix">
                        <div class="floatLeft">
                            <img src="${pageContext.request.contextPath}/images/ren1.gif"/>
                        </div>
                        <div class="floatCenter">
                            <h3><a href="#">被写残的Clara Oswald</a></h3>
                            <ul class="clearfix" style="margin-top: 5px">
                                <li><a href="#">岚君</a></li>
                                <li>评</li>
                                <li><a href="#">《神秘博士 第八季》</a><span class="star50"></span></li>
                                <li>2014-11-2</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;As A Companion 05年之后的历任常驻女伴中，Rose是真正意义上的官方Mary Sue，一无是处的邻家女孩跟着博士旅行，冒险，恋爱，然后分离最后还在一起了；Martha是在博士失恋的时候暗恋着博士的女生；Donna是最好的玩伴；Amy是从小就喜欢博士的女孩，最终确定博士只是好朋友；而Clara…… 从一开始，我就不是Clara黑，当大家都在死命黑Clara的时候，我对这个角色还是期望的....</p>
                        </div>
                        <div class="floatRight">
                            <img src="${pageContext.request.contextPath}/images/m2.jpg"/>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix">
                        <div class="floatLeft">
                            <img src="${pageContext.request.contextPath}/images/ren2.gif"/>
                        </div>
                        <div class="floatCenter">
                            <h3><a href="#">近几年甄子丹唯一能拿得出的电影</a></h3>
                            <ul class="clearfix" style="margin-top: 5px">
                                <li><a href="#">ILM</a></li>
                                <li>评</li>
                                <li><a href="#">《一个人的武林》</a><span class="star30"></span></li>
                                <li>2014-11-2</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;实在受不了这些连看都没看过就打一星，或者带着黑某人的情绪在打分的影迷了。现在中国电影“劣币驱逐良币”的局面，所谓影迷是不是也应该好好反思下自己在这种场景下所充当的角色？ 电影的整个故事虽然有破绽，但是整体问题不大，这点很难得，一般而言，甄子丹的好多电影，打斗都值得一看，但是往往整个故事却...</p>
                        </div>
                        <div class="floatRight">
                            <img src="${pageContext.request.contextPath}/images/lm5.png"/>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix">
                        <div class="floatLeft">
                            <img src="${pageContext.request.contextPath}/images/ren3.gif"/>
                        </div>
                        <div class="floatCenter">
                            <h3><a href="#">这不是变态，这是婚姻的残酷真相</a></h3>
                            <ul class="clearfix" style="margin-top: 5px">
                                <li><a href="#">旺仔少女小小酥 </a></li>
                                <li>评</li>
                                <li><a href="#">《消失的爱人》</a><span class="star45"></span></li>
                                <li>2014-11-2</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;之前看完预告片后，我同学说，这有什么好看的，肯定是他老公杀的啊。我说，不会吧，如果这么简单，芬奇就不会拍了。 人性，生活，都没那么简单，何况电影。 看完以后果然不失望。同样的涉及婚姻一步步失去生命的通俗主题，可以是《蓝色情人节》，可以是《革命之路》，但最聪明的是《消失的爱人》——用极其极端的方式表现，剧情本身悬疑四起足够精彩，再辅以大量涉及传...</p>
                        </div>
                        <div class="floatRight">
                            <img src="${pageContext.request.contextPath}/images/m1.jpg"/>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix">
                        <div class="floatLeft">
                            <img src="${pageContext.request.contextPath}/images/ren4.jpg"/>
                        </div>
                        <div class="floatCenter">
                            <h3><a href="#"> 都知道这是个刷脸的社会可是你们为什么长成那样？</a></h3>
                            <ul class="clearfix" style="margin-top: 5px">
                                <li><a href="#">南瓜国王@似水流年 </a></li>
                                <li>评</li>
                                <li><a href="#">《忍者神龟：变种时代》</a><span class="star45"></span></li>
                                <li>2014-11-2</li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;毁童年那！！！！ 大美妞开始又是闪亮登场，然后又是偶然发现了海龟们。。。。大姐，变形金刚您都玩过了，就别装惊讶了！ 然后忍者龟登场了！！！ 都知道这是个刷脸的社会可是你们为什么长成那样？ 你们长得也太着急了，还反复说自己是teenage.... 导演大叔您怎么想的，这就好像隔壁40多的王阿姨告诉你自己才13岁，天天卖萌大家hold的住么？ 正式应了那句老话，吐啊吐...</p>
                        </div>
                        <div class="floatRight">
                            <img src="${pageContext.request.contextPath}/images/lm2.png"/>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
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
<div class="active" style="width:30%; margin-top: 30px;float: right;border-left:1px solid #eeeeee;padding: 0 15px">
    <div style="border-bottom: 1px solid #eeeeee">
        <div style="font-size: 20px;padding: 10px 0;border-bottom: 1px solid #eeeeee;">
            活跃影评人
        </div>
        <div class="active">
            <ul class="clearfix">
                <li>
                    <div class="floatLeft">
                        <img src="${pageContext.request.contextPath}/images/ren1.gif"/>
                    </div>
                    <div class="floatRight">
                        <ul>
                            <li><a href="#">lihaoahil</a></li>
                            <li>影评数：58</li>
                            <li>粉丝数：895</li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <li>
                    <div class="floatLeft">
                        <img src="${pageContext.request.contextPath}/images/ren2.gif"/>
                    </div>
                    <div class="floatRight">
                        <ul>
                            <li><a href="#">ILM</a></li>
                            <li>影评数：58</li>
                            <li>粉丝数：895</li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <li>
                    <div class="floatLeft">
                        <img src="${pageContext.request.contextPath}/images/ren4.jpg"/>
                    </div>
                    <div class="floatRight">
                        <ul>
                            <li><a href="#">南瓜国王@似水流年</a></li>
                            <li>影评数：58</li>
                            <li>粉丝数：895</li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <li>
                    <div class="floatLeft">
                        <img src="${pageContext.request.contextPath}/images/ren5.jpg"/>
                    </div>
                    <div class="floatRight">
                        <ul>
                            <li><a href="#">倔强的小牛</a></li>
                            <li>影评数：58</li>
                            <li>粉丝数：895</li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </li>
            </ul>
        </div>
    </div>
    <div>
        <div class="school_select_nav">
            <ul class="clearfix">
                <li style="font-size: 20px;">选择学校</li>
                <li>湛江<span class="arrorw2" ></span>
                    <div class="select_icon">
                        <div class="selectNav">
                            <ul class="clearfix">
                                <li class="border_bottom"><a href="#">热门</a></li>
                                <li><a href="#">A-G</a></li>
                                <li><a href="#">H-L</a></li>
                                <li><a href="#">M-T</a></li>
                                <li><a href="#">W-Z</a></li>
                            </ul>
                        </div>
                        <div class="selectOne">
                            <ul class="clearfix">
                                <li><a href="#">广州</a></li>
                                <li><a href="#">湛江</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>广东海洋大学<span class="arrorw2" ></span>
                    <div class="select_icon">
                        <div class="selectNav">
                            <ul class="clearfix">
                                <li class="border_bottom"><a href="#">热门</a></li>
                                <li><a href="#">A-G</a></li>
                                <li><a href="#">H-L</a></li>
                                <li><a href="#">M-T</a></li>
                                <li><a href="#">W-Z</a></li>
                            </ul>
                        </div>
                        <div class="selectOne">
                            <ul class="clearfix">
                                <li><a href="#">广东海洋大学</a></li>
                                <li><a href="#">湛江师范学院</a></li>
                                <li><a href="#">广东医学院</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div style="font-size: 15px;font-weight: bold;padding: 0 0 10px 3px">校友</div>
        <div class="schoolmateList">
            <ul class="clearfix">
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
                <li>
                    <div class="user_img">
                        <a href="#"><img src="${pageContext.request.contextPath}/images/ren5.jpg"/></a>
                    </div>
                    <div><a href="#">倔强的小牛</a></div>
                </li>
            </ul>
        </div>
        <div  style="font-size: 15px;font-weight: bold;padding:  20px 0 10px 3px">校园新闻</div>
        <div class="schoolNewsList">
            <ul>
                <li><a href="#">我校当选中农龙头企协首届常务理事单位</a></li>
                <li><a href="#">省第五届高校“校长杯”三小球比赛在我校举行 </a></li>
                <li><a href="#">何真出席第三届海峡两岸海洋海事大学蓝海策略校长论坛 </a></li>
            </ul>
        </div>
    </div>
</div>
</div>

<jsp:include page="${pageContext.request.contextPath}/jsp/public/footer.jsp"/>
</div>



</body>
</html>
