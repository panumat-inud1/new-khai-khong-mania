<script lang="ts">
	import Custombutton from './custombutton.svelte';

	let menu = [
		{ id: '1', title: 'Home', active: 'home' },
		{ id: '2', title: 'About', active: 'about' },
		{ id: '3', title: 'Payment', active: 'payment' },
		{ id: '4', title: 'PayGame', active: 'game' },
		
	];
</script>

<div class="top-menu">
	<div class="logo-home">
		<p style="color: white;text-align: center;padding-top: 20px;">120 * 20</p>
	</div>

	<ul class="buttom-menu">
		{#each menu as mu, i}
			<li class="buttom-item">
				<Custombutton message={mu.title} />
			</li>
		{/each}
	</ul>
</div>

<style>
	.top-menu {
		width: 100%;
		height: 120px;
	}
	.logo-home {
		position: absolute;
		margin: 10px 20px;
		width: 120px;
		height: 90px;
		background-image: url() 0px 0px no-repeat;
		background-size: 100px 80px;
		background-color: black;
		z-index: 1;
	}
	.buttom-menu {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		justify-content: flex-start;
		align-items: stretch;
		box-sizing: border-box;
		margin: 36px 0 0 70px;
	}
	.buttom-item {
		list-style: none;
		text-align: center;
		box-sizing: border-box;
		width: 25%;
	}

	@media only screen and (max-width: 840px) {
		.top-menu {
			height: 100px;
		}
		.logo-home {
			margin: 15px 10px;
			width: 90px;
			height: 70px;
		}

		.buttom-menu {
			margin: 0;
			padding: 53px 0 0 100px;
		}
	}
</style>
