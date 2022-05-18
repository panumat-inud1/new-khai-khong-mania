<script>
	let menu = [
		{ id: '1', title: 'Home', active: '/' },
		{ id: '2', title: 'About', active: 'about' },
		{ id: '3', title: 'Payment', active: 'payment' },
		{ id: '4', title: 'Rules', active: '/' },
		{ id: '5', title: 'Support', active: '/' }
		
	];
	let id = 5;
</script>

<div class="container">
	<lu class="grid-content" style="grid-template-columns: repeat({id}, 1fr);">
		{#each menu as m, i}
			<li class="grid-item">
				<div class="button-item">
					<a href={m.active}>{m.title}</a>
				</div>
			</li>
		{/each}
	</lu>
</div>

<style>
	.container {
		width: 100%;
		padding-top: 3%;
	}
	.grid-content {
		display: grid;
	}
	.grid-item {
		display: flex;
		justify-content: center;
		list-style: none;
	}
	.button-item {
		text-align: center;
		width: 80px;
		height: 60px;
		background: url(icons/button.png) 0% 0% no-repeat;
		background-size: 100% auto;
	}
	a {
		text-decoration: none;
		position: relative;
		top: 22%;
		transition: 0.3s ease-in-out;
		color:  #005b80;
	}
	a:hover {
		padding: 1%;
		border: 1px solid #005b80;
		border-radius: 5px;
		box-shadow: 2px 2px 8px 4px rgba(0, 0, 0, 0.1);
	}

	@media (max-width: 430px) {
		.button-item {
		text-align: center;
		width: 70px;
		height: 50px;
		background: url(icons/button.png) 0% 0% no-repeat;
		background-size: 100% auto;
	}
	}
</style>
