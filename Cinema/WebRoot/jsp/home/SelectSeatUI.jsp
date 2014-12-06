<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 14-11-8
  Time: 上午1:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选座购票</title>
    <jsp:include page="/jsp/public/init.jsp"/>
    <link href="${pageContext.request.contextPath}/css/ticket.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/SelectSeatJS.js"></script>
</head>
<body>
<jsp:include page="/jsp/public/header.jsp"/>
<div class="inner pb20">
      <div class="clearfix" style="padding: 20px">
          <div class="floatLeft" style="width:75%">
              <div class="screen tc"></div>
              <div class="black tc">
                  <p>湛江金逸店</p>
                  <p>3号厅&nbsp;147个座位</p>
              </div>
              <div style="padding:15px 0 30px 100px;position: relative">
                  <table cellspacing="0" cellpadding="0" class="seat_num" align="center">
                      <tbody>
                         <tr>
                             <td width="30" class="row_nums">1排</td>
                          </tr>
                         <tr>
                             <td width="30" class="row_nums">2排</td>
                          </tr>
                         <tr>
                             <td width="30" class="row_nums">3排</td>
                          </tr>
                          <tr>
                              <td width="30" class="row_nums">4排</td>
                           </tr>
                           <tr>
                             <td width="30" class="row_nums">5排</td>
                           </tr>
                            <tr>
                                <td width="30" class="row_nums">6排</td>
                             </tr>
                             <tr>
                                 <td width="30" class="row_nums">&nbsp;</td>
                             </tr>
                             <tr>
                                <td width="30" class="row_nums">7排</td>
                             </tr>
                              <tr>
                                <td width="30" class="row_nums">8排</td>
                             </tr>
                              <tr>
                                  <td width="30" class="row_nums">9排</td>
                               </tr>
                      </tbody>
                  </table>
                  <table cellspacing="0" cellpadding="0" class="seat_views" align="center">
                      <tbody>
                            <tr>
                                <td>
                                    <i class="seat_null" status="0" colname="">&nbsp;</i>
                                    <i class="seat_null" status="0" colname="">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排1座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排2座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排3座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排4座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排5座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排6座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排7座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排8座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排9座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排10座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排11座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排12座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排13座">&nbsp;</i>
                                    <i class="seat_null" status="0" colname="">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排14座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排15座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="1排16座">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null" status="0" colname="">&nbsp;</i>
                                    <i class="seat_null" status="0" colname="">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排1座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排2座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排3座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排4座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排5座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排6座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排7座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排8座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排9座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排10座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排11座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排12座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排13座">&nbsp;</i>
                                    <i class="seat_null" status="0" colname="">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排14座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排15座">&nbsp;</i>
                                    <i class="seat_ture" status="0" colname="2排16座">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_null">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                    <i class="seat_ture">&nbsp;</i>
                                </td>
                            </tr>
                      </tbody>
                  </table>
              </div>
            <div class="tc pt20">
                <span><i class="seat_ture vm"></i>可选座位</span>
                <span><i class="seat_selected vm"></i>已选座位</span>
                <span><i class="seat_false vm"></i>不可选座位</span>
                <span><i class="seat_lover vm"></i>情侣座位</span>
            </div>
          </div>
          <div class="floatRight pl12" style="width:23%;border-left: 1px solid #eeeeee">
              <div class="tick_right">
                  <h4>电影票</h4>
              </div>
              <div class="ticket_info">
                  <ul>
                      <li>
                          <div class="clearfix">
                              <div><img width="63" height="85" src="${pageContext.request.contextPath}/images/m1.png"></div>
                              <div><h4>《露水红颜》</h4><p>类型：爱情/剧情</p></div>
                          </div>
                      </li>
                      <li>影院：<h4>金逸湛江霞山店</h4></li>
                      <li>版本：<h4>2D 中文版</h4></li>
                      <li>场次：<h4>11月8日 17：10</h4></li>
                      <li>座位：<h4></h4></li>
                      <li>票价：<h4>38元/张</h4></li>
                      <li>票数：<h4>0</h4></li>
                      <li><div style="border:1px solid  #eeeeee"></div></li>
                      <li>总计：<strong class="font32 orange">￥0</strong></li>
                      <li><div class="mb12">接受兑换码手机号：</div><div><input type="text" name="mobilePhone" placeholder="请输入手机号码"/></div></li>
                      <li><div class="button">下一步</div></li>
                  </ul>
              </div>
          </div>
      </div>
</div>
<jsp:include page="/jsp/public/footer.jsp"/>
</body>
</html>
