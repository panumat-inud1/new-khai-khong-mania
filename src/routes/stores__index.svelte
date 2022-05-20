<script lang="ts">
	import { playgame } from '../stores';
	let playgameMode: Boolean;

	playgame.subscribe((value) => {
		playgameMode = value;
	});

	function open() {
		playgame.update(() => (playgameMode = !playgameMode));
	}
	function sets() {
		if (playgameMode == false) {
			playgame.set(true);
		} else {
			playgame.set(false);
		}
	}
</script>

{$playgame}
<button on:click={sets}>OK</button>
<!-- 
<script>
	/*
	import { onMount } from 'svelte';
	import { user } from '../hooks';

	onMount(() => {
		$user = [...$user, email:"benzwingzza@gmail.com"];
	});
    {JSON.stringify($user)} */

</script>
-->

<!-- 

<script>
	import { onMount } from 'svelte';

	import { userName } from '../stores';
	$: console.log($userName);

	let user = '';
	function login() {
		$userName = user;
	}
</script>

<h1>{$userName}</h1>

<input type="text" bind:value={user} />

<button on:click={login} >OK</button>
-->
