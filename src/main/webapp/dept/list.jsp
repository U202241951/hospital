<%--
  Created by IntelliJ IDEA.
  User: 宋嘉仪
  Date: 2024/7/5
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 宋嘉仪
  Date: 2024/7/3
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
    <div class="padding border-bottom">
        <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加分类</button>
    </div>
    <%--    <table class="table table-hover text-center">--%>
    <%--        <tr>--%>
    <%--            <th width="5%">ID</th>--%>
    <%--            <th width="15%">一级分类</th>--%>
    <%--            <th width="10%">排序</th>--%>
    <%--            <th width="10%">操作</th>--%>
    <%--        </tr>--%>
    <table class="table admin-panel table-hover" width="800px" cellpadding="0" cellspacing="0">
        <tr>
            <td>编号</td>
            <td>科室名称</td>
            <td>上级科室编号</td>
            <td>科室级别</td>
            <td>科室路径</td>
            <td>科室描述</td>
            <td>描述</td>
        </tr>
    <c:forEach items="${pageInfo.list}" var="dept" varStatus="vs">
        <tr>
            <td>${vs.index+1}</td>
            <td>${dept.departmentName}</td>
            <td>${dept.departmentPid}</td>
            <td>${dept.departmentLevel}</td>
            <td>${dept.departmentPath}</td>
            <td>${dept.departmentDescription}</td>
            <td>
                <div class="button-group">
                    <a class="button border-main" href="edit.html?id=${item.id}"><span class="icon-edit"></span> 修改</a>
                    <a class="button border-red" href="javascript:void(0)" onclick="return del(${item.id})"><span class="icon-trash-o"></span> 删除</a>
                </div>
            </td>
        </tr>
    </c:forEach>
<%--    <tr>--%>
<%--        <td>1</td>--%>
<%--        <td>产品分类</td>--%>
<%--        <td>1</td>--%>
<%--        <td><div class="button-group"> <a class="button border-main" href="cateedit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>--%>
<%--    </tr>--%>
        <tr>
            <td colspan="8"><div class="pagelist ">
                <a href="/list?pageNum=${pageInfo.prePage}">上一页</a>
                <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                    <a href="/list?pageNum=${i }">${i}</a>
                </c:forEach>
<%--                <span class="current">1</span>--%>
<%--                <a href="">2</a>--%>
<%--                <a href="">3</a>--%>
                <c:if test="${pageInfo.isLastPage}">
                    <a href ="javascript:alert('已经是最后一页了')">下一页</a>
                </c:if>
                <c:if test="${not pageInfo.isLastPage}">
                    <a href ="/list?pageNum=${pageInfo.nextPage}">下一页</a>
                </c:if>

                <a href="/list?pageNum=${pageInfo.pages}">尾页</a>
            </div>
            </td>
        </tr>
    <%--        <tr>--%>
    <%--            <td>1</td>--%>
    <%--            <td>产品分类</td>--%>
    <%--            <td>1</td>--%>
    <%--            <td><div class="button-group"> <a class="button border-main" href="cateedit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>--%>
    <%--        </tr>--%>
    <%--        <tr>--%>
    <%--            <td>1</td>--%>
    <%--            <td>产品分类</td>--%>
    <%--            <td>1</td>--%>
    <%--            <td><div class="button-group"> <a class="button border-main" href="cateedit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>--%>
    <%--        </tr>--%>
    <%--        <tr>--%>
    <%--            <td>1</td>--%>
    <%--            <td>产品分类</td>--%>
    <%--            <td>1</td>--%>
    <%--            <td><div class="button-group"> <a class="button border-main" href="cateedit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>--%>
    <%--        </tr>--%>
    <%--        <tr>--%>
    <%--            <td>1</td>--%>
    <%--            <td>产品分类</td>--%>
    <%--            <td>1</td>--%>
    <%--            <td><div class="button-group"> <a class="button border-main" href="cateedit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>--%>
    <%--        </tr>--%>
    <%--        <tr>--%>
    <%--            <td>1</td>--%>
    <%--            <td>产品分类</td>--%>
    <%--            <td>1</td>--%>
    <%--            <td><div class="button-group"> <a class="button border-main" href="cateedit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>--%>
    <%--        </tr>--%>
    </table>
</div>
<script type="text/javascript">
    function del(id,mid){
        if(confirm("您确定要删除吗?")){

        }
    }
</script>
<div class="panel admin-panel margin-top">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加内容</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="">
            <div class="form-group">
                <div class="label">
                    <label>上级分类：</label>
                </div>
                <div class="field">
                    <select name="pid" class="input w50">
                        <option value="">请选择分类</option>
                        <option value="">产品分类</option>
                        <option value="">产品分类</option>
                        <option value="">产品分类</option>
                        <option value="">产品分类</option>
                    </select>
                    <div class="tips">不选择上级分类默认为一级分类</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>分类标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="title" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>批量添加：</label>
                </div>
                <div class="field">
                    <textarea type="text" class="input w50" name="tits" style="height:150px;" placeholder="多个分类标题请转行"></textarea>
                    <div class="tips">多个分类标题请转行</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>关键字标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="s_title" />
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>分类关键字：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="s_keywords" />
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>关键字描述：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="s_desc"/>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>排序：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="sort" value="0"  data-validate="number:排序必须为数字" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>

