<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 14-11-5
  Time: 下午7:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索影片</title>
    <jsp:include page="${pageContext.request.contextPath}/jsp/public/init.jsp"/>
</head>
<body>
<div class="container">
    <jsp:include page="${pageContext.request.contextPath}/jsp/public/header.jsp"/>
    <div class="inner clearfix">
        <div style="float: left;width:78%">
            <div class="search_nav" style="height: 25px;padding: 10px 10px 0 10px;border-radius:5px;font-weight:bold;box-shadow:0 0 5px #F1F1F1;background: url(${pageContext.request.contextPath}/images/header-bg-shadow.png) bottom repeat-x">
                <a href="#" class="search_select">按类型查询</a>
                <a href="#">按字母查询</a>
            </div>
           <div id="fromType">
                <div>
                    <div class="search_type selectType">
                        <strong>类型：</strong>
                        <ul class="clearfix">
                            <li>剧情</li> <li>喜剧</li> <li>短片</li> <li>爱情</li> <li>动作</li><li>纪录片</li><li>惊悚</li><li>动画</li><li>犯罪</li><li>恐怖</li>
                        </ul>
                    </div>
                    <div class="search_type selectRegion">
                        <strong>国家/地区：</strong>
                        <ul class="clearfix">
                            <li>中国</li> <li>美国</li> <li>日本</li> <li>法国</li> <li>英国</li><li>中国香港</li><li>意大利</li><li>德国</li><li>韩国</li><li>加拿大</li>
                        </ul>
                    </div>
                </div>
                <br/>
                <div>
                    <div>
                        <div class="isSelected black">
                            <strong>已选择条件：<span>喜剧</span><span>美国</span></strong>
                        </div>
                        <br/>
                        <div class="black clearfix">
                            <strong class="floatLeft font14">查询结果：共<span class="font20">13</span>部</strong>
                            <div class="floatRight button" style="margin-left:30px ">按评分排序</div><div class="floatRight button">按时间排序</div>
                        </div>
                   </div>
                    <div class="moiveResultList">
                        <ul>
                            <li>
                                <div class="table">
                                    <div class="t_r">
                                        <div class="td">
                                            <a href="#"><img  width='125px' height="166px" src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
                                        </div>
                                        <div class="td pl12 pr20">
                                            <div class="clearfix">
                                                <span class="font20 total">6</span>
                                                <span class="font14 total">.3</span>
                                             </div>
                                            <div><a href="#"><h4 class="blue normal"><span>落叶归根</span>(2006)</h4></a></div>
                                            <div>Getting Home</div><br/>
                                            <div>类型：喜剧</div>
                                            <div>国家：中国</div>
                                            <div>导演：张扬</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table">
                                    <div class="t_r">
                                        <div class="td">
                                            <a href="#"><img  width='125px' height="166px" src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
                                        </div>
                                        <div class="td pl12 pr20">
                                            <div class="clearfix">
                                                <span class="font20 total">6</span>
                                                <span class="font14 total">.3</span>
                                            </div>
                                            <div><a href="#"><h4 class="blue normal"><span>落叶归根</span>(2006)</h4></a></div>
                                            <div>Getting Home</div><br/>
                                            <div>类型：喜剧</div>
                                            <div>国家：中国</div>
                                            <div>导演：张扬</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table">
                                    <div class="t_r">
                                        <div class="td">
                                            <a href="#"><img  width='125px' height="166px" src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
                                        </div>
                                        <div class="td pl12">
                                            <div class="clearfix">
                                                <span class="font20 total">6</span>
                                                <span class="font14 total">.3</span>
                                            </div>
                                            <div><a href="#"><h4 class="blue normal"><span>落叶归根</span>(2006)</h4></a></div>
                                            <div>Getting Home</div><br/>
                                            <div>类型：喜剧</div>
                                            <div>国家：中国</div>
                                            <div>导演：张扬</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </li>
                            <li>
                                <div class="table">
                                    <div class="t_r">
                                        <div class="td">
                                            <a href="#"><img  width='125px' height="166px" src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
                                        </div>
                                        <div class="td pl12 pr20">
                                            <div class="clearfix">
                                                <span class="font20 total">6</span>
                                                <span class="font14 total">.3</span>
                                            </div>
                                            <div><a href="#"><h4 class="blue normal"><span>落叶归根</span>(2006)</h4></a></div>
                                            <div>Getting Home</div><br/>
                                            <div>类型：喜剧</div>
                                            <div>国家：中国</div>
                                            <div>导演：张扬</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table">
                                    <div class="t_r">
                                        <div class="td">
                                            <a href="#"><img  width='125px' height="166px" src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
                                        </div>
                                        <div class="td pl12 pr20">
                                            <div class="clearfix">
                                                <span class="font20 total">6</span>
                                                <span class="font14 total">.3</span>
                                            </div>
                                            <div><a href="#"><h4 class="blue normal"><span>落叶归根</span>(2006)</h4></a></div>
                                            <div>Getting Home</div><br/>
                                            <div>类型：喜剧</div>
                                            <div>国家：中国</div>
                                            <div>导演：张扬</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table">
                                    <div class="t_r">
                                        <div class="td">
                                            <a href="#"><img  width='125px' height="166px" src="${pageContext.request.contextPath}/images/lygg_1000X1000.jpg"></a>
                                        </div>
                                        <div class="td pl12">
                                            <div class="clearfix">
                                                <span class="font20 total">6</span>
                                                <span class="font14 total">.3</span>
                                            </div>
                                            <div><a href="#"><h4 class="blue normal"><span>落叶归根</span>(2006)</h4></a></div>
                                            <div>Getting Home</div><br/>
                                            <div>类型：喜剧</div>
                                            <div>国家：中国</div>
                                            <div>导演：张扬</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="fromABC" style="display: none">
                <div>
                    <div class="search_type selectType">
                        <strong style="left:0">中文首字母：</strong>
                        <ul class="clearfix">
                            <li>A</li> <li>B</li> <li>C</li> <li>D</li> <li>E</li><li>F</li><li>G</li><li>H</li><li>I</li><li>J</li><li>K</li><li>L</li><li>M</li><li>N</li><li>O</li><li>P</li><li>Q</li><li>R</li><li>S</li><li>T</li><li>U</li><li>V</li><li>W</li><li>X</li><li>Y</li><li>Z</li><li>数字</li><li>其他</li>
                        </ul>
                    </div>
                    <div class="search_type selectRegion">
                        <strong>英文首字母：</strong>
                        <ul class="clearfix">
                            <li>A</li> <li>B</li> <li>C</li> <li>D</li> <li>E</li><li>F</li><li>G</li><li>H</li><li>I</li><li>J</li><li>K</li><li>L</li><li>M</li><li>N</li><li>O</li><li>P</li><li>Q</li><li>R</li><li>S</li><li>T</li><li>U</li><li>V</li><li>W</li><li>X</li><li>Y</li><li>Z</li><li>数字</li><li>其他</li>
                        </ul>
                    </div>
                </div>
                <br/>
            </div>
        </div>


        <div style="float: right;width:20%;height: 20px;border: 1px solid red"></div>
     </div>
    <jsp:include page="${pageContext.request.contextPath}/jsp/public/footer.jsp"/>
</div>
</body>
</html>
