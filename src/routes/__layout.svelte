<script lang="ts">
	import { fade } from 'svelte/transition';
	/*import Header from '$lib/header/Header.svelte';*/
	import Topbar from '$lib/topbar/Topbar.svelte';
	import Footer from '$lib/footer/Footer.svelte';
	import '../app.css';
	import Leftbar from '$lib/leftbar/leftbar.svelte';
	import Leftmenu from '$lib/leftbar/leftmenu.svelte';
	import Topmenu_2 from '$lib/topbar/topmenu-2.svelte';
	let innerWidth;
	let innerHeight;
	let open = false;

	//รับค่าจาก Stores
	import { playgame, screen } from '../stores';
	let playgameFullscreen: false;

	const phone = 840;
</script>

<svelte:window bind:innerWidth bind:innerHeight />

{#if $screen == 'close'}
	<!-- screen on Desktop and phone-->
	{#if $playgame == 'close'}
		<div transition:fade class="container-color">
			<div class="container-full">
				<!-- screen on Phone -->
				{#if innerWidth < phone}
					<Topbar bind:open />
					<Leftbar bind:open />
				{/if}
				<!-- End screen on Phone -->

				<div class="top-menu">
					<Topmenu_2 />
				</div>
				<main>
					<div class="left-menu">
						{#if innerWidth > phone}
							<Leftmenu />
						{/if}
					</div>
					<div class="content">
						<slot />
					</div>
				</main>

				<img src="/imags/layer.png" alt="footer" />
			</div>
		</div>
	{/if}

	<!-- Play Game-->
	{#if $playgame == 'full'}
		<div transition:fade class="container-playgame">
			<slot />
		</div>
	{/if}
{/if}

{#if $screen == 'full'}
	<slot />
{/if}

<Footer />

<style>
	/* Screen on DeskTop  and*/
	.container-color {
		max-width: 1024px;
		margin: 0 auto;
		background-color: rgb(192, 232, 243);
	}
	.container-full {
		width: 100%;
		max-width: 1024px;
		margin: 0 auto;

		background: url(/imags/i1.png) 0% 0% repeat-y;
		background-size: 100% auto;
	}
	.top-menu {
		display: flex;
		flex-direction: row;
		width: 100%;
		max-width: 1024px;
		margin: 0 auto;
		box-sizing: border-box;
	}
	main {
		flex: 1;
		display: flex;
		flex-direction: row;
		width: 100%;
		max-width: 1024px;
		margin: 0 auto;
		box-sizing: border-box;
	}

	.left-menu {
		width: 33%;
		box-sizing: border-box;
		height: auto;
		padding-top: 3%;
		padding-left: 3%;
	}
	.content {
		width: 67%;
		box-sizing: border-box;
		height: auto;
		padding-top: 3%;
		padding-left: 3%;
		padding-right: 3%;
	}
	img {
		width: 100%;
		height: 1024px;
		object-position: center;
		object-fit: cover;
	}

	/* Screen PlayGame */
	.container-playgame {
		display: flex;
		justify-content: center;
		padding-top: 1%;

		max-width: 1024px;
		height: auto;
		margin: 0 auto;
	}

	@media (max-width: 840px) {
		img {
			height: 820px;
		}
		.left-menu {
			width: 0%;
			padding-top: 0%;
			padding-left: 0%;
		}
		.content {
			width: 100%;
		}

		/*	.container-playgame {
			padding-top: 13%;
		} */
	}

	@media (max-width: 430px) {
		img {
			height: 420px;
		}
		.container-playgame {
			padding-top: 1%;
		}
	}
</style>
