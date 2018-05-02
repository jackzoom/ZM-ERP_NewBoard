<%@ Page Language="VB" AutoEventWireup="false" CodeFile="userAdd.aspx.vb" Inherits="demo_page_clientInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

           <%--<div class="row">
              <div class="col-xs-12 col-sm-6 col-md-3">内容1</div>
              <div class="col-xs-12 col-sm-6 col-md-3">内容2</div>
              <div class="col-xs-12 col-sm-6 col-md-3">内容3</div>
              <div class="col-xs-12 col-sm-6 col-md-3">内容4</div>              
            </div>   --%>      

            <div style='overflow-x: auto;' class=''>
                <table class="table table-bordered table-striped  client-table">
                    <thead>
                        <th>
                            #
                        </th>
                        <th>
                            姓
                        </th>
                        <th>
                            名
                        </th>
                        <th>
                            用户名
                        </th>
                        <th>
                            用户名
                        </th>
                        <th>
                            用户名
                        </th>
                        <th>
                            用户名
                        </th>
                        <th>
                            用户名
                        </th>
                    </thead>
                    <tbody>
                        <tr >
                            <td>
                                1
                            </td>
                            <td>
                                张
                            </td>
                            <td>
                                张三
                            </td>
                            <td>
                                @mdo
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                        </tr>
                        <tr>
                            <td>
                                2
                            </td>
                            <td>
                                李
                            </td>
                            <td>
                                李四
                            </td>
                            <td>
                                @fat
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                        </tr>
                        <tr>
                            <td>
                                3
                            </td>
                            <td>
                                王
                            </td>
                            <td>
                                王五
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                            <td>
                                @twitter
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
           
        })
    </script>
</body>
</html>
