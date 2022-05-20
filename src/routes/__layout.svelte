<script>
	import Cardgame from '$lib/card/cardgame.svelte';
	let innerWidth;
	let innerHeight;
	import '../app.css';
</script>

<svelte:window bind:innerWidth bind:innerHeight />

<div class="container-full" style="height:{innerHeight}px;">
	<Cardgame height={innerHeight -16} widht={(innerWidth-innerHeight)+16}>
		<div slot="content">

			<span>widht {innerWidth} height {innerHeight}</span>
			<span>widht {innerWidth - innerHeight}</span>

			
		</div>
	</Cardgame>
</div>


<style>
	.container-full {
	
		width: 100%;
		max-width: 1024px;
		margin: 0 auto;
		background-color: red;
	}

</style>
