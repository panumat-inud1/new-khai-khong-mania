<script lang="ts">
	export let x;
	export let y;
	export let url;
	export let width;
	export let height;

	function active() {
		window.location.href = 'profile/shop';
	}
</script>



	<img on:click={active} class="items" style="top:{y}%;left:{x}%;width:{width}%;height:{height}%;"  src={url} alt="" />


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
