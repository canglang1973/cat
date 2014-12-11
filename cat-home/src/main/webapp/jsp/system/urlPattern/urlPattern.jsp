<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="a" uri="/WEB-INF/app.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="res" uri="http://www.unidal.org/webres"%>
<%@ taglib prefix="w" uri="http://www.unidal.org/web/core"%>

<jsp:useBean id="ctx" type="com.dianping.cat.system.page.config.Context" scope="request"/>
<jsp:useBean id="payload" type="com.dianping.cat.system.page.config.Payload" scope="request"/>
<jsp:useBean id="model" type="com.dianping.cat.system.page.config.Model" scope="request"/>

<a:body>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#urlPatternList').addClass('active');
			$(".delete").bind("click", function() {
				return confirm("确定要删除此项目吗(不可恢复)？");
			});
		});
	</script>
	<div>
		<div class="row-fluid">
        <div class="span2">
		<%@include file="../configTree.jsp"%>
		</div>
		<div class="span10">
			<div>
			</br>
			<table class="table table-striped table-condensed table-bordered  table-hover" id="contents" width="100%">
			<thead>
				<tr >
					<th width="15%">唯一ID</th>
					<th width="15%">属于组</th>
					<th width="42%">Pattern内容</th>
					<th width="15%">项目组</th>
					<th width="13%">操作&nbsp;&nbsp;  <a class='btn btn-primary btn-sm' href="?op=urlPatternUpdate">新增</a></th>
				</tr></thead><tbody>

				<c:forEach var="item" items="${model.patternItems}"
					varStatus="status">
					<tr class="">
						<td>${item.name}</td>
						<td>${item.group}</td>
						<td>${item.pattern}</td>
						<td>${item.domain}</td>
						<td><a class='btn  btn-sm btn-primary'href="?op=urlPatternUpdate&key=${item.name}">编辑</a>
						<a class='delete btn  btn-sm btn-danger' href="?op=urlPatternDelete&key=${item.name}">删除</a></td>
					</tr>
				</c:forEach></tbody>
				</tbody>
			</table>
		</div>
		</div></div></div>
</a:body>