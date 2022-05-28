<script lang="ts">
	import { slide } from 'svelte/transition';
	import type { TopAppBarComponentDev } from '@smui/top-app-bar';
	import TopAppBar, { Row, Section, Title, AutoAdjust } from '@smui/top-app-bar';
	import IconButton from '@smui/icon-button';
	let topAppBar: TopAppBarComponentDev;
	import { playgame, screen, logins, routers, userName } from '../../stores';
	import Collapsible from '$lib/collapsible/collapsible.svelte';
	let innerWidth;
	let innerHeight;

	const phone = 769;
	let menucollap = false;
	function logout() {
		$logins = 'logout';
		window.location.href = '/';
	}

	let menuheader = [
		{ id: 1, name: 'GAME CENTER', action: '/' },
		{ id: 2, name: 'SERVICE', action: '/' },
		{ id: 3, name: 'REGISTER', action: '/' },
		{ id: 4, name: 'LOGIN', action: '/' }
		
	];
	let detialmenu =[
		{ id: 1, name: 'GAME CENTER', action: '/' },
		{ id: 2, name: 'SERVICE', action: '/' },
		{ id: 3, name: 'REGISTER', action: '/' },
		{ id: 4, name: 'LOGIN', action: '/' }
	]
</script>

<svelte:window bind:innerWidth bind:innerHeight />

{#if innerWidth > phone}
	<div class="container">
		<ul class="conten-left">
			<li><a href="/">Home[LOGO]</a></li>
		</ul>
		<ul class="conten-center">
			<li class="dropdown">
				<a href="javascript:void(0)" class="dropbtn">GAME CENTER</a>
				<div class="dropdown-content">
					<a href="#">Link 1</a>
					<a href="#">Link 2</a>
					<a href="#">Link 3</a>
				</div>
			</li>
			<li><a href="/service/service">SERVICE</a></li>
		</ul>
		<ul class="conten-right">
			<li>
				{#if $logins == 'login'}
					<a style="border-right: 1px solid rgb(48, 48, 48);"><div>{$userName}</div></a>
					<a on:click={logout}>LOGOUT</a>
				{:else}
					<a style="border-right: 1px solid rgb(48, 48, 48);" href="/register">REGISTER</a>
					<a href="/login">LOGIN</a>
				{/if}
			</li>
		</ul>
	</div>
{/if}

<!-- phone -->
{#if innerWidth < phone}
	<TopAppBar bind:this={topAppBar} variant="short" color="secondary">
		<Row>
			<Section>
				<IconButton class="material-icons" on:click={() => (menucollap = !menucollap)} touch
					>menu</IconButton
				>
				{menucollap}
			</Section>
			<Section align="end" toolbar>
				<IconButton class="material-icons" aria-label="Download" touch>settings</IconButton>
			</Section>
		</Row>
	</TopAppBar>
	<AutoAdjust {topAppBar}>
		{#if menucollap}
			<div class="menu-collap" transition:slide={{ duration: 500 }}>
				<section>
					{#each Array(4) as item, i}
						<Collapsible headerText={'Collapse or Expand me'}>
							{#each Array(5) as item, j}
								<div class="item">
									<a href="#">content{j + 1}</a>
								</div>
							{/each}
						</Collapsible>
					{/each}
				</section>
			</div>
		{/if}
	</AutoAdjust>
{/if}

<style>
	/*TOP BAR SCREEN PHONE */
	section {
		width: 100%;
	}
	.item {
		padding: 3px;
	}
	.item:hover {
		background-color: #222;
	}

	/*TOP BAR SCREEN DESK TOP */
	.container {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
	}
	.conten-center {
		display: flex;
		justify-content: center;
	}
	.conten-right {
		display: flex;
		justify-content: left;
	}
	.conten-left {
		display: flex;
		justify-content: center;
	}
	ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;

		line-height: 30px;
		background-color: rgba(15, 15, 15, 0.9);
		border-bottom: 2px solid rgb(228, 30, 38);
	}

	li {
		float: left;
	}

	li a,
	.dropbtn {
		display: inline-block;
		color: rgba(255, 255, 255, 0.774);
		text-align: center;
		padding: 14px 16px;
		text-decoration: none;
		font-size: 18px;
	}
	a:hover {
		color: #f9f9f9;
	}
	li a:hover,
	.dropdown:hover .dropbtn {
		background-color: red;
	}

	li.dropdown {
		display: inline-block;
	}

	.dropdown-content {
		display: none;
		position: absolute;
		background-color: #f9f9f9;
		min-width: 200px;
		box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
		z-index: 1;
	}

	.dropdown-content a {
		color: black;
		padding: 12px 16px;
		text-decoration: none;
		display: block;
		text-align: left;
	}

	.dropdown-content a:hover {
		background-color: #f1f1f1;
	}

	.dropdown:hover .dropdown-content {
		display: block;
	}
</style>
