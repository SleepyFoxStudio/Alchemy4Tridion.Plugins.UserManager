<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Clone User</title>

</head>
<link rel="stylesheet" type="text/css" href="${CssUrl}/UserManagerPopup.css" />
<link rel="stylesheet" type="text/css" href="${CssUrl}/tablesort.css" />
<script type="text/javascript">
    jQuery = Alchemy.library("jQuery");
</script>
<script type="text/javascript" src="${JsUrl}/tablesort.js"></script>
<body>
    <h1>Clone User</h1>


    <table class="table-sort table-sort-search">
        <thead>
            <tr>
                <th class="table-sort">First Name</th>
                <th class="table-sort">Last Name</th>
                <th class="table-sort">Email</th>
                <th>Phone Number</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>John</td>
                <td>Smith</td>
                <td><a href="mailto:john.s@gmail.com">john.s@gmail.com</a></td>
                <td>(613) 873-2982</td>
            </tr>
            <tr>
                <td>Sean</td>
                <td>MacIsaac</td>
                <td><a href="mailto:seanjmacisaac@gmail.com">seanjmacisaac@gmail.com</a></td>
                <td>(613) 871-6191</td>
            </tr>
            <tr>
                <td>Tim</td>
                <td>Zarby</td>
                <td><a href="mailto:zarbytown214@hotmail.com">zarbytown214@hotmail.com</a></td>
                <td>(613) 743-5389</td>
            </tr>
            <tr>
                <td>Andrew</td>
                <td>Nichols</td>
                <td><a href="mailto:andy_money2003@gmail.com">andy_money2003@gmail.com</a></td>
                <td>(613) 741-3384</td>
            </tr>
            <tr>
                <td>Ally</td>
                <td>O'Neil</td>
                <td><a href="mailto:allyoneil@gmail.com">allyoneil@gmail.com</a></td>
                <td>(613) 642-9831</td>
            </tr>
        </tbody>
    </table>


    <script type="text/javascript">
        jQuery(function () {
            jQuery('table.table-sort').tablesort();
        });
</script>

</body>

</html>
