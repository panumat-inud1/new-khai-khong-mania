<script>
	import { onMount } from 'svelte';

	function openFullscreen() {
		document.documentElement.requestFullscreen();
	}
	function colse() {
		document.exitFullscreen();
	}

	//รับค่าจาก Stores
	import { playgame, userName, logins, screen } from '../../stores';

	//  Update Stroes
	function fullscreen() {
		if ($screen == 'close') {
			alert('full');
			$screen = 'full';
		} else {
			$screen = 'close';
		}
	}
</script>

<button on:click={openFullscreen}>[เต็มจอ]</button>

<button on:click={colse}>[ย่อจอ]</button>

<button on:click={fullscreen}>[ซ่อน layout อื่นๆ]</button>

<style>
</style>
