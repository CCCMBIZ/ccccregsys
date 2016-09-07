<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="span-2">
    <br/>
</div>
<div id="embeddedFlow" class="span-18"> 
    <p class="notice"><b>Recruit Volunteer徵求義工服事</b><br></p>
        <form:form id="volunteer" action="${flowExecutionUrl}" modelAttribute="form" acceptCharset="UTF-8">
        <table style="text-align: left; width: 1072px; height: 32px;" border="0"
               cellpadding="2" cellspacing="2">
            <tbody>
                <c:forEach items="${form.registrants}" varStatus="registrant">
                    <tr>
                        <td style="vertical-align: top; width: 200px;">
                            ${form.registrants[registrant.index].person.firstName} &#160; ${form.registrants[registrant.index].person.lastName} &#160; ${form.registrants[registrant.index].person.chineseName}
                        </td>
                        <td style="vertical-align: top; width: 200px;">
                            <p>招待 &nbsp;<form:checkbox path="registrants[${registrant.index}].volunteerJobs" value="USHERS"/></p>
                            <p>幼儿看顾 &nbsp;<form:checkbox path="registrants[${registrant.index}].volunteerJobs" value="NURSERY_HELPER"/></p>
                            <p>翻译 &nbsp;<form:checkbox path="registrants[${registrant.index}].volunteerJobs" value="INTERPRETER"/></p>
                            <p>飯食 &nbsp;<form:checkbox path="registrants[${registrant.index}].volunteerJobs" value="FOOD_SERVICE"/></p>
                        </td>
                        <td style="vertical-align: top; width: 400px;">
                            <p>陪谈 &nbsp;<form:checkbox path="registrants[${registrant.index}].volunteerJobs" value="FOLLOWUP"/></p>
                            <p>交通 &nbsp;<form:checkbox path="registrants[${registrant.index}].volunteerJobs" value="TRANSPORTATION"/></p>
                            <p>医疗 &nbsp;<form:checkbox path="registrants[${registrant.index}].volunteerJobs" value="MEDICAL_SUPPORT"/></p>
                            <p>禱告 &nbsp;<form:checkbox path="registrants[${registrant.index}].volunteerJobs" value="PRAYER_TEAM"/></p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <hr style="width: 700px; height: 2px;">
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <button id="cancel" type="submit" name="_eventId_cancel">Cancel</button>
        <button id="previous" type="submit" name="_eventId_previous">&lt;&lt; Previous</button>
        <button id="next" type="submit" name="_eventId_next">Next &gt;&gt;</button>
        <script type="text/javascript">
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'next', event: 'onclick', formId: 'volunteer', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'previous', event: 'onclick', formId: 'volunteer', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'cancel', event: 'onclick', formId: 'volunteer', popup: true, params: {fragments: "body"}}));
        </script>

    </form:form>
</div>


