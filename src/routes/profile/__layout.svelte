<script>
	import Cardmain from '$lib/card/cardmain.svelte';

	let markets = [
		{ id: 1, shopName: 'SEAFOOD', images: 'imags/market/1.png', url: '/sefood', x: 20, y: 85 },
		{ id: 2, shopName: 'SEAFOOD', images: 'imags/market/2.png', url: '/sefood', x: 20, y: 75 },
		{ id: 3, shopName: 'SEAFOOD', images: 'imags/market/3.png', url: '/sefood', x: 15, y: 60 },
		{ id: 4, shopName: 'SEAFOOD', images: 'imags/market/4.png', url: '/sefood', x: 5, y: 55 },
		{ id: 5, shopName: 'SEAFOOD', images: 'imags/market/5.png', url: '/sefood', x: 15, y: 50 },
		{ id: 6, shopName: 'SEAFOOD', images: 'imags/market/6.png', url: '/sefood', x: 30, y: 50 },
		{ id: 7, shopName: 'SEAFOOD', images: 'imags/market/7.png', url: '/sefood', x: 75, y: 90 },
		{ id: 8, shopName: 'SEAFOOD', images: 'imags/market/8.png', url: '/sefood', x: 69, y: 80 },
		{ id: 9, shopName: 'SEAFOOD', images: 'imags/market/9.png', url: '/sefood', x: 60, y: 70 },
		{ id: 10, shopName: 'SEAFOOD', images: 'imags/market/10.png', url: '/sefood', x: 75, y: 60 },
		{ id: 11, shopName: 'SEAFOOD', images: 'imags/market/11.png', url: '/sefood', x: 85, y: 50 }
	];

	let trees = [
		{ id: 1, treeName: 'tree1', images: 'imags/trees/1.png', x: 5, y: 46 },
		{ id: 2, treeName: 'tree2', images: 'imags/trees/2.png', x: 20, y: 45 },
		{ id: 3, treeName: 'tree3', images: 'imags/trees/3.png', x: 15, y: 80 },
		{ id: 4, treeName: 'tree4', images: 'imags/trees/4.png', x: 75, y: 70 }
	];

	let innerWidth;
	let innerHeight;
</script>

<svelte:window bind:innerWidth bind:innerHeight />

{innerHeight / 2 + 125}

<Cardmain>
	<div slot="content">
		<!--start game bg-->
		<div class="game-bg-color">
			<!--ตัวกำหนดขนาดหน้าจอ style="height: 870px;px;" -->
			<div class="game-bg-imag">
				<div class="position">
					{#each trees as tree, j}
						<div
							class="tree"
							style="top:{tree.y}%;left:{tree.x}%;background: url({tree.images}) 0% 0% no-repeat;background-size: 100% auto;"
						/>
					{/each}
					{#each markets as mkt, i}
						<div
							on:click={() => alert('GOTO-MarKet')}
							class="market"
							style="top:{mkt.y}%;left:{mkt.x}%; background: url({mkt.images}) 0% 0% no-repeat;background-size: 100% auto;"
						>
							<div class="item-market" />
						</div>
					{/each}

					<div class="top-menu-game">TOP MENU GAME</div>
					<div class="foot-menu-game">FOOR MENU GAME</div>
				</div>
			</div>
		</div>
		<!--end game bg-->

		<slot />
	</div>
</Cardmain>

<style>
	.game-bg-color {
		background-color: white;
	}
	/* กำหนดขนาดหน้าจอเกมส์ Desktop tablet phone*/
	.game-bg-imag {
		height: 870px;
		background: url(imags/bg/6.png) 0% 0% no-repeat;
		background-size: 100% auto;
	}
	.position {
		position: relative;
		width: 100%;
		height: 100%;
	}
	.market {
		position: absolute;
		height: 10%;
		width: 10%;
	}
	.market:hover {
		padding: 1%;
		animation-duration: 1s;
	}

	.item-market {
		position: absolute;
	}
	.tree {
		position: absolute;
		height: 20%;
		width: 10%;
	}
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
		background-color: black;
		width: 30%;
		height: 5%;
		bottom: 0%;
	}

	@media (max-width: 840px) {
		.game-bg-imag {
			height: 694px;
		}
	}

	@media (max-width: 430px) {
		.game-bg-imag {
			height: 331px;
		}
		.market {
			height: 70px;
			width: 70px;
		}
		.tree {
			height: 100px;
			width: 80px;
		}
	}
	h3,
	h4,
	h5 {
		text-transform: capitalize;
		color: rgb(248, 114, 4);
	}
</style>
