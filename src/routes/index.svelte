<script>
	import Slides from '$lib/slide/slides.svelte';
	import Collapsible from '$lib/collapsible/collapsible.svelte';
	import FooterWeb from '$lib/footer/FooterWeb.svelte';
	import Navbar from '$lib/header/navbar.svelte';
	import LinearProgress from '@smui/linear-progress';
</script>

<Navbar />
<LinearProgress indeterminate />

<Slides />

<section>
	{#each Array(4) as item, i}
		<Collapsible headerText={'Collapse or Expand me'}>
			{#each Array(5) as item, j}
				<div class="item">
					<a href="#">content{j + 1}</a>
				</div>
			{/each}
		</Collapsible>
	{/each}
</section>
<FooterWeb />

<style>
	section {
		width: 100%;
	}
	.item {
		padding: 3px;
	}
	.item:hover {
		background-color: #222;
	}
</style>
