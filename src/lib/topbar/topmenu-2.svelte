<script>
	let menu = [
		{ id: '1', title: 'Home', active: '/',img: 'imags/menu/Saba-Sushi-on-Tray.png' },
		{ id: '2', title: 'Payment', active: 'payments',img: 'imags/menu/Salmon.png' },
		{ id: '3', title: 'About', active: 'about',img: 'imags/menu/Tako-Sushi.png' },
		{ id: '4', title: 'Rules', active: 'rules',img: 'imags/menu/Tamako-Sushi.png' },
		{ id: '5', title: 'Calculate', active: 'calculate',img: 'imags/menu/Tempura-Tray.png' },
		{ id: '6', title: 'Support', active: 'support',img: 'imags/menu/Salmon-Salad.png'},
	];
    
	let id = 6;
</script>

<div class="container">
	<lu class="grid-content" style="grid-template-columns: repeat({id}, 1fr);">
		{#each menu as m, i}
			<li class="grid-item">
				<div class="button-item" style="background: url({m.img}) 0% 0% no-repeat;background-size: 100% 100%;">
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
		width: 120px;
		height: 100px;
        
	}
	a {
		text-decoration: none;
		position: relative;
		top: 50%;
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
		width: 65px;
		height: 60px;
		background: url(icons/button.png) 0% 0% no-repeat;
		background-size: 100% 100%;
	}
    
	a {
		font-size: 0.5px;
		top: 47%;
	}
	
	}
</style>
