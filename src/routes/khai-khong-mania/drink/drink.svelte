<script>
	import Game from '../game.svelte';
</script>

<header>
	TOP MENU GAME
	<a href="profile/shop">SHOP</a>
	<a href="profile/mymachine">STOREHOUSE</a>
</header>

<div class="container">
	<Game />
</div>

<footer>FOORTER MENU AND SETTING GAME</footer>

<style>
	.container {
		position: absolute;
		width: 100%;
		height: 90%;
		top: 5%;
		left: 0%;
	}

	header {
		position: absolute;
		top: 0%;
		width: 100%;
		height: 5%;
		border-radius: 12px 12px 0px 0px;
		z-index: 50;
		background-color: rgba(0, 0, 0, 0.747);
	}

	footer {
		position: absolute;

		width: 100%;
		height: 5%;

		bottom: 0;
		border-radius: 0px 0px 12px 12px;
		z-index: 50;
		background-color: rgba(19, 18, 18, 0.349);
	}
</style>
