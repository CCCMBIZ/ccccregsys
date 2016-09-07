<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="span-2">
    <br/>
</div>
<div id="embeddedFlow" class="span-18">
    <p class="success">网上注册成功!</p>

    <div id="content" >
        <p>亲爱的弟兄姊妹Dear brother/sister</p>
        <br/>
        <p>
            谢谢您报名参加芝加哥華人基督徒大會2015！您在网上报名的大会为：${form.formID}。您注册的详细资料如下：Thank you for registering for Chicago Chinese Christian Conference!
        </p>
        <br/>
        <br/>
        <p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;">
            <c:forEach items="${form.registrants}" var="registrant" varStatus="count">
                <span lang="ZH-CN" style="font-size: 11pt; font-family: SimHei; color: blue;">
                    ${registrant.person.chineseName} ${registrant.person.firstName} ${registrant.person.lastName}<br/>
                </span>
            </c:forEach>
        </p>
        <br/>
        <p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;">
            <span lang="ZH-CN" style="font-size: 11pt; font-family: SimHei; color: blue;">
                用餐：${form.registrants.size()}人${form.expense.lunchCount + form.expense.dinnerCount}餐：
            </span>
        </p>
        <br/>
        <p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;">
            <span lang="ZH-CN" style="font-size: 12pt; font-family: SimHei; color: blue;">
                您已经在网上支付大会费用：${form.paymentCurrency} $${form.expense.totalMealsFee + form.expense.totalRegistrationFee}，其中报名费：${form.paymentCurrency} $${form.expense.totalRegistrationFee}，餐费：${form.paymentCurrency} $${form.expense.totalMealsFee}。
            </span>
        </p>
        <br/>
        <h3><span class="Heading3Char">住宿Lodging Reservation</span>:</h3>
        <p>
            請在 12/17 前直接向 Pheasant Run Resort 旅館訂房與繳費，每房（可住 1~4 人）每晚 $65(稅後)，先訂先得；大會不負責房間登記。訂房時，請電 1-800-474-3272 指名 “CCCM Group” 以享受大會優惠，或上網 <a href="javascript:void(0)" onclick="window.open('https://bookings.ihotelier.com/bookings.jsp?groupID=1426870&hotelID=2932', 'Pheasant Run Resort', 'height=500,width=700,menubar=yes,toolbar=yes,directories=yes,location=yes,resizable=yes,scrollbars=yes');">Pheasant Run Resort Hotel Reservation</a>  連線至旅館，以享受大會優惠。若有問題請電 847-868-2226 (葉麗玲)。
        </p>
        <h3><span class="Heading3Char">申請補助Financial Support</span>:</h3>
        <p>
            申請補助金者，請直接與葛甦姊妹聯繫(su6yliu@gmail.com)
        </p>
        <h3><span class="Heading3Char">詢問處Question</span>:</h3>
        <p>
            CCCM Phone芝華宣道的電話: 8478682226<br/>
            Email: cccc.register.1@gmail.com​<br/>
        </p>
        <h3><span class="Heading3Char">奉献Donation</span>:</h3>
        <p>
            大會開支約1/4 來自報名費，其餘尚需會眾與教會奉献補足。支票抬頭請寫CCCM <br/>
            Registration fee covers only 25% of the conference expenses and operational costs which depend largely on your generous donations. You can make your tax deductible contribution to CCCC 2015 and/or GRACE 2015 by making a separate check to CCCM and please mail it to the address listed below.
        </p>
        <br/>
        <p>
            Mail to:<br/>
            CCCM (Chicago Chinese Christian Missions)<br/>
            631 Illinois Route 83<br/>
            Suite 204<br/>
            Bensenville, IL 60106
        </p>
        <br/>
        <p>Thank you for your generous heart!
            CCCC/GRACE 2015 Coordinators</p>
        <br/>
    </div>
    <p>
        <a id="startFlow" href="cccc-flow">Start Over</a>
        <script type="text/javascript">
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: "startFlow", event: "onclick", params: {fragments: "body", mode: "embedded"}}));
        </script>
    </p>	
</div>
