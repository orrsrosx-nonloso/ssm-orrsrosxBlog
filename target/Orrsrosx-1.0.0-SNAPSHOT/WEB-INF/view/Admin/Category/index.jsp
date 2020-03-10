<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

    <rapid:override name="title">
        - 分类列表
    </rapid:override>
<rapid:override name="header-style">
    <style>
        /*覆盖 layui*/
        .layui-input-block {
            margin:0px 10px;
        }
        .layui-table {
            margin-top: 0;
        }
        .layui-col-md4 {
            padding:10px;
        }
        .layui-col-md8 {
            padding:10px;
        }
        .layui-btn {
            margin: 2px 0!important;
        }
    </style>
</rapid:override>

<rapid:override name="content">

    <blockquote class="layui-elem-quote">
        <span class="layui-breadcrumb" lay-separator="/">
              <a href="/admin">首页</a>
              <a href="/admin/category">分类列表</a>

        </span>
    </blockquote>
    <div class="layui-row">

        <div class="layui-col-md8" >
            <table class="layui-table" >
                <colgroup>
                    <col width="300">
                    <col width="100">
                    <col width="100">
                    <col width="100">
                    <col width="50">
                    <col width="50">
                </colgroup>
                <thead>
                <tr>
                    <th>名称</th>

                    <th>操作</th>
                    <th>ID</th>
                    <th>pid</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${categoryList}" var="c">

                        <tr>
                            <td>
                                <a href="/category/${c.categoryId}" target="_blank">${c.categoryName}</a>
                            </td>

                            <td>

                                    <a href="/admin/category/delete/${c.categoryId}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirmDelete()">删除</a>

                            </td>
                            <td>${c.categoryId}</td>
                            <td>${c.categoryPid}</td>
                        </tr>




                </c:forEach>
                </tbody>
            </table>
            <blockquote class="layui-elem-quote layui-quote-nm">
                温馨提示：
                <ul>
                    <li>这是分类</li>
                    <li>相关功能像也不要想</li>
                </ul>
            </blockquote>
        </div>
    </div>






</rapid:override>
<rapid:override name="footer-script">

</rapid:override>

<%@ include file="../Public/framework.jsp"%>
