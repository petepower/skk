<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>

<!---------主体------------------>
<div class="container" style="margin-top: 100px;">
	<div class="row">
		<div class="col-sm-4">
			<div class="mc-title">
			</div>
			<div id="treeview4" class=""></div>
		</div>
		<div class="col-sm-8" style="border: 1px solid black; height: 600px">
			content</div>
	</div>

</div>
<script>
	$(function() {
		var defaultData = [ {
			text : '个人管理',
			href : '#parent1',
			tags : [ '3' ],
			nodes : [ {
				text : '个人中心',
				href : '#child1',
				tags : [ '0' ]
			}, {
				text : '资料管理',
				href : '#child2',
				tags : [ '0' ]
			}, {
				text : '安全管理',
				href : '#child3',
				tags : [ '0' ]
			} ]
		}, {
			text : '资源管理',
			href : '#parent2',
			tags : [ '2' ],
			nodes : [ {
				text : '我的上传',
				href : '#child1',
				tags : [ '0' ]
			}, {
				text : '我的下载',
				href : '#child2',
				tags : [ '0' ]
			} ]
		}, {
			text : 'Parent 3',
			href : '#parent3',
			tags : [ '0' ]
		}, {
			text : 'Parent 4',
			href : '#parent4',
			tags : [ '0' ]
		}, {
			text : 'Parent 5',
			href : '#parent5',
			tags : [ '0' ]
		} ];
		$('#treeview4').treeview({

			color : "#428bca",
			data : defaultData
		});
	})
</script>