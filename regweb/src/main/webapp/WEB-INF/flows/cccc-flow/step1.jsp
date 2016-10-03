<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript" src="<c:url value="/js/dynamicDropDown.js"/>">
</script>


<div class="span-2 colborder">
    <br/>
</div>
<div id="embeddedFlow" class="span-18">
    <p class="notice"><b>1. 请输入所屬教會/團契/查經班<br>
            Step 1 - Enter Church, Fellowship or Bible Study Group affiliation information</b></p>
    <li><font color='red'>有 * 号的拦目务必填写 (* indicates required field) <br></font></li>

    <form:form id="step1" action="${flowExecutionUrl}" modelAttribute="form" name="step1">
        <div>
            <form:errors path="*" cssClass="fieldError"/>
            <br/>
            <table border="0" cellspacing="0" cellpadding="0" width="968">
                <tr>
                    <td><strong>(1)請先選擇您的州Select your State first:</strong><br/>
                        <a href="javascript:changer('Illinois')">Illinois</a> | 
                        <a href="javascript:changer('California')">California</a> | 
                        <a href="javascript:changer('Iowa')">Iowa</a> | 
                        <a href="javascript:changer('Indiana')">Indiana</a> | 
                        <a href="javascript:changer('Kentucky')">Kentucky</a> | 
                        <a href="javascript:changer('Michigan')">Michigan</a> | 
                        <a href="javascript:changer('Missouri')">Missouri</a> | 
                        <a href="javascript:changer('Minnesota')">Minnesota</a> | 
                        <a href="javascript:changer('Pennsylvania')">Pennsylvania</a> | 
                        <a href="javascript:changer('Tennessee')">Tennessee</a> | 
                        <a href="javascript:changer('Texas')">Texas</a> | 
                        <a href="javascript:changer('Wisconsin')">Wisconsin</a> | 
                        <a href="javascript:changer('Ohio')">Ohio</a> | 
                        <a href="javascript:changer('North_Carolina')">North Carolina</a> | 
                        <a href="javascript:changer('Other')">Other</a>
                        <input type="hidden" name="theState"/>    
                        <br/>
                        <br/>
                        <strong>(2)教會/團契/查經班 Church, Fellowship or Bible Study Group: <font color='red'>*</font></strong><br/>
                        <form:select name="churchID" id="churchID" path="churchID" >
                            <form:option value="0" label="-- Select your state first --"/>                                        
                        </form:select>
                    </td>
                    <td width="248">報名日期Registered Date:<fmt:formatDate pattern="MM/dd/yyyy" value="${form.registrationDate}" /></td>
                </tr>
                <tr> 
                    <td colspan="3"> 
                        <p>如果您的教會不在名單上, 請選擇 Others并在此資料填上您的教會資料.If your church is not in the list above, please select <b>Others</b>, and enter information here</p>
                        <table  width="100%" border="0" cellspacing="2" cellpadding="1" >
                            <tbody>
                                <tr>
                                    <td style="width: 40%;">教會/團契/查經班名稱Church/Org Name：</td>
                                    <td><form:input path="churchName" name="churchName" size="20" maxlength="50"/></td>
                                </tr>
                                <tr>
                                    <td style="width: 40%;">城市City ：</td>
                                    <td><form:input path="churchCity" name="churchCity" size="10" maxlength="15"/></td>
                                </tr>
                                <tr>
                                    <td style="width: 40%;">州State：</td>
                                    <td><form:input path="churchState" size="5" maxlength="5"/></td>
                                </tr>
                                <tr>
                                    <td style="width: 40%;"> 教會聯絡人Contact Person：</td>
                                    <td><form:input path="coordinator" size="15" maxlength="15"/></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </table>

            <hr style="width: 80%; height: 2px;">
        </div>
        <button id="cancel" type="button" name="_eventId_cancel">Cancel</button>
        <button id="next" type="submit" name="_eventId_next">Next &gt;&gt;</button>
        <script type="text/javascript">
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'next', event: 'onclick', formId: 'step1', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'cancel', event: 'onclick', formId: 'step1', params: {fragments: "body"}}));
        </script>
    </form:form>
</div>

