<script lang="ts">
	import { fade, fly } from 'svelte/transition';
	export let x;
	export let y;
	export let url;
	export let width;
	export let height;
</script>



	<img in:fly="{{ x: 200, duration: 1000 }}" out:fade class="items" style="top:{y}%;left:{x}%;width:{width}%;height:{height}%;"  src={url} alt="" />


<!-- <div
	class="items"
	style="height: {height}%;width: {width}%;top:{y}%;left:{x}%;background: url({url}) 0% 0% no-repeat;background-size: 100% auto;"
/> -->
<style>
	.items {
		position: absolute;
		z-index: 1;
	}
</style>
