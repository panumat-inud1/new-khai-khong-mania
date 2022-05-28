<script>
	import '../app.css';
</script>

<main>
	<slot />
</main>

<style>
	main {
		width: 100%;
		display: flex;
		flex-direction: column;
		margin: 0 auto;
		background-color: #222;
		box-shadow: 0 0 10px black;
	}
</style>
