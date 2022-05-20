<script>
	import Cardgame from '$lib/card/zzz_cardgame.svelte';
	let innerWidth;
	let innerHeight;
	
	import '../app.css';
</script>

<svelte:window bind:innerWidth bind:innerHeight />

<div class="container-full" style="height:{innerHeight}px;">
	<Cardgame height={innerHeight} widht={innerWidth}>
		
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
