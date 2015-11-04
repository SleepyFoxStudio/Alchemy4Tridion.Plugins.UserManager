<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Clone User</title>
    <link rel='stylesheet prefetch' href='https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css' />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${CssUrl}/TridionUI.css" />

    
    
</head>
<body>


    <fieldset>
        <legend>Clone rights to selected users</legend>
        You have selected user <span id="SelectedUserName">xxxxxxxxxx</span> , now select the users below who should be given the same rights, and click the Clone Rights button to apply.
        <div id="BtnCloneRights" class="button">
            <span class="text">Clone Rights</span>
        </div>
    </fieldset>
    <br />
    <table id="CloneUserTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>



        <tbody>
            <tr id="tcm:0-0-1">
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            <tr id="tcm:0-0-2">
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr id="tcm:0-0-3">
                <td>Cedric Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012/03/29</td>
                <td>$433,060</td>
            </tr>
        </tbody>
    </table>


    <script type="text/javascript">
        jQuery(document).ready(function () {

            var table = jQuery('#CloneUserTable').DataTable({
                scrollY: jQuery(window).height() - 120,
                scrollCollapse: true,
                paging: false,
                "bSortClasses": false,
                'sDom': 't',
                "ajax": "data/arrays.txt"
            });
            jQuery(".dataTables_scrollFoot").hide();
            jQuery('#CloneUserTable tbody').on('click', 'tr', function () {
                jQuery(this).toggleClass('selected');
            });

            jQuery("#BtnCloneRights").click(function () {

                var IDs = jQuery("tr[id].selected")         // find spans with ID attribute
                 .map(function () { return this.id; }) // convert to set of IDs
                 .get(); // convert to instance of Array (optional)
                alert(IDs);

            });
        });
    </script>

</body>

</html>