<script lang="ts">
	import LayoutGrid, { Cell } from '@smui/layout-grid';
</script>

<div class="container">
	<LayoutGrid>
		<Cell spanDevices={{ desktop: 6, tablet: 8, phone: 4 }}>
			<div class="content-footer">
				<h3>
					Copyright © Game Online. Trademarks belong to their respective owners. All rights
					reserved.
				</h3>
			</div>
		</Cell>
		<Cell spanDevices={{ desktop: 6, tablet: 8, phone: 4 }}>
			<div class="content-footer">
				<h3>
					Copyright © Game Online. Trademarks belong to their respective owners. All rights
					reserved.
				</h3>
			</div>
		</Cell>
	</LayoutGrid>
</div>

<style>
	.container {
		color: rgb(145, 145, 145);
		background-color: rgb(11, 11, 11);
	}
	.content-footer {
		position: relative;
		height: 200px;
		border-top: 1px solid rgb(38, 38, 38);
	}
	h3,
	h4,
	h5 {
		position: absolute;
		top: 35%;
		text-align: center;
		text-transform: capitalize;
	}
</style>
