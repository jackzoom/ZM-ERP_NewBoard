<%@ Page Language="VB" AutoEventWireup="false" CodeFile="userSearch.aspx.vb" Inherits="demo_page_systemManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="../css/yuntheme.css" rel="stylesheet">
    <script type="text/javascript" src='../js/jquery.min.js'></script>
    <title>用户信息</title>
    <style type="text/css">
        body
        {
            background: #f3f3f4;
        }
    </style>
</head>
<body>
    <div id='clientinfo-iframe' class="wrapper wrapper-content">
        <div class="ibox float-e-margins">
        <table class="table table-bordered">
	        <caption>系统管理</caption>
	        <thead>
		        <tr>
			        <th>名称</th>
			        <th>城市</th>
			        <th>邮编</th>
		        </tr>
	        </thead>
	        <tbody>
		        <tr>
			        <td>Tanmay</td>
			        <td>Bangalore</td>
			        <td>560001</td>
		        </tr>
		        <tr>
			        <td>Sachin</td>
			        <td>Mumbai</td>
			        <td>400003</td>
		        </tr>
		        <tr>
			        <td>Uma</td>
			        <td>Pune</td>
			        <td>411027</td>
		        </tr>
	        </tbody>
        </table>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
          
        })
    </script>
</body>
</html>