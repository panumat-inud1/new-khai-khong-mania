<script>
	// based on suggestions from:
	// Inclusive Components by Heydon Pickering https://inclusive-components.design/collapsible-sections/
	export let headerText;

	let expanded = false;
	import { fade, fly, slide } from 'svelte/transition';
</script>

<div class="collapsible">
	<h3>
		<button aria-expanded={expanded} on:click={() => (expanded = !expanded)}
			>{headerText}
			<svg viewBox="0 0 20 20" fill="none">
				<path class="vert" d="M10 1V19" stroke="black" stroke-width="2" />
				<path d="M1 10L19 10" stroke="black" stroke-width="2" />
			</svg>
		</button>
	</h3>
	{#if expanded}
		<div class="contents" hidden={!expanded}>
			<div class="display-content" transition:slide={{ duration: 500 }}>
				<slot />
			</div>
		</div>
	{/if}
</div>

<style>
	.collapsible {
		border-bottom: 1px solid var(--gray-light, #eee);
	}

	.display-content {
		background-color: #050505a0;
	}
	h3 {
		margin: 0;
	}

	button {
		background-color: var(--background, #fff);
		color: var(--gray-darkest, #282828);
		display: flex;
		justify-content: space-between;
		width: 100%;
		border: none;
		margin: 0;
		padding: 1em 0.5em;
	}

	button[aria-expanded='true'] {
		border-bottom: 1px solid var(--gray-light, #eee);
	}

	button[aria-expanded='true'] .vert {
		display: none;
	}

	button:focus svg {
		outline: 2px solid;
	}

	button [aria-expanded='true'] rect {
		fill: currentColor;
	}

	svg {
		height: 0.7em;
		width: 0.7em;
	}
</style>
