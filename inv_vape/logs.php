<div class="container">
	<div class="row">
		<div class="col l4">
			<div class="search-input">
				<i class="fa fa-search search-icon green-text"></i>
				<input type="text" placeholder="Search Sales" id="searchProducts" onkeyup="searchData()">
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col l12">
			<h5 class="title">Sales Logs</h5>
			<table class="mt-4 centered">
				<thead>
					<tr>
						<th>Product Name</th>
						<th>Price</th>
						<th>Quantity Bought</th>
						<th>Old Quantity</th>
						<th>Time Purchased</th>
						<th>Remarks</th>
						<th>Action</th>
					</tr>
				</thead>

				<tbody id="fetchLogs">
					<tr>
						<td>
							<a href=""><i class="fa fa-eye fa-2x"></i></a>
						</td>
						<td>12345PROD111</td>
						<td>Atty</td>
						<td>
							<a href=""><i class="fa fa-pencil fa-2x"></i></a><a class="ml-3" href=""><i class="fa fa-trash-o fa-2x red-text"></i></a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>



