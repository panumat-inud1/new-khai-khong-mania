<script>
	import Cardmain from '$lib/card/cardmain.svelte';
	let images = [
		{ id: '1', img: '125*110', title: 'Step1', fieldnumber: 0 },
		{ id: '2', img: '125*110', title: 'Step2', fieldnumber: 0 },
		{ id: '3', img: '125*110', title: 'Step3', fieldnumber: 0 },
		{ id: '4', img: '125*110', title: 'Step4', fieldnumber: 0 }
	];

	let payment = [
		{ id: '1', img: '125*133', title: 'Step1', fieldnumber: 0 },
		{ id: '2', img: '125*133', title: 'Step2', fieldnumber: 0 },
		{ id: '3', img: '125*133', title: 'Step3', fieldnumber: 0 },
		{ id: '4', img: '125*133', title: 'Step4', fieldnumber: 0 }
	];
</script>

<svelte:head>
	<title>Home</title>
	<meta name="description" content="Home this app" />
</svelte:head>

<Cardmain>
	<div slot="content">
		<h4>Coin Birds with money withdrawal Stable earnings with our affiliate program</h4>
		<div class="col-2">
			{#each images as im, i}
				<div class="col-2">
					<div class="content">
						<div class="image-step">
							{im.img}
						</div>
					</div>
					<h5>{im.title}</h5>
				</div>
			{/each}
		</div>
		<h1 style="color:green;">Start right now</h1>
		<div class="col-2">
			<h5 style="text-align: center;">
				Create account right now and get «Green» bird +300 gold coins for free
			</h5>
			<div class="right-images">320*150px</div>
		</div>
		<h1 style="color:green;text-align: center;">Our Advantages</h1>

		<div class="col-4">
			{#each payment as pm, i}
				<div class="image-item-foot">
					{pm.img}
				</div>
			{/each}
		</div>
		<hr style="margin-top: 3%;" />
		<h5 style="text-align: center;">
			You will be able to buy much more birds if you purchase gold coins.
		</h5>
	</div>
</Cardmain>

<style>
	.image-item-foot {
		height: 125px;
		width: 133px;
		background-color: black;
	}

	.right-images {
		height: 150px;
		width: 320px;
		background-color: black;
	}

	h3,
	h4,
	h5 {
		color: black;
		text-transform: capitalize;
	}
	.image-step {
		height: 125px;
		width: 110px;
		background-color: black;
	}
	.col-2 {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 1%;
	}
	.col-4 {
		gap: 1%;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
	}
	@media (max-width: 430px) {
		.right-images {
			height: 120px;
			width: 190px;
		
		}
		.image-item-foot {
			height: 70px;
			width: 70px;
			background-color: black;
		}
	}
</style>
