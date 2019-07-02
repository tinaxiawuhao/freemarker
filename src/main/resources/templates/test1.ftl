<!DOCTYPE html>
<html>
<head>
    <meta charset="utf‐8">
    <title>Hello World!</title>
</head>
<body>
Hello ${name}!
<table>
    <tr>
        <td>序号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>钱包</td>
    </tr>
    <#list stus as stu>
        <tr>
        <td>${stu_index + 1}</td>
        <td>${stu.name}</td>
        <td>${stu.age}</td>
        <td>${stu.mondy}</td>
        </tr>
    </#list>
</table>
输出stu1的学生信息：<br/>
姓名：${stuMap['stu1'].name}<br/>
年龄：${stuMap['stu1'].age}<br/>
输出stu1的学生信息：<br/>
姓名：${stuMap.stu1.name}<br/>
年龄：${stuMap.stu1.age}<br/>
遍历输出两个学生信息：<br/>
<table>
    <tr>
        <td>序号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>钱包</td>
    </tr>
    <#list stuMap?keys as k>
        <tr>
        <td>${k_index + 1}</td>
        <td>${stuMap[k].name}</td>
        <td>${stuMap[k].age}</td>
        <td >${stuMap[k].mondy}</td>
        </tr>
    </#list>
</table><br/>
<table>
    <tr>
        <td>序号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>钱包</td>
        <td>朋友</td>
    </tr>
    <#list stus as stu>
        <tr>
        <td>${stu_index+1}</td>
        <td <#if stu.name =='小明'>style="background:red;"</#if>>${stu.name}</td>
        <td>${stu.age}</td>
        <td >${stu.mondy}</td>
        <td >${(stu.bestFriend)!'孤独症患者'}</td>
        </tr>
    </#list>
</table>
    显示年月日: ${today?date}<br/>
    显示时分秒：${today?time}<br/>
    显示日期+时间：${today?datetime} <br>
    自定义格式化： ${today?string("yyyy年MM月")}<br/>
    ${point?c}<br/>
    ${point}<br/>

    <#assign text="{'bank':'工商银行','account':'10101920201920212'}" />
    <#assign data=text?eval />
    开户行：${data.bank} 账号：${data.account}
</body>
</html>