<script lang="ts">
	import type { TopAppBarComponentDev } from '@smui/top-app-bar';
	import TopAppBar, { Row, Section, Title, AutoAdjust } from '@smui/top-app-bar';
	import IconButton from '@smui/icon-button';
	export let open: boolean;
	let topAppBar: TopAppBarComponentDev;
</script>

<TopAppBar bind:this={topAppBar} variant="short" color="primayry">
	<Row>
		<Section>
			<IconButton on:click={() => (open = !open)} class="material-icons" touch>menu</IconButton>
			
		</Section>
		<Section align="end" toolbar>
			<IconButton class="material-icons" aria-label="Download" touch>settings</IconButton>
		</Section>
	</Row>
</TopAppBar>
<AutoAdjust {topAppBar} />

<style>
	/* Hide everything above this component. */
	:global(app),
	:global(body),
	:global(html) {
		display: block !important;
		height: auto !important;
		width: auto !important;
		position: static !important;
	}
</style>
