<script>
	import Button, { Label } from '@smui/button';
	let machine = [
		{
			id: 1,
			shopName: 'SEAFOOD',
			images: '/imags/machine/1.png',
			action: '/sefood',
			width: 20,
			height: 85
		},
		{
			id: 2,
			shopName: 'SEAFOOD',
			images: '/imags/machine/2.png',
			action: '/sefood',
			width: 20,
			height: 75
		},
		{
			id: 3,
			shopName: 'SEAFOOD',
			images: '/imags/machine/3.png',
			action: '/sefood',
			width: 15,
			height: 60
		},
		{
			id: 4,
			shopName: 'SEAFOOD',
			images: '/imags/machine/4.png',
			action: '/sefood',
			width: 5,
			height: 55
		},
		{
			id: 5,
			shopName: 'SEAFOOD',
			images: '/imags/machine/5.png',
			action: '/sefood',
			width: 15,
			height: 50
		},
		{
			id: 6,
			shopName: 'SEAFOOD',
			images: '/imags/machine/6.png',
			action: '/sefood',
			width: 30,
			height: 50
		},
		{
			id: 7,
			shopName: 'SEAFOOD',
			images: '/imags/machine/7.png',
			action: '/sefood',
			width: 75,
			height: 90
		},
		{
			id: 8,
			shopName: 'SEAFOOD',
			images: '/imags/machine/8.png',
			action: '/sefood',
			width: 69,
			height: 80
		},
		{
			id: 9,
			shopName: 'SEAFOOD',
			images: '/imags/machine/9.png',
			action: '/sefood',
			width: 60,
			height: 70
		},
		{
			id: 10,
			shopName: 'SEAFOOD',
			images: '/imags/machine/10.png',
			action: '/sefood',
			x: 75,
			y: 60
		},
		{
			id: 11,
			shopName: 'SEAFOOD',
			images: '/imags/machine/11.png',
			action: '/sefood',
			x: 85,
			y: 50
		}
	];
</script>

<div class="back-page">
	<Button variant="raised" href="/khai-khong-mania">BACK</Button>
</div>

<div class="bg-machine">
    <div class="silver-coin">

    </div>

</div>

<style>
	.bg-machine {
		width: 100%;
		height: 100%;
		left: 0%;
		top: 0%;
		position: absolute;
		background-color: rgb(2, 2, 2);
		border-radius: 1%;
	}
    .silver-coin{
        position: absolute;
        top: 5%;
        left: 15%;
        
        width: 70%;
        height: 7%;

        background-color: #f05e29;
        border-radius: 15px;
		box-shadow: 0px 6px 14px -5px rgb(0 0 0 / 10%);
		background-image: radial-gradient(#f6ebd8ed, #f8e9cc, #f6ddc5, #f7dbbf);
    }
	.card-shop {
		margin: 1%;
		padding: 1%;
        
		border: 1px solid #f05e29;
		border-radius: 15px;
		box-shadow: 0px 6px 14px -5px rgb(0 0 0 / 10%);
		background-image: radial-gradient(#f6ebd8ed, #f8e9cc, #f6ddc5, #f7dbbf);
	}
	.col-2 {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
	}

	.back-page {
		position: absolute;
        z-index: 10;
	}

	p {
		font-size: 100%;
		text-transform: capitalize;
	}
	h1,
	h2,
	h3,
	h4,
	h5,
	h6 {
		text-transform: capitalize;
		color: black;
	}

	@media (max-width: 576px) {
	}
</style>
