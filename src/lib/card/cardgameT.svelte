<script>
	let innerWidth;
	let innerHeight;
</script>

<svelte:window bind:innerWidth bind:innerHeight />
<div hidden>
	{innerHeight}
</div>

<article class="container-card" style="min-height: {innerHeight - 15}px; max-height: {innerHeight - 15}px;">
	<div class="game-bg-color">
		<div class="position" style="height: {innerHeight - 15}px">
			<slot name="content">
				<span class="missing">Unknown content</span>
			</slot>
		</div>
	</div>
</article>

<style>
	/* สีหน้าจอเกมส */
	.game-bg-color {
		background-color: white;
		border-radius: 15px;
	}
	/* กำหนดขนาด ตำแหน่ง item */
	.position {
		position: relative;
		width: 100%;
		height: 100%;
		/*height: 870px; */
	}
	.container-card {
		width: 100%;
		height: 100%;
		/* ขนาดจอเกมส์  
		min-height: 870px;
		max-height: 870px;

		min-width: 1024px;
		max-width: 1024px;
		*/
		padding: 0.5%;

		border: 3px solid #f05e29;
		border-radius: 15px;
		box-shadow: 0px 6px 14px -5px rgb(0 0 0 / 10%);
		background-image: radial-gradient(#f6ebd8ed, #f8e9cc, #f6ddc5, #f7dbbf);
	}

	@media (max-width: 840px) {
		.container-card {
			width: 98.3%;
		}
	}

	@media (max-width: 576px) {
		.container-card {
			/* width */
			width: 97.4%;
		}
	}
</style>
