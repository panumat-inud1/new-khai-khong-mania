<script>
	import Collapsible from '$lib/collapsible/collapsible.svelte';
	import FooterWeb from '$lib/footer/FooterWeb.svelte';
	import Navbar from '$lib/header/navbar.svelte';
	import LinearProgress from '@smui/linear-progress';
	import '../app.css';
</script>

<Navbar />
<LinearProgress indeterminate />
<main>
	<slot />
</main>
<FooterWeb />

<section>
	{#each Array(4) as item, i}
		<Collapsible headerText={'Collapse or Expand me'}>
			{#each Array(5) as item, j}
				<div class="item">
					<a href="#">{j + 1}</a>
				</div>
			{/each}
		</Collapsible>
	{/each}
</section>

<style>
	main {
		width: 100%;
		display: flex;
		flex-direction: column;
		margin: 0 auto;
		background-color: #222;
		box-shadow: 0 0 10px black;
	}

	section {
		width: 50%;
	}
	.item {
		background-color: yellowgreen;
	}
</style>
