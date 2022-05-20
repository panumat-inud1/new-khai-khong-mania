<script>
	
	import { fade, fly } from 'svelte/transition';
	
</script>

<header in:fly={{ x: 200, duration: 2000 }} out:fade>
	<slot name="content">
        <span>not found </span>
    </slot>
</header>

<style>
    header {
		position: absolute;
		top: 0%;
		width: 100%;
		height: 5%;
		border-radius: 12px 12px 0px 0px;
		z-index: 50;
		background-color: #f05e29fd;
		background-image: radial-gradient(#dc8455, #de7238, #de611e, #dc540b);
	}
</style>