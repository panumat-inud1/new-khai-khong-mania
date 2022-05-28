<script lang="ts">
	import Cardmain from '$lib/card/cardmain.svelte';

	import DataTable, { Head, Body, Row, Cell, Pagination } from '@smui/data-table';

	let datas = [
		{ username: 'Panumat', sum: 11.94, url: 'imag', purse: 'P14942', date: '2022-05-17' },
		{ username: 'Panumat', sum: 11.94, url: 'imag', purse: 'P14942', date: '2022-05-17' },
		{ username: 'Panumat', sum: 11.94, url: 'imag', purse: 'P14942', date: '2022-05-17' },
		{ username: 'Panumat', sum: 11.94, url: 'imag', purse: 'P14942', date: '2022-05-17' },
		{ username: 'Panumat', sum: 11.94, url: 'imag', purse: 'P14942', date: '2022-05-17' },
		{ username: 'Panumat', sum: 11.94, url: 'imag', purse: 'P14942', date: '2022-05-17' },
		{ username: 'Panumat', sum: 11.94, url: 'imag', purse: 'P14942', date: '2022-05-17' }
	];
</script>

<svelte:head>
	<title>Payments</title>
	<meta name="description" content="Home this app" />
</svelte:head>

<Cardmain>
	<div slot="content">
		<DataTable table$aria-label="Todo list" style="width: 100%;">
			<Head>
				<Row>
					<Cell>[x]</Cell>
					<!--
					<Cell numeric>User</Cell>
					<Cell>Sum</Cell>
					<Cell>PS</Cell>
					<Cell>Purse</Cell>
					<Cell>Date</Cell> -->
				</Row>
			</Head>

			<Body>
				{#each datas as d, i}
					<Row>
						<Cell
							>Checkbox
							<DataTable>
								<Head>
									<Row>
										<Cell numeric>User</Cell>
										<Cell>Sum</Cell>
										<Cell>PS</Cell>
										<Cell>Purse</Cell>
										<Cell>Date</Cell>
									</Row>
								</Head>
								<Body>
									<Row>
										<Cell numeric>{d.username}</Cell>
										<Cell>{d.sum}</Cell>
										<Cell>{d.url}</Cell>
										<Cell>{d.purse}</Cell>
										<Cell>{d.date}</Cell>
									</Row>
								</Body>
							</DataTable>
						</Cell>
						<!--
						<Cell numeric>{d.username}</Cell>
						<Cell>{d.sum}</Cell>
						<Cell>{d.url}</Cell>
						<Cell>{d.purse}</Cell>
						<Cell>{d.date}</Cell> -->
					</Row>
				{/each}
			</Body>
		</DataTable>
	</div>
</Cardmain>
