$(document).ready(function () {

    var table = $('#CloneUserTable').DataTable({
        scrollY: $(window).height() - 120,
        scrollCollapse: true,
        paging: false,
        "bSortClasses": false,
        'sDom': 't'
    });
    $(".dataTables_scrollFoot").hide();
    $('#CloneUserTable tbody').on('click', 'tr', function () {
        $(this).toggleClass('selected');
    });

    $("#BtnCloneRights").click(function () {

        var IDs = $("tr[id].selected")         // find spans with ID attribute
         .map(function () { return this.id; }) // convert to set of IDs
         .get(); // convert to instance of Array (optional)
        alert(IDs);

    });
});