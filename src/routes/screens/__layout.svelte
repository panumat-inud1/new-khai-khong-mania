<script>
	import CardgameT from '$lib/card/cardgameT.svelte';
</script>

<div class="container">
	<CardgameT>
		<div slot="content">
			<slot />
		</div>
	</CardgameT>
</div>

<style>
	.container {
		width: 100%;
		max-width: 1024px;
		margin: 0 auto;
		background-color: rgb(32, 184, 1);
	}
</style>
