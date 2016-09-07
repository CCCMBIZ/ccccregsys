<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="span-2">
    <br/>
</div>
<div id="embeddedFlow"  class="span-18">
    <p class="notice"><b>2. 请输入个人信息 （第一位输入的人为主报人）<br>step 2 - Enter individual information</b><br></p>

    <li><font color='red'>有 * 号的拦目务必填写 (* indicates required field) <br></font></li>

    <form:form id="step3" action="${flowExecutionUrl}" modelAttribute="form" acceptCharset="UTF-8">

        <table class="defaultTable" cellpadding="0" cellspacing="0">
            <thead class="defaultTableHeader">
                <tr>
                    <th rowspan="2">&#32;&#32;</th>
                    <th rowspan="2">中文名 Chinese Name</th>
                    <th rowspan="2">英文名 First Name</th>
                    <th rowspan="2">英文姓 Last Name</th>
                    <th rowspan="2">性別 Gender</th>
                    <th rowspan="2">年齡 Age</th>
                    <th rowspan="2">參加聚會</th>
                    <th rowspan="2">服事 Status</th>
                    <th rowspan="2">信仰 </th>
                    <th rowspan="2">(年)</th>
                    <th rowspan="2"></th>
                    <th  style="width:100px;">&#32;</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${form.registrants}" varStatus="registrant">
                    <tr>
                        <td colspan="14">
                            <form:errors path="registrants[${registrant.index}].person.firstName" cssClass="fieldError"/>
                            <form:errors path="registrants[${registrant.index}].person.lastName" cssClass="fieldError"/>
                            <form:errors path="registrants[${registrant.index}].person.gender" cssClass="fieldError"/>
                            <form:errors path="registrants[${registrant.index}].person.age" cssClass="fieldError"/>
                            <form:errors path="registrants[${registrant.index}].person.preferredLanguage" cssClass="fieldError"/>
                            <form:errors path="registrants[${registrant.index}].person.status" cssClass="fieldError"/>
                            <form:errors path="registrants[${registrant.index}].person.acceptedChrist" cssClass="fieldError"/>
                            <form:errors path="registrants[${registrant.index}].person.misc1" cssClass="fieldError"/>
                        </td>
                    </tr>
                    <tr>
                        <td><h4>${registrant.index+1} *</h4></td>
                        <td><form:input id="chineseName${registrant.index}" path="registrants[${registrant.index}].person.chineseName" size="10"/></td>
                        <td><form:input id="firstName${registrant.index}" path="registrants[${registrant.index}].person.firstName" size="10"/></td>
                        <td><form:input id="lastName${registrant.index}" path="registrants[${registrant.index}].person.lastName" size="10"/></td>
                        <td><form:radiobutton id="gender${registrant.index}" path="registrants[${registrant.index}].person.gender" value="M" label="男"/>
                            &#160;
                            <form:radiobutton id="gender${registrant.index}" path="registrants[${registrant.index}].person.gender" value="F" label="女"/>
                        </td>                                 
                        <td><form:select id="age${registrant.index}" path="registrants[${registrant.index}].person.age">
                                <form:option value="" label="-- 年齡 --" />
                                <form:options items="${form.ageGroup}" itemValue="value" itemLabel="label" />
                            </form:select></td>
                        <td>
                            <form:select id="language${registrant.index}" path="registrants[${registrant.index}].person.preferredLanguage">
                                <form:option value="" label="-- 參加 --"/>
                                <form:option value="M" label="Mandarin國"/>
                                <form:option value="E" label="English英"/>
                                <form:option value="C" label="Children童"/>
                                <form:option value="T" label="Nursery幼"/>
                            </form:select>
                        </td>
                        <td>
                            <form:select id="status${registrant.index}" path="registrants[${registrant.index}].person.status">
                                <form:option value="" label="-- 服事 --" />
                                <form:options items="${form.statusGroup}" itemValue="value" itemLabel="label" />
                            </form:select>
                        </td> 
                        <td>
                            <form:radiobutton path="registrants[${registrant.index}].person.acceptedChrist" value="false" label="未"/>&#160;
                            <form:radiobutton path="registrants[${registrant.index}].person.acceptedChrist" value="true" label="已"/>
                        </td>
                        <td>&#32;<form:input path="registrants[${registrant.index}].person.misc1" size="2" maxlength="2"/>
                        </td>
                        <td>&#32;
                        </td>
                        <td style="width:100px;">
                            <c:if test="${registrant.index != 0}">  
                                <button id="remove_${registrant.index}" type="submit" name="_eventId_delete" value="${registrant.index}" style="width:53px;" ><font size="2">-删除</font></button>
                                <script type="text/javascript">
                                    Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'delete_${registrant.index}', event: 'onclick', formId: 'step3', params: {fragments: "body", index: "${registrant.index}"}}));
                                </script>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="14">
                        <button id="edit_${registrant.index}" type="submit" name="_eventId_add" value="${registrant.index}">+ 添加同行家人資料</button>
                        <script type="text/javascript">
                            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'add_${registrant.index}', event: 'onclick', formId: 'step3', params: {fragments: "body", index: "${registrant.index}"}}));
                        </script>
                    </td>
                </tr>
                <tr>
                    <td colspan="14">
                        <form:checkbox path="misc1" label="我願意(有負擔)做義工,參與大会服事"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="14"><span class="style1">請務必填寫每欄空格。If  you wish to attend English-speaking   College and Adult  Program, you must please check the language preference box. Thanks.</span>
                        <p class="smalltext">
                            1)姓名表格"1" 代表是"主要報名者",請在表格內填寫"主要報名者"的聯絡資料,註冊訊息或大會資料將直接寄給他.一家人請填寫在同一張報名表內;個人報名者,請個別、單獨填寫一張報名表。<br/>
                            2)年齡：成人請填A2(18-29),A3(30-39),A4(40-49),A5(50-59),A6(60+);兒童(3-11歲)與青少年(12-17歲)請填實際年齡,以便分班.<br/>
                            3)青少年或孩童(4-17歲)若未有父母陪同而欲來參加大會，必須繳交permissionslip，細則請上www.cccm.ws.<br/>
                            4)參加聚會：按每人的年齡與需要勾選將參加的聚會。中(中文成人)、英(Grace 2015)、童(兒童節目)、幼(幼兒看顧).<br/>
                            5)服事： F（全職傳道）、P（教會牧者）、T（神學生）、N（機構同工）、C（校園同工）、E（教會長執）、S（小組或團契同工）
                            6)信仰：已信主受洗者請在第二格打勾( ),並填上（信主年數.未信者請在第一格打勾( )<br/>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
        <hr style="width: 80%; height: 2px;">
        <button id="cancel" type="submit" name="_eventId_cancel">Cancel</button>
        <button id="previous" type="submit" name="_eventId_previous">&lt;&lt; Previous</button>
        <button id="next" type="submit" name="_eventId_next">Next &gt;&gt;</button>
        <script type="text/javascript">
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'next', event: 'onclick', formId: 'step3', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'previous', event: 'onclick', formId: 'step3', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'cancel', event: 'onclick', formId: 'step3', popup: true, params: {fragments: "body"}}));
        </script>
    </form:form>
</div>

