<script lang="ts">
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

	export let playgame = false;
	const phone = 840;
</script>

<svelte:window bind:innerWidth bind:innerHeight />

<!-- screen on Phone -->
{#if innerWidth < phone}
	<div class="container-color-phone">
		<div class="container-bg">
			{#if playgame == false}
				<Topbar bind:open />
				<Leftbar {playgame} bind:open />
				<Topmenu_2 />
			{/if}
			<!-- Play Game Phone-->

			<div class="content-phone">
				<slot />
			</div>

			<div class="footer">
				<div class="footer-phone" />
			</div>
		</div>
	</div>
{/if}

<!-- screen on Desktop -->

{#if innerWidth > phone}
	<div class="container-color">
		<div class="container-full">
			{#if playgame == false}
				<div class="top-menu">
					<Topmenu_2 />
				</div>
				<main>
					<div class="left-menu">
						<Leftmenu bind:playgame />
					</div>
					<div class="content">
						<slot />
					</div>
				</main>
			{/if}
			<!-- Play Game-->
			{#if playgame}
				<div class="content-playgame">
					<slot />
				</div>
			{/if}
			<div class="footer" >
				<div class="footer-desktop" />
			</div>
		</div>
	</div>
{/if}

<Footer bind:playgame />

<style>
	/* Screen on All*/
	.footer {
		position: relative;
		bottom: 0;
		width: inherit;
	}

	/* Screen on phone */
	.container-color-phone {
		background-color: rgb(192, 232, 243);
	}
	.container-bg {
		background: url(imags/i1.png) 0% 0% repeat-y;
		background-size: 100% auto;
	}
	.content-phone {
		padding-top: 3%;
		padding-left: 5%;
		padding-right: 5%;
	}
	.footer-phone {
		position: relative;
		background: url(imags/layer.png) no-repeat;
		height: 798px;
		background-size: 101% 100%;
	}

	@media (max-width: 430px) {
		.footer-phone {
			background: url(imags/layer.png) no-repeat;
			height: 403px;
			background-size: 101% 100%;
		}
	}

	/* Screen on DeskTop */
	.container-color {
		max-width: 1024px;
		margin: 0 auto;
		background-color: rgb(192, 232, 243);
	}
	.container-full {
		width: 100%;
		max-width: 1024px;
		margin: 0 auto;

		background: url(imags/i1.png) 0% 0% repeat-y;
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
	.content-playgame {
		width: 100%;
		box-sizing: border-box;
		height: auto;
		padding-top: 3%;
		padding-left: 5%;
		padding-right: 5%;
	}

	.footer-desktop {
		max-width: 1024px;
		height: 1058px;
		background: url(imags/layer.png) 0% 0% no-repeat;
		background-size: 101% 100%;
		z-index: 2;
	}
</style>
