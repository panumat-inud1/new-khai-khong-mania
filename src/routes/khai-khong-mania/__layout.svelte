<script lang="ts">
	import CardGame from '$lib/card/cardgame.svelte';
</script>

<CardGame>
	<div slot="content">
		 <slot /> 
	</div>
</CardGame>

