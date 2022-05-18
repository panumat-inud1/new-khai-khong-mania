<script>
	import Cardmain from '$lib/card/cardmain.svelte';

	let calculate = [
		{ id: '1', img: 'imags', title: 'เครื่องผลิต1', fieldnumber: 0 },
		{ id: '2', img: 'imags', title: 'เครื่องผลิต2', fieldnumber: 0 },
		{ id: '3', img: 'imags', title: 'เครื่องผลิต3', fieldnumber: 0 },
		{ id: '4', img: 'imags', title: 'เครื่องผลิต4', fieldnumber: 0 },
		{ id: '5', img: 'imags', title: 'เครื่องผลิต5', fieldnumber: 0 },
		{ id: '6', img: 'imags', title: 'เครื่องผลิต6', fieldnumber: 0 },
		{ id: '7', img: 'imags', title: 'เครื่องผลิต7', fieldnumber: 0 },
		{ id: '8', img: 'imags', title: 'เครื่องผลิต8', fieldnumber: 0 }
	];
</script>
<svelte:head>
	<title>Calculate</title>
	<meta name="description" content="Home this app" />
</svelte:head>

<div class="card-display">
	<Cardmain>
		<div slot="content">
			<h4 style="text-align-last: center;">Here you can calculate your income</h4>
			<h5>Enter a number of birds to see how much gold they will bring you.</h5>
			<h5>
				* Please note that your earnings will increase exponentially, if you buy new birds for
				earned gold.
			</h5>
			<hr />

			<lu class="grid-4">
				{#each calculate as cl, i}
					<li class="conten">
						<div class="item">
							{cl.title}
						</div>
						<div class="title">
							{cl.fieldnumber}
						</div>
					</li>
				{/each}
			</lu>
			<div class="grid-2">
				<h5 style="text-align: center;">
					Sign Up right now and get Green bird +300 gold coins as agift
				</h5>
				<div style="text-align: center;" class="imag-1">160*110 PX</div>
				<div />
			</div>
		</div></Cardmain
	>
</div>

<style>
	.grid-2 {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		padding: 5%;
	}
	.grid-4 {
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 2%;
		padding: 5%;
	}
	.conten {
		list-style: none;
	}
	.item {
		text-align: center;
		height: 140px;
		background-color: black;
	}
	.title {
		margin-top: 3%;
		border: 1px solid rgb(244, 103, 15);
		text-align: left;
		color: black;
	}
	.imag-1 {
		height: 110px;
		width: 100%;
		background-color: black;
	}
	h1,
	h2,
	h3,
	h4,
	h5,
	h6 {
		text-transform: capitalize;
		color: black;
	}

	@media (max-width: 430px) {
		.item {
		
			height: 80px;
		
		}
	}
</style>
