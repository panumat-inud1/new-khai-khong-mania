<script lang="ts">
	import Game from './game.svelte';
	import Headermenu from '$lib/frameGame/headermenu.svelte';
	import Footermenu from '$lib/frameGame/footermenu.svelte';
	import Container from '$lib/frameGame/container.svelte';
	import { fade } from 'svelte/transition';
	function Active() {
		$playgame = 'close';
		window.location.href = '/';
	}
	//รับค่าจาก Stores
	import { playgame, userName, logins } from '../../stores';

	//  Update Stroes
	function fullscreen() {
		//playgame.update(() => ("close"));
		if ($playgame == 'close') {
			$playgame = 'full';
		} else {
			$playgame = 'close';
		}
	}
</script>

<Headermenu>
	<div slot="content">
		<div class="header-item">
			TOP MENU GAME
			<a href="khai-khong-mania/machineshop/machine">SHOP</a>
			<a href="khai-khong-mania/storehouse/storehouse">STOREHOUSE</a>
			<div class="screen" on:click={fullscreen}>ขยายจอ[x]</div>
		</div>
	</div>
</Headermenu>

<Container>
	<div slot="content">
		<div transition:fade>
			<Game />
		</div>
	</div>
</Container>
<Footermenu>
	<div slot="content">
		<div class="footer-item">
			<div on:click={Active}>[Exit Game]</div>
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
	.screen {
		position: absolute;
		right: 5%;
		top: 0%;
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

	@media (max-width: 430px) {
		a {
			font-size: 10.5px;
		}
		.screen {
		font-size: 13.5px;
	}
	}
</style>
