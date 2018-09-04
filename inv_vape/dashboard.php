<div class="container">
	<div class="row">
		<div class="col l4">
			<div class="card-panel center z-depth-0">
				<h1 class="mt-3 grey-text text-darken-3 " id="totalStocks"></h1>
				<i class="fa fa-archive fa-3x grey-text text-darken-3"></i>
				<p class="title grey-text text-darken-3">Stock Count</p>
			</div>
		</div>

		<div class="col l7 push-l1">
			<table class="mt-4 centered">
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

		<div class="col s12 center mt-4 mb-5">
			<a href="http://localhost/inv_vape/index.php?in_page=inventory"><i class="fa fa-angle-down"></i> View More</a>
		</div>
	</div>

	<div class="divider"></div>

	<div class="row mt-5">
		<div class="col l4">
			<div class="card-panel center z-depth-0">
				<h1 class="mt-3 grey-text text-darken-3" id="totalSales">&#8369;5021</h1>
				<i class="fa fa-money fa-3x grey-text text-darken-3"></i>
				<p class="title grey-text text-darken-3">Total Sale</p>
			</div>
		</div>

		<div class="col l7 push-l1">
			<table class="mt-4 centered">
				<thead>
					<tr>
						<th>Date</th>
						<th>Total Sale</th>
						<th>Total Count</th>
						<th>Purchased</th>
						<th>Name</th>
					</tr>
				</thead>

				<tbody id="fetchPurchased">
					<tr>
						<td>5-7-2018</td>
						<td>&#8369;300</td>
					</tr>
					<tr>
						<td>5-6-2018</td>
						<td>&#8369;290</td>
					</tr>
					<tr>
						<td>5-5-2018</td>
						<td>&#8369;300</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="col s12 center mt-4">
			<a href="#"><i class="fa fa-angle-down"></i> View More</a>
		</div>
	</div>
	
	<div class="col s4">
		<div class="chart-container">
			<canvas id="salesGraph" ></canvas>
		</div>
	</div>

</div>

