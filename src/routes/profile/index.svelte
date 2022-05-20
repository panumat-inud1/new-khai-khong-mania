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
			w: 15,
			h: 13,
			z:11 // มีทั้งหมด 11 
		},
		{
			id: 2,
			shopName: 'SEAFOOD',
			images: 'imags/market/2.png',
			url: '/sefood',
			x: 27,
			y: 75,
			w: 10,
			h: 13,
			z:10
		},
		{
			id: 3,
			shopName: 'SEAFOOD',
			images: 'imags/market/3.png',
			url: '/sefood',
			x: 27,
			y: 67,
			w: 8,
			h: 10,
			z:9
		},
		{
			id: 4,
			shopName: 'SEAFOOD',
			images: 'imags/market/4.png',
			url: '/sefood',
			x: 12,
			y: 59,
			w: 15,
			h: 12,
			z:8
		},
		{
			id: 5,
			shopName: 'SEAFOOD',
			images: 'imags/market/5.png',
			url: '/sefood',
			x: 19,
			y: 51,
			w: 14,
			h: 11,
			z:7
		},
		{
			id: 6,
			shopName: 'SEAFOOD',
			images: 'imags/market/6.png',
			url: '/sefood',
			x: 33,
			y: 48,
			w: 16,
			h: 10,
			z:6
		},
		{
			id: 7,
			shopName: 'SEAFOOD',
			images: 'imags/market/7.png',
			url: '/sefood',
			x: 71,
			y: 85,
			w: 15,
			h: 13,
			z:5
		},
		{
			id: 8,
			shopName: 'SEAFOOD',
			images: 'imags/market/8.png',
			url: '/sefood',
			x: 64,
			y: 70,
			w: 14,
			h: 14,
			z:4
		},
		{
			id: 9,
			shopName: 'SEAFOOD',
			images: 'imags/market/9.png',
			url: '/sefood',
			x: 50,
			y: 60,
			w: 13,
			h: 14,
			z:3
		},
		{
			id: 10,
			shopName: 'SEAFOOD',
			images: 'imags/market/10.png',
			url: '/sefood',
			x: 63,
			y: 55,
			w: 15,
			h: 11,
			z:2
		},
		{
			id: 11,
			shopName: 'SEAFOOD',
			images: 'imags/market/11.png',
			url: '/sefood',
			x: 79,
			y: 47,
			w: 13,
			h: 13,
			z:2
		}
	];

	let trees = [
		{ id: 1, treeName: 'tree1', images: 'imags/trees/1.png', x: 13, y: 70, w: 14, h: 25 },
		{ id: 2, treeName: 'tree2', images: 'imags/trees/2.png', x: 9, y: 45, w: 10, h: 19 },
		{ id: 3, treeName: 'tree3', images: 'imags/trees/3.png', x: 25, y: 39, w: 10, h: 17 },
		{ id: 4, treeName: 'tree4', images: 'imags/trees/5.png', x: 82, y: 60, w: 10, h: 15 },
		{ id: 5, treeName: 'tree4', images: 'imags/trees/4.png', x: 78, y: 67, w: 14, h: 25 }
		
	];
</script>

<Backgroundimages x={0} y={0} url={'imags/bg/7.png'} width={100} height={100} />
<Backgroundimages x={0} y={50} url={'imags/bg/1.png'} width={100} height={50} />
<Backgroundimages x={0} y={1} url={'imags/bg/3.png'} width={100} height={50} />
<Backgroundimages x={30} y={50.7} url={'imags/bg/2.png'} width={50} height={49.5} />



<!-- Car-->
<Backgroundimages x={42} y={58} url={'imags/car/3/1.png'} width={7} height={5} />
<Backgroundimages x={56} y={90} url={'imags/car/3/2.png'} width={15} height={8} />

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
	<Animetionimags x={market.x} y={market.y} z={market.z} url={market.images} width={market.w} height={market.h} />
{/each}

<div class="top-menu-game">
	TOP MENU GAME
	<a href="profile/shop">SHOP</a>
	<a href="profile/mymachine">STOREHOUSE</a>
</div>
<div class="foot-menu-game">FOORTER MENU AND SETTING GAME</div>

<style>
	/*ขนาดของ ร้านค้า พื้นหลัง */
	.top-menu-game {
		position: absolute;
		background-color: rgba(0, 0, 0, 0.747);
		width: 70%;
		height: 3%;
		left: 0%;
		right: 0%;
		z-index: 50;
	}
	.foot-menu-game {
		position: absolute;
		background-color: rgba(19, 18, 18, 0.349);
		width: 50%;
		height: 3%;
		bottom: 0%;
		z-index: 50;
	}

	@media (max-width: 840px) {
	}

	@media (max-width: 576px) {
	}
</style>
