<script lang="ts">
	import Animetionimags from '$lib/frameGame/animetionimags.svelte';
	import Backgroundimages from '$lib/frameGame/backgroundimages.svelte';

	let markets = [
		{
			id: 1,
			shopName: 'SEAFOOD',
			images: 'imags/market/1.png',
			url: '/sefood',
			x: 20,
			y: 85,
			w: 10,
			h: 10
		},
		{
			id: 2,
			shopName: 'SEAFOOD',
			images: 'imags/market/2.png',
			url: '/sefood',
			x: 20,
			y: 75,
			w: 10,
			h: 10
		},
		{
			id: 3,
			shopName: 'SEAFOOD',
			images: 'imags/market/3.png',
			url: '/sefood',
			x: 15,
			y: 60,
			w: 10,
			h: 10
		},
		{
			id: 4,
			shopName: 'SEAFOOD',
			images: 'imags/market/4.png',
			url: '/sefood',
			x: 5,
			y: 55,
			w: 10,
			h: 10
		},
		{
			id: 5,
			shopName: 'SEAFOOD',
			images: 'imags/market/5.png',
			url: '/sefood',
			x: 15,
			y: 50,
			w: 10,
			h: 10
		},
		{
			id: 6,
			shopName: 'SEAFOOD',
			images: 'imags/market/6.png',
			url: '/sefood',
			x: 30,
			y: 50,
			w: 10,
			h: 10
		},
		{
			id: 7,
			shopName: 'SEAFOOD',
			images: 'imags/market/7.png',
			url: '/sefood',
			x: 75,
			y: 90,
			w: 10,
			h: 10
		},
		{
			id: 8,
			shopName: 'SEAFOOD',
			images: 'imags/market/8.png',
			url: '/sefood',
			x: 69,
			y: 80,
			w: 10,
			h: 10
		},
		{
			id: 9,
			shopName: 'SEAFOOD',
			images: 'imags/market/9.png',
			url: '/sefood',
			x: 60,
			y: 70,
			w: 10,
			h: 10
		},
		{
			id: 10,
			shopName: 'SEAFOOD',
			images: 'imags/market/10.png',
			url: '/sefood',
			x: 75,
			y: 60,
			w: 10,
			h: 10
		},
		{
			id: 11,
			shopName: 'SEAFOOD',
			images: 'imags/market/11.png',
			url: '/sefood',
			x: 85,
			y: 50,
			w: 10,
			h: 10
		}
	];

	let trees = [
		{ id: 1, treeName: 'tree1', images: 'imags/trees/1.png', x: 5, y: 46, w: 10, h: 15 },
		{ id: 2, treeName: 'tree2', images: 'imags/trees/2.png', x: 20, y: 45, w: 10, h: 15 },
		{ id: 3, treeName: 'tree3', images: 'imags/trees/3.png', x: 15, y: 80, w: 10, h: 15 },
		{ id: 4, treeName: 'tree4', images: 'imags/trees/4.png', x: 75, y: 70, w: 10, h: 15 }
	];
</script>

<Backgroundimages x={0} y={50} url={'imags/bg/1.png'} width={100} height={50} />
<Backgroundimages x={0} y={1} url={'imags/bg/3.png'} width={100} height={50} />
<Backgroundimages x={30} y={51} url={'imags/bg/2.png'} width={50} height={50} />

{#each trees as tree, j}
	<!-- 
	<div
		class="tree"
		style="top:{tree.y}%;left:{tree.x}%;background: url({tree.images}) 0% 0% no-repeat;background-size: 100% auto;"
	/>-->

	<Backgroundimages x={tree.x} y={tree.y} url={tree.images} width={tree.w} height={tree.h} />
{/each}

{#each markets as market, i}
	<!-- <div
		on:click={() => alert('GOTO-MarKet')}
		class="market"
		style="top:{mkt.y}%;left:{mkt.x}%; background: url({mkt.images}) 0% 0% no-repeat;background-size: 100% auto;"
	>
		
	</div> -->
	<Animetionimags x={market.x} y={market.y} url={market.images} width={market.w} height={market.h} />
{/each}

<div class="top-menu-game">
	TOP MENU GAME
	<a href="profile/shop">GOTO TEST SHOP</a>
</div>
<div class="foot-menu-game">FOOR MENU GAME</div>

<style>
	/*ขนาดของ ร้านค้า พื้นหลัง */
	.top-menu-game {
		position: absolute;
		background-color: black;
		width: 50%;
		height: 3%;
		left: 0%;
		right: 0%;
	}
	.foot-menu-game {
		position: absolute;
		background-color: rgb(19, 18, 18);
		width: 30%;
		height: 5%;
		bottom: 0%;
	}

	@media (max-width: 840px) {
	}

	@media (max-width: 576px) {
	}
</style>
