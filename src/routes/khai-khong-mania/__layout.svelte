<script lang="ts">
	import CardGame from '$lib/card/cardgame.svelte';
	import { onMount } from 'svelte';
	import { logins } from '../../stores';

	let display = false;

	onMount(() => {
		if ($logins == 'login') {
			display = true;
		}
		if ($logins == 'logout') {
			window.location.href = "/";
		}
	});

	//window.location.href = '/';
</script>

<!-- 
{#if display}
	sds
{/if} -->

<CardGame>
	<div slot="content">
		<slot />
	</div>
</CardGame>
