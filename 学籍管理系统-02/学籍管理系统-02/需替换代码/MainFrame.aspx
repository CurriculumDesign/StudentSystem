<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainFrame.aspx.cs" Inherits="学籍管理系统_02.Default" %>

<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学籍管理系统</title>

<link href="themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="themes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>


<script src="js/jquery-1.7.2.js" type="text/javascript"></script>
<script src="js/jquery.cookie.js" type="text/javascript"></script>
<script src="js/jquery.validate.js" type="text/javascript"></script>
<script src="js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="xheditor/xheditor-1.2.1.min.js" type="text/javascript"></script>
<script src="xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="uploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>


<script type="text/javascript" src="chart/raphael.js"></script>
<script type="text/javascript" src="chart/g.raphael.js"></script>
<script type="text/javascript" src="chart/g.bar.js"></script>
<script type="text/javascript" src="chart/g.line.js"></script>
<script type="text/javascript" src="chart/g.pie.js"></script>
<script type="text/javascript" src="chart/g.dot.js"></script>

<script src="js/dwz.core.js" type="text/javascript"></script>
<script src="js/dwz.util.date.js" type="text/javascript"></script>
<script src="js/dwz.validate.method.js" type="text/javascript"></script>
<script src="js/dwz.regional.zh.js" type="text/javascript"></script>
<script src="js/dwz.barDrag.js" type="text/javascript"></script>
<script src="js/dwz.drag.js" type="text/javascript"></script>
<script src="js/dwz.tree.js" type="text/javascript"></script>
<script src="js/dwz.accordion.js" type="text/javascript"></script>
<script src="js/dwz.ui.js" type="text/javascript"></script>
<script src="js/dwz.theme.js" type="text/javascript"></script>
<script src="js/dwz.switchEnv.js" type="text/javascript"></script>
<script src="js/dwz.alertMsg.js" type="text/javascript"></script>
<script src="js/dwz.contextmenu.js" type="text/javascript"></script>
<script src="js/dwz.navTab.js" type="text/javascript"></script>
<script src="js/dwz.tab.js" type="text/javascript"></script>
<script src="js/dwz.resize.js" type="text/javascript"></script>
<script src="js/dwz.dialog.js" type="text/javascript"></script>
<script src="js/dwz.dialogDrag.js" type="text/javascript"></script>
<script src="js/dwz.sortDrag.js" type="text/javascript"></script>
<script src="js/dwz.cssTable.js" type="text/javascript"></script>
<script src="js/dwz.stable.js" type="text/javascript"></script>
<script src="js/dwz.taskBar.js" type="text/javascript"></script>
<script src="js/dwz.ajax.js" type="text/javascript"></script>
<script src="js/dwz.pagination.js" type="text/javascript"></script>
<script src="js/dwz.database.js" type="text/javascript"></script>
<script src="js/dwz.datepicker.js" type="text/javascript"></script>
<script src="js/dwz.effects.js" type="text/javascript"></script>
<script src="js/dwz.panel.js" type="text/javascript"></script>
<script src="js/dwz.checkbox.js" type="text/javascript"></script>
<script src="js/dwz.history.js" type="text/javascript"></script>
<script src="js/dwz.combox.js" type="text/javascript"></script>
<script src="js/dwz.print.js" type="text/javascript"></script>

<script src="js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        DWZ.init("dwz.frag.xml", {
            loginUrl: "login_dialog.html", loginTitle: "登录",	// 弹出登录对话框
            //		loginUrl:"Login.aspx",	// 跳到登录页面
            statusCode: { ok: 200, error: 300, timeout: 301 }, //【可选】
            pageInfo: { pageNum: "pageNum", numPerPage: "numPerPage", orderField: "orderField", orderDirection: "orderDirection" }, //【可选】
            debug: false,	// 调试模式 【true|false】
            callback: function () {
                initEnv();
                $("#themeList").theme({ themeBase: "themes" }); // themeBase 相对于index页面的主题base路径
            }
        });
    });

</script>
</head>

<body scroll="no">
	<div id="layout">
		<div id="header">
			<div class="headerNav">
				<a class="logo" href="">标志</a>
				<ul class="nav">
					<li><a href="changepwd.aspx" target="dialog" width="600">密码设置</a></li>
					<li><a href="Login.aspx">退出</a></li>
				</ul>
				<ul class="themeList" id="themeList">
					<li theme="azure"><div class="selected">蓝色</div></li>
					<li theme="green"><div>绿色</div></li>
					<!--<li theme="red"><div>红色</div></li>-->
					<li theme="purple"><div>紫色</div></li>
					<li theme="silver"><div>银色</div></li>
					<li theme="azure"><div>天蓝</div></li>
				</ul>
			</div>
			<!-- navMenu -->	
		</div>

		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse"><div></div></div>
				</div>
			</div>
			<div id="sidebar">
				<div class="toggleCollapse"><h2>主菜单</h2><div>收缩</div></div>

				<div class="accordion" fillSpace="sidebar">
					<div class="accordionHeader">
						<h2><span>Folder</span>学籍管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a href="tabsPage.html" target="navTab">学生基本信息</a>
								<ul>
					
                                    <li><a href="StudentInfo.aspx" target="navTab" rel="demo_page1">学生信息查询</a></li>
							        <li><a href="StudentScore.aspx" target="navTab" rel="demo_page2">学生成绩查询</a></li>
							        <li><a href="InsertStudent.aspx" target="navTab" rel="demo_page4">学生信息录入</a></li>
                                    <li><a href="InsertScore.aspx" target="navTab" rel="demo_page4">学生成绩录入</a></li>
								</ul>
							</li>
							<li><a>综合统计</a>
								<ul>
                                   <li><a href="ScoreTj.aspx" target="navTab" rel="demo_page1">成绩统计查询</a></li>
							       <li><a href="ScholarshipTj.aspx" target="navTab" rel="demo_page2">奖励统计查询</a></li>
								</ul>
							</li>
							<li><a>辅助功能</a>
								<ul>
                                    <li><a href="http://www.baidu.com" target="navTab" rel="page1">在线查询</a></li>	
								</ul>
							</li>
					</div>	
				</div>
			</div>
		</div>
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent"><!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span class="home_icon">我的主页</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div><!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div><!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">我的主页</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<%--<div class="accountInfo">
							<p><span>个人基本信息</span></p>
						</div>				
                        <table class="table" width="100%" layoutH="340">
		                <thead>
			        <tr>
	
				      <th width="100">学号</th>
				      <th width="100">姓名</th>
				       <th width="100">性别</th>
				        <th width="80">年龄</th>
				    <th width="120" align="center">班级</th>
				    <th width="120">家庭住址</th>
				    <th width="120">联系方式</th>
			        </tr>
		            </thead>
	
	    </table>--%>

    <div class="page unitBox">
						<%--<div class="accountInfo">
		
							
							<p><span>个人成绩</span></p>
							
						</div>
						
							
							
<table class="table" width="100%" layoutH="30">
		<thead>
			 <tr>
	
				      <th width="100">学号</th>
				<th width="100">姓名</th>
				<th width="100">班级</th>
				
				<th width="80" >语文</th>
                <th width="80" >数学</th>
                <th width="80" >英语</th>
                <th width="80" >物理</th>
                <th width="80" >化学</th>
                <th width="80" >生物</th>
				        
			        </tr>
		</thead>
		
	</table>--%>

<div class="divider"></div>

<pre style="margin:5px;line-height:1.4em;">
使用过程中任何疑问请联系宋雅蓉
</pre>
						</div>
						
						<div style="width:230px;position: absolute;top:60px;right:0" layoutH="80">
							<iframe width="100%" height="430" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?width=0&height=430&fansRow=2&ptype=1&skin=1&isTitle=0&noborder=1&isWeibo=1&isFans=0&uid=1739071261&verifier=c683dfe7"></iframe>
						</div>
					</div>
					
				</div>
			</div>
		</div>

	</div>

	<div id="footer">Copyright © 2014 宋雅蓉</div>

</body>
</html>