<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="span-2">
    <br/>
</div>
<div id="embeddedFlow" class="span-18"> 
    <p class="notice"><b>Order Meals 勾選餐點</b><br></p>

    <form:form id="mealPlan" action="${flowExecutionUrl}" modelAttribute="form" acceptCharset="UTF-8">

        <table style="border-collapse: collapse; width: 617px;" border="0"
               cellpadding="0" cellspacing="0">
            <col style="width: 74pt;" width="98"> <col style="width: 5pt;"
                                                       width="6"> <col style="width: 123pt;" width="164"> <col
                                                       style="width: 124pt;" width="165"> <col style="width: 123pt;"
                                                       width="164"> <col style="width: 124pt;" width="165"> 
            <thead>
                <tr style="height: 31.5pt;" height="42">
                    <td class="xl66" style="height: 31.5pt; width: 74pt;" height="42" width="98"> 
                    </td>
                    <td class="xl67" style="width: 5pt;" width="6">&nbsp;</td>
                    <td class="xl69" style="width: 128px; font-weight: bold;">12/27
                        (Sun)</td>
                    <td class="xl69" style="width: 129px; font-weight: bold;">12/28
                        (Mon)</td>
                    <td class="xl69" style="width: 127px; font-weight: bold;">12/29
                        (Tue)</td>
                    <td class="xl69" style="width: 123px; font-weight: bold;">12/30
                        (Wed)</td>
                </tr>
            </thead>
            <tbody>
                <tr style="height: 25pt;" height="47">
                    <td class="xl70" style="height: 35.25pt; font-weight: bold;" height="47">Breakfast $5.5</td>
                    <td class="xl67">&nbsp;</td>
                    <td style="width: 128px; font-family: monospace;" class="xl68">&nbsp;</td>
                    <td style="width: 129px;" class="xl66">PANDA</td>
                    <td style="width: 127px;" class="xl66">PANDA</td>
                    <td style="width: 123px;" class="xl66">PANDA</td>
                </tr>
                <tr style="height: 25pt;" height="34">
                    <td colspan="1" rowspan="1" class="xl66" style="height: 25.5pt;"
                        height="34">main<br>
                        secondary<br>
                        beverage<br>
                        fruits<br>
                        others</td>
                    <td colspan="1" rowspan="1" class="xl67">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td colspan="1" rowspan="1"
                        style="width: 128px; font-family: monospace;" class="xl66"> <br>
                    </td>
                    <td colspan="1" rowspan="1" style="width: 129px;" class="xl73">
                        皮蛋瘦肉粥<br>
                        Cheerios<br>
                        Milk (400)<br>
                        Seasonal<br>
                        中式麺包
                    </td>
                    <td colspan="1" rowspan="1" style="width: 127px;" class="xl66">
                        玉米鸡肉粥<br>
                        Cheerios<br>
                        Milk (400)<br>
                        Seasonal<br>
                        中式麺包
                    </td>
                    <td colspan="1" rowspan="1" style="width: 123px;" class="xl73">
                        皮蛋瘦肉粥<br>
                        Cheerios<br>
                        Milk (400)<br>
                        Seasonal<br>
                        中式麺包
                    </td>
                </tr>
                <tr style="height: 6pt;" height="8">
                    <td style="height: 6pt;" height="8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="width: 128px; font-family: monospace;" class="xl67">&nbsp;</td>
                    <td style="width: 129px;" class="xl67">
                        <form:select id="breakfast2" path="registrants[0].mealplan.breakfast2">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                    <td style="width: 127px;" class="xl67">
                        <form:select id="breakfast3" path="registrants[0].mealplan.breakfast3">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                    <td style="width: 123px;" class="xl67">
                        <form:select id="breakfast4" path="registrants[0].mealplan.breakfast4">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                </tr>

                <tr>
                    <td style="vertical-align: top;"> <br>
                    </td>
                    <td style="vertical-align: top;"> <br>
                    </td>
                    <td style="vertical-align: top; width: 128px;"> <br>
                    </td>
                    <td style="vertical-align: top; width: 9;"> <br>
                    </td>
                    <td style="vertical-align: top; width: 127px;"> <br>
                    </td>
                    <td style="vertical-align: top; width: 123px;"> <br>
                    </td>
                </tr>
                <tr style="height: 39pt;" height="52">
                    <td class="xl70" style="height: 39pt; font-weight: bold;" height="52">Lunch $5.5</td>
                    <td class="xl67">&nbsp;</td>
                    <td style="width: 128px; font-family: monospace;" class="xl68">&nbsp;</td>
                    <td style="width: 129px;" class="xl72">COSTCO</td>
                    <td style="width: 127px;" class="xl71">PANDA</td>
                    <td style="width: 123px;" class="xl72">COSTCO</td>
                </tr>
                <tr style="height: 47.25pt;" height="63">
                    <td colspan="1" rowspan="1" style="height: 47.25pt;" height="63">
                        main<br>
                        secondary<br>
                        beverage<br>
                        fruits<br>
                        others</td>
                    <td colspan="1" rowspan="1"></td>
                    <td colspan="1" rowspan="1"
                        style="width: 128px; font-family: monospace;"> <br>
                    </td>
                    <td colspan="1" rowspan="1" class="xl74" style="width: 129px;">
                        西式简餐<font size="-10">Chicken Salad Sandwich</font><br>
                        Chips<br>
                        Water<br>
                        N/A<br>
                        N/A</td>
                    <td colspan="1" rowspan="1" class="xl74" style="width: 127px;">
                        中式饭盒-扬州捞面/<font size="-10">Chicken Nuggets</font><br>
                        甜酸萝卜<br>
                        Water<br>
                        N/A<br>
                        N/A</td>
                    <td colspan="1" rowspan="1" class="xl74" style="width: 123px;">
                        西式简餐/<font size="-10">Chicken Swiss Roller</font><br>
                        Chips<br>
                        Water<br>
                        N/A<br>
                        N/A</td>
                </tr>
                <tr style="height: 6.75pt;" height="9">
                    <td class="xl67" style="height: 6.75pt;" height="9">&nbsp;</td>
                    <td class="xl67">&nbsp;</td>
                    <td style="width: 128px;" class="xl67">&nbsp;</td>
                    <td style="width: 129px;" class="xl67">
                        <form:select id="lunch2" path="registrants[0].mealplan.lunch2">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                    <td style="width: 127px;" class="xl67">
                        <form:select id="lunch3" path="registrants[0].mealplan.lunch3">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                    <td style="width: 123px;" class="xl67">
                        <form:select id="lunch4" path="registrants[0].mealplan.lunch4">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;"> <br>
                    </td>
                    <td style="vertical-align: top;"> <br>
                    </td>
                    <td style="vertical-align: top; width: 128px;"> <br>
                    </td>
                    <td style="vertical-align: top; width: 129px;"> <br>
                    </td>
                    <td style="vertical-align: top; width: 127px;"> <br>
                    </td>
                    <td style="vertical-align: top; width: 123px;"> <br>
                    </td>
                </tr>
                <tr style="height: 39.75pt;" height="53">
                    <td class="xl70" style="height: 39.75pt; font-weight: bold;"
                        height="53">Dinner $9</td>
                    <td class="xl67">&nbsp;</td>
                    <td style="width: 128px;" class="xl66">PANDA</td>
                    <td style="width: 129px;" class="xl66">PANDA</td>
                    <td style="width: 127px;" class="xl66">PANDA</td>
                    <td style="width: 123px;" class="xl68">&nbsp;</td>
                </tr>
                <tr style="height: 34.5pt;" height="46">
                    <td colspan="1" rowspan="1" class="xl66" style="height: 34.5pt;"
                        height="46">main<br>
                        secondary<br>
                        beverage<br>
                        fruits<br>
                        others</td>
                    <td colspan="1" rowspan="1">&nbsp;</td>
                    <td colspan="1" rowspan="1" style="width: 128px;">
                        中式饭盒-椒盐鱼片<br>
                        时菜<br>
                        Water<br>
                        N/A<br>
                        Steam Rice</td>
                    <td colspan="1" rowspan="1" style="width: 129px;">
                        中式饭盒-白蘿蔔牛腩<br>
                        时菜</font><br>
                        Water<br>
                        N/A<br>
                        Steam Rice</td>
                    <td colspan="1" rowspan="1" style="width: 127px;">
                        中式饭盒-黑椒牛柳<br>
                        时菜<br>
                        Water<br>
                        N/A<br>
                        Steam Rice</td>
                    <td colspan="1" rowspan="1" style="width: 123px;"> <br>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;"> <br>
                    </td>
                    <td style="vertical-align: top;"><br>
                    </td>
                    <td style="vertical-align: top;">
                        <form:select id="dinner1" path="registrants[0].mealplan.dinner1">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                    <td style="vertical-align: top;">
                        <form:select id="dinner2" path="registrants[0].mealplan.dinner2">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                    <td style="vertical-align: top;">
                        <form:select id="dinner3" path="registrants[0].mealplan.dinner3">
                            <form:option value="0" />
                            <form:option value="1" />
                            <form:option value="2" />
                            <form:option value="3" />
                            <form:option value="4" />
                            <form:option value="5" />
                            <form:option value="6" />
                        </form:select>份
                    </td>
                    <td style="vertical-align: top;">N/A<br>
                    </td>
                </tr>
            </tbody>
        </table>

        <hr style="width: 80%; height: 2px;">
        <button id="cancel" type="submit" name="_eventId_cancel">Cancel</button>
        <button id="previous" type="submit" name="_eventId_previous">&lt;&lt; Previous</button>
        <button id="next" type="submit" name="_eventId_next">Next &gt;&gt;</button>
        <script type="text/javascript">
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'next', event: 'onclick', formId: 'mealPlan', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'previous', event: 'onclick', formId: 'mealPlan', params: {fragments: "body"}}));
            Spring.addDecoration(new Spring.AjaxEventDecoration({elementId: 'cancel', event: 'onclick', formId: 'mealPlan', popup: true, params: {fragments: "body"}}));
        </script>

    </form:form>
</div>


