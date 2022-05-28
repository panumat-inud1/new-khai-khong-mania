<script lang="ts">
	import LayoutGrid, { Cell } from '@smui/layout-grid';
	import Item from '@smui/list/src/Item.svelte';
</script>

<div class="container">
	<LayoutGrid>
		<Cell spanDevices={{ desktop: 6, tablet: 8, phone: 4 }}>
			<div class="content-footer">
				<h4>
					Copyright © Game Online. Trademarks belong to their respective owners. All rights
					reserved.
				</h4>
			</div>
		</Cell>
		<Cell spanDevices={{ desktop: 6, tablet: 8, phone: 4 }}>
			<div class="content-footer">
				<div class="position">
					<ul class="col-4">
						{#each Array(4) as Item, i}
							<li><div class="item">{i + 1}</div></li>
						{/each}
					</ul>
				</div>
			</div>
		</Cell>
	</LayoutGrid>
</div>

<style>
	.container {
		color: rgb(145, 145, 145);
		background-color: rgb(34, 33, 33);
	}
	.content-footer {
		position: relative;
		height: 160px;
		border-top: 1px solid rgb(38, 38, 38);
	}
	h3,
	h4,
	h5 {
		position: absolute;
		top: 35%;
		left: 5%;
		text-transform: capitalize;
	}
	/* content item li */
	.position {
		position: absolute;
		top: 37%;
		width: 100%;
	}
	.col-4 {
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		list-style: none;
	}
	li {
		text-align: center;
		display: flex;
		justify-content: center;
	}
	.item {
		background-color: rgb(166, 162, 166);
		border-radius: 15px;
		width: 50%;
	}
	.item:hover {
		background-color: rgb(233, 65, 23);
	}
</style>
