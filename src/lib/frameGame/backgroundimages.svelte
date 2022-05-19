<script lang="ts">
	export let x;
	export let y;
	export let url;
	export let width;
	export let height;
</script>



	<img class="items" style="top:{y}%;left:{x}%;width:{width}%;height:{height}%;"  src={url} alt="" />


<!-- <div
	class="items"
	style="height: {height}%;width: {width}%;top:{y}%;left:{x}%;background: url({url}) 0% 0% no-repeat;background-size: 100% auto;"
/> -->
<style>
	.items {
		position: absolute;
	}
</style>
