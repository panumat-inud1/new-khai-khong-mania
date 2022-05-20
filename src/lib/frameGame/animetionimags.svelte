<script lang="ts">
	import { fade, fly } from 'svelte/transition';

	export let x;
	export let y;
	export let url;
	export let width;
	export let height;
	export let z;

	function active() {
		window.location.href = 'khai-khong-mania/machineshop/machine';
	}
	
</script>



	<img in:fly="{{ y: 200, duration: 1000 }}" out:fade on:click={active}  class="items" style="z-index: {z};top:{y}%;left:{x}%;width:{width}%;height:{height}%;"  src={url} alt="" />


<!-- <div
	class="items"
	style="height: {height}%;width: {width}%;top:{y}%;left:{x}%;background: url({url}) 0% 0% no-repeat;background-size: 100% auto;"
/> -->
<style>
	.items {
		position: absolute;
		
	}
    .items:hover {
		padding: 1%;
		animation-duration: 1s;
	}
</style>
