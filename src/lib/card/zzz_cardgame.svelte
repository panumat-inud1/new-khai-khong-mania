<script lang="ts">
	export let height;
	export let widht;
	let x;
	$: if (widht >= 1024) {
		widht = 1024;
		height = height - 16;
	} else if (widht > 750 && widht < 1024){
		widht = widht - 15;
		height = height - 15;
	} else {
		widht = widht - 10;
		height = height - 10;
	}
</script>

<div
	class="container-card"
	style="min-height: {height}px;max-height: {height}px;max-width: {widht}px;min-width: {widht}px;"
>
	<div class="game-bg-color">
		<div class="position" style="height: {height}px;">
			<slot name="content">
				<span class="missing">Unknown content {widht}:{height}</span>
			</slot>
		</div>
	</div>
</div>

<style>
	/* สีหน้าจอเกมส */
	.game-bg-color {
		background-color: white;
		border-radius: 15px;
	}
	/* กำหนดขนาด ตำแหน่ง item */
	.position {
		position: relative;
		width: 100%;
		height: 100%;
	}
	.container-card {
		width: 100%;
		height: 100%;
		/* ขนาดจอเกมส์ */
		/*min-height: 768px;
		max-height: 768px;

		max-width: 1024px;
		min-width: 1024px;
 		*/

		padding: 0.5%;
		border: 3px solid #f05e29;
		border-radius: 15px;
		box-shadow: 0px 6px 14px -5px rgb(0 0 0 / 10%);
		background-image: radial-gradient(#f6ebd8ed, #f8e9cc, #f6ddc5, #f7dbbf);
	}
</style>
