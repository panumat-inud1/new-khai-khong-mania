<script lang="ts">
	import Card, { Content, Media } from '@smui/card';
</script>

<div class="card-display">
	<div class="card-container">
		<Card variant="outlined">
			<slot name="content">
				<Media class="card-media-square" aspectRatio="square">
				
                </Media>
			</slot>
		</Card>
	</div>
</div>

<style>
	
	* :global(.card-media-square) {
		background-image: url(https://place-hold.it/320x320?text=square&fontsize=23);
	}
</style>
