<script>
	import Game from './game.svelte';
	import Headermenu from '$lib/frameGame/headermenu.svelte';
	import Footermenu from '$lib/frameGame/footermenu.svelte';
	import Container from '$lib/frameGame/container.svelte';
	function Active() {
		window.location.href = '/';
	}
</script>

<Headermenu>
	<div slot="content">
		<div class="header-item">
			TOP MENU GAME
			<a href="khai-khong-mania/machineshop/machine">SHOP</a>
			<a href="khai-khong-mania/storehouse/storehouse">STOREHOUSE</a>
		</div>
	</div>
</Headermenu>

<Container>
	<div slot="content">
		<Game />
	</div>
</Container>
<Footermenu>
	<div slot="content">
		<div class="footer-item">
			<div on:click={Active}>Home</div>
		</div>
	</div>
</Footermenu>

<style>
	.header-item {
		position: absolute;
		width: 100%;
		height: 80%;
		top: 20%;
		left: 1%;
	}
	.footer-item {
		position: absolute;
		width: 100%;
		height: 80%;
		top: 20%;
		left: 1%;
	}
	a {
		color: yellow;
	}
</style>
