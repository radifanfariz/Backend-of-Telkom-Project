<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT * from t_datek_bgest where witel='$_GET[witel]'";
	$aQResult=mysqli_query($conn, $aSQL);
?>


 
 
<html>
<head>
	<title>Administrasi >> user</title>
	<!-- <LINK href="Style/style2.css" type=text/css rel=STYLESHEET> -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
	<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>

<body>
<h3>COLLECT DATA BGES LIST FROM LAPANGAN</h3>
<table id = "table_sid" class = "display compact" style="width:100% overflow: auto">
	<thead>
		<tr>
			<th>NO</th>
			<th>View</th>
			<th>Update</th>
			<th>Delete</th>
			<th>SERVICEID</th>
			<th>VALIDATING</th>
			<th>CUSTOMER_NAME</th>
			<th>CUSTOMER_ADDRESS</th>
			<th>INSTALLATION_ADDRESS</th>
			<th>LATITUDE</th>
			<th>LONGITUDE</th>
			<th>SERVICE_TYPE</th>
			<th>CONNECTIVITY_TYPE</th>
			<th>ASTINET_TYPE</th>
			<th>NTE_TYPE</th>
			<th>NTE_MODEL</th>
			<th>NTE_SN</th>
			<th>NTE_DOWNLINK_PORT</th>
			<th>STP_TYPE</th>
			<th>STP_LOCN</th>
			<th>STP_NAME</th>
			<th>STP_PANEL</th>
			<th>STP_PORT</th>
			<th>STP_PORT_UIM</th>
			<th>CE_TYPE</th>
			<th>CATATAN</th>
			<th>USER_ID</th>
			<th>DATE_TIME</th>
		</tr>
	</thead>
	<tfoot style="display:table-header-group;">
		<tr>
			<th>NO</th>
			<th>View</th>
			<th>Update</th>
			<th>Delete</th>
			<th>SERVICEID</th>
			<th>VALIDATING</th>
			<th>CUSTOMER_NAME</th>
			<th>CUSTOMER_ADDRESS</th>
			<th>INSTALLATION_ADDRESS</th>
			<th>LATITUDE</th>
			<th>LONGITUDE</th>
			<th>SERVICE_TYPE</th>
			<th>CONNECTIVITY_TYPE</th>
			<th>ASTINET_TYPE</th>
			<th>NTE_TYPE</th>
			<th>NTE_MODEL</th>
			<th>NTE_SN</th>
			<th>NTE_DOWNLINK_PORT</th>
			<th>STP_TYPE</th>
			<th>STP_LOCN</th>
			<th>STP_NAME</th>
			<th>STP_PANEL</th>
			<th>STP_PORT</th>
			<th>STP_PORT_UIM</th>
			<th>CE_TYPE</th>
			<th>CATATAN</th>
			<th>USER_ID</th>
			<th>DATE_TIME</th>
		</tr>
	</tfoot>
	<tbody>
<?php
	$no = 0;
   	while ($aRow = mysqli_fetch_assoc($aQResult)){
   		$no++;	
   		$url = "data_update.php?id=".$aRow['id'];
?>
	<tr>
		<td><a href="data_update_.php?id=<?php echo $aRow["id"];?>"><?php echo $no;?></a></td>
		<td><a href="data_view.php?id=<?php echo $aRow["id"];?>">View</a></td>
		<td><a href="data_update.php?id=<?php echo $aRow['id'];?>">Update</a></td>
		<td><a href="data_delete.php?id=<?php echo $aRow["id"];?>">Delete</a></td>
		<td><?php echo $aRow["serviceid"];?></td>
		<td><?php echo $aRow["validating"];?></td>
		<td><?php echo $aRow["customer_name"];?></td>
		<td><?php echo $aRow["customer_address"];?></td>
		<td><?php echo $aRow["installation_address"];?></td>
		<td><?php echo $aRow["lat"];?></td>
		<td><?php echo $aRow["lgt"];?></td>		
		<td><?php echo $aRow["service_type"];?></td>
		<td><?php echo $aRow["connectivity_type"];?></td>
		<td><?php echo $aRow["astinet_type"];?></td>
		<td><?php echo $aRow["nte_type"];?></td>		
		<td><?php echo $aRow["nte_model"];?></td>		
		<td><?php echo $aRow["nte_sn"];?></td>
		<td><?php echo $aRow["nte_uplink_port"];?></td>
		<td><?php echo $aRow["stp_type"];?></td>
		<td><?php echo $aRow["stp_locn"];?></td>	
		<td><?php echo $aRow["stp_name"];?></td>	
		<td><?php echo $aRow["stp_panel"];?></td>	
		<td><?php echo $aRow["stp_port"];?></td>	
		<td><?php echo $aRow["stp_port_uim"];?></td>	
		<td><?php echo $aRow["ce_type"];?></td>
		<td><?php echo $aRow["catatan"];?></td>
		<td><?php echo $aRow["user_id"];?></td>
		<td><?php echo $aRow["date_time"];?></td>
	</tr>
	

<?php
	}
?>
	</tbody>
	
</table>

</body>
</html>
<script>
// $(document).ready(function() {
//     $('#table_sid').DataTable({
//     	"scrollX": true
//     });
// } );

$(document).ready(function() {
    var dataTable = $('#table_sid').DataTable( {
        initComplete: function () {
            this.api().columns().every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
        }
    } );
} );
</script>