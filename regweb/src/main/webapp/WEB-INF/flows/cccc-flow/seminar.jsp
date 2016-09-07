<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="span-2">
    <br/>
</div>
<div id="embeddedFlow" class="span-18"> 
    <p class="notice"><b>Seminar專題講座題目與時間</b><br></p>
        <form:form id="seminar" action="${flowExecutionUrl}" modelAttribute="form" acceptCharset="UTF-8">
        <table border="1" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td rowspan="4" width="8"><br/>
                    </td>
                    <td rowspan="4" width="340"><br/>
                    </td>
                    <td colspan="5" bgcolor="#ccffff">
                        <p style="text-align: center; line-height: 11pt;" align="center"><b>成
                                人中文專題研討登記表 </b></p>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <p style="text-align: center; line-height: 10pt;" align="center">請
                            參考下面「專題研討表」，每人在每一時段請選一個專題，並將編號填入下面欄位（兒童,青少年免填寫）。 </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <p style="text-align: center; line-height: 10pt;" align="center">12/28星期一下午</p>
                    </td>
                    <td colspan="3">
                        <p style="text-align: center; line-height: 10pt;" align="center">12/29星期二下午</p>
                    </td>
                </tr>
                <tr>
                    <td width="99">
                        <p style="text-align: center; line-height: 10pt;" align="center"><b>專
                                題時段#1</b> </p>
                    </td>
                    <td width="100">
                        <p style="text-align: center; line-height: 10pt;" align="center"><b>專
                                題時段#2</b> </p>
                    </td>
                    <td width="100">
                        <p style="text-align: center; line-height: 10pt;" align="center"><b>專
                                題時段#3</b> </p>
                    </td>
                    <td width="100">
                        <p style="text-align: center; line-height: 10pt;" align="center"><b>專
                                題時段#4</b> </p>
                    </td>
                </tr>
                <c:forEach items="${form.registrants}" varStatus="registrant">
                    <tr>
                        <c:set var="index" value="${registrant.index}"/>
                        <td><strong>${registrant.index+1}</strong></td>
                        <td width="340">${form.registrants[index].person.firstName} &#160; ${form.registrants[index].person.lastName} &#160; ${form.registrants[index].person.chineseName}</td>
                        <td width="99">
                            <form:select path="registrants[${registrant.index}].seminar.session1" multiple="false"> 
                                <form:option value="" label="-- 專題 --"/> 
                                <form:option value="T1" label="T1"/> 
                                <form:option value="U1" label="U1"/> 
                                <form:option value="L1" label="L1"/> 
                                <form:option value="A1" label="A1"/> 
                                <form:option value="M" label="M"/> 
                                <form:option value="R" label="R"/>
                                <form:option value="C" label="C"/> 
                            </form:select><br/>
                        </td>
                        <td width="100">
                            <form:select path="registrants[${registrant.index}].seminar.session2" multiple="false"> 
                                <form:option value="" label="-- 專題 --"/> 
                                <form:option value="T2" label="T2"/> 
                                <form:option value="U2" label="U2"/> 
                                <form:option value="L2" label="L2"/>
                                <form:option value="A2" label="A2"/>
                                <form:option value="N" label="N"/>
                                <form:option value="W" label="W"/> 
                                <form:option value="D" label="D"/>
                            </form:select><br/>
                        </td>
                        <td width="100">
                            <form:select path="registrants[${registrant.index}].seminar.session3" multiple="false"> 
                                <form:option value="" label="-- 專題 --"/> 
                                <form:option value="H1" label="H1"/>
                                <form:option value="K1" label="K1"/>
                                <form:option value="J1" label="J1"/>
                                <form:option value="E1" label="E1"/>
                                <form:option value="Q" label="Q"/>
                                <form:option value="S" label="S"/>
                                <form:option value="B" label="B"/>
                            </form:select><br/>
                        </td>
                        <td width="100">
                            <form:select path="registrants[${registrant.index}].seminar.session4" multiple="false"> 
                                <form:option value="" label="-- 專題 --"/> 
                                <form:option value="H2" label="H2"/> 
                                <form:option value="K2" label="K2"/> 
                                <form:option value="J2" label="J2"/> 
                                <form:option value="E2" label="E2"/> 
                                <form:option value="P" label="P"/>
                                <form:option value="V" label="V"/>
                                <form:option value="F" label="F"/>
                            </form:select><br/>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <hr style="width: 100%; height: 2px;">
        <p style="line-height: 12pt;"><b>IV. </b><b>成人中文專題研討表</b>
            每人每一時段請選一專題，在上面專題登記表填入編號。大會將按登記人數和場地容量作最後的分配。(所有信息將在會後製作光碟， 請注意訂購單的服務) 
        </p>
        <table border="1" cellpadding="0" cellspacing="0" width="666">
            <tbody>
                <tr>
                    <td width="336">
                        <p align="center"> 12/28 (Mon) </p>
                    </td>
                    <td width="330">
                        <p align="center"> 12/29 (Tue) </p>
                    </td>
                </tr>
                <tr>
                    <td width="336">
                        <p align="center"> <b>專題時段#1 (2:30-3:45pm)</b> </p>
                    </td>
                    <td width="330">
                        <p align="center"> <b>專題時段#3 (2:30-3:45pm)</b> </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="336">
                        <p> T1 與90後溝通倫理的問題 (談妮) </p>
                        <p> U1 你是"神職"人員 (林修榮) </p>
                        <p> L1 培養子女對性與親密關係的認識 (葉顏瑋茵) </p>
                        <p> A1 伊斯蘭教的擴展：危機？契機？ (賴木森) </p>
                        <p> M 生命再燃火花 / 揮別「屬靈老油條」 (杜明達) </p>
                        <p> R 培養與父母的fu (陳欽文) </p>
                        <p> C 操練跨文化，處處都得益 (友尼基) </p>
                    </td>
                    <td valign="top" width="330">
                        <p> H1 和穆同居 (Roy Oksnevad) </p>
                        <p> K1 婚姻中的理財之道 (林修榮) </p>
                        <p> J1 面對青少年孩子的憂鬱問题 (葉顏瑋茵) </p>
                        <p> E1 喚醒沈睡的宣教巨人 (陳天合) </p>
                        <p> Q 壓力山大!! 怎麼辦？ (談妮) </p>
                        <p> S 尋找你的ta (陳欽文) </p>
                        <p> B 未得之民-當今宣教無法迴避的議題 (賴木森) </p>
                    </td>
                </tr>
                <tr>
                    <td width="336">
                        <p align="center"> <b>專題時段#2 (4:00-5:15pm)</b> </p>
                    </td>
                    <td width="330">
                        <p align="center"> <b>專題時段#4 (4:00-5:15pm)</b> </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="336">
                        <p> T2 與90後溝通倫理的問題 (談妮) </p>
                        <p> U2 你是"神職"人員 (林修榮) </p>
                        <p> L2 培養子女對性與親密關係的認識 (葉顏瑋茵) </p>
                        <p> A2 伊斯蘭教的擴展：危機？契機？ (賴木森) </p>
                        <p> N 生命再燃火花 / 治癒「禱告冷感症」 (杜明達) </p>
                        <p> W 如何向未信的家人傳福音 (張志剛)</p>
                        <p> D 看，他們踏出了佳美的腳蹤！ (王利民) </p>
                    </td>
                    <td valign="top" width="330">
                        <p> H2 和穆同居 (Roy Oksnevad) </p>
                        <p> K2 婚姻中的理財之道 (林修榮) </p>
                        <p> J2 面對青少年孩子的憂鬱問题 (葉顏瑋茵) </p>
                        <p> E2 喚醒沈睡的宣教巨人 (陳天合) </p>
                        <p> P 生命再燃火花 / 熟練「靈命健身操」 (杜明達) </p>
                        <p> V 福音的"四有" (張志剛) </p>
                        <p> F 從短宣到長宣的心路歷程 (友尼基) </p>
                    </td>
                </tr>
            </tbody>
        </table>
        <hr style="width: 100%; height: 2px;">
        <button id="cancel" type="submit" name="_eventId_cancel">Cancel</button>
        <button id="previous" type="submit" name="_eventId_previous">&lt;&lt; Previous</button>
        <button id="next" type="submit" name="_eventId_next">Next &gt;&gt;</button>
        <script type="text/javascript">
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'next', event: 'onclick', formId: 'seminar', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'previous', event: 'onclick', formId: 'seminar', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'cancel', event: 'onclick', formId: 'seminar', popup: true, params: {fragments: "body"}}));
        </script>

    </form:form>
</div>


