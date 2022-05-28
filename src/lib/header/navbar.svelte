<script lang="ts">
	import type { TopAppBarComponentDev } from '@smui/top-app-bar';
	import TopAppBar, { Row, Section, Title, AutoAdjust } from '@smui/top-app-bar';
	import IconButton from '@smui/icon-button';
	let topAppBar: TopAppBarComponentDev;

	let innerWidth;
	let innerHeight;

	const phone = 768;
</script>

<svelte:window bind:innerWidth bind:innerHeight />

{#if innerWidth > phone}
	<div class="container">
		<ul class="conten-left">
			<li><a href="#home">Home(LOGO)</a></li>
		</ul>
		<ul class="conten-center">
			<li class="dropdown">
				<a href="javascript:void(0)" class="dropbtn">เกม</a>
				<div class="dropdown-content">
					<a href="#">Link 1</a>
					<a href="#">Link 2</a>
					<a href="#">Link 3</a>
				</div>
			</li>
			<li><a href="#news">บริการลูกค้า</a></li>
		</ul>
		<ul class="conten-right">
			<li>
				<a style="border-right: 1px solid rgb(48, 48, 48);" href="#login">สมัครสมาชิก</a><a
					href="#login">ล๊อคอิน</a
				>
			</li>
		</ul>
	</div>
{/if}

<!-- phone -->
{#if innerWidth < phone}
	<TopAppBar bind:this={topAppBar} variant="short" color="secondary">
		<Row>
			<Section>
				<IconButton class="material-icons" touch>menu</IconButton>
			</Section>
			<Section align="end" toolbar>
				<IconButton class="material-icons" aria-label="Download" touch>settings</IconButton>
			</Section>
		</Row>
	</TopAppBar>
	<AutoAdjust {topAppBar} />
{/if}

<style>
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

		line-height: 40px;
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
		font-size: 25px;
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
