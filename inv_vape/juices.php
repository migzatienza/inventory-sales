<div class="container">
	<div class="row">
		<div class="col l4">
			<div class="search-input">
				<i class="fa fa-search search-icon green-text"></i>
				<input type="text" placeholder="Search Item.." id="search" onkeyup="searchData()">
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col l12">
			<h5 class="title">Products</h5>


			<table class="mt-4">
				<thead>
					<tr>
						<th>View</th>
						<th>Item Code</th>
						<th>Juice Name</th>

					</tr>
				</thead>

				<tbody id="fetchjuice">
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


		<div class="row">
			<div class="col l12">
				<h5 class="title">Stock Flow</h5>
				<table class="mt-4">
					<thead>
						<tr>
							<th>Date</th>
							<th>Total Count</th>
							<th>Added</th>
							<th>Content Name</th>
						</tr>
					</thead>

					<tbody id="fetchDashboard">
						<tr>
							<td>5-7-2018 8:30 AM</td>
							<td>300</td>
							<td>0</td>
							<td class="green-text">+14</td>
						</tr>
						<tr>
							<td>5-7-2018 11:30 PM</td>
							<td>290</td>
							<td class="red-text">-10</td>
							<td>0</td>
						</tr>
						<tr>
							<td>5-7-2018 8:30 AM</td>
							<td>300</td>
							<td>0</td>
							<td class="green-text">+14</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>

	<div id="modal1" class="modal">
		<div class="modal-content">
			<h5 class="title">INVENTORY PRODUCTS</h5><br>
			<div class="container main-container">
				<table class="responsible-table centered">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Total Price</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody id="fetchContent">

					</tbody>
				</table>
			</div>
		</div>

	</div>
