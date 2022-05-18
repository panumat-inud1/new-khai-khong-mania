<script lang="ts">
	// your script goes here
	export let message = 'Click Me';
</script>

<button on:click>
	{message}
</button>

<style>
	button {
		height: 4rem;
		width: 7rem;
		border-radius: 2rem;
		background-color: #aaa;
		border-color: #f1c40f;
		color: #f1c40f;
		font-size: 1.25rem;
		background-image: linear-gradient(45deg, #f1c40f 50%, transparent 50%);
		background-position: 100%;
		background-size: 400%;
		transition: background 300ms ease-in-out;
	}
	button:hover {
		background-position: 0;
		color: #aaa;
	}

	@media only screen and (max-width: 840px) {
		button {
			height: 2rem;
			width: 4rem;
			font-size: 0.7rem;
		}
	}
</style>
