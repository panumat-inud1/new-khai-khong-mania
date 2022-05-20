<script lang="ts">
	import Button, { Label } from '@smui/button';
	$: now = new Date();
	export let playgame: boolean;

	function back() {
		window.location.href = '/';
	}
</script>

<div class="back" />
<footer>
	<!-- 
	{#if playgame}
		<Button variant="raised" on:click={() => (playgame = !playgame)}>Back</Button>
	{/if}
	-->
	<p>Copyright &copy; {now.getFullYear()} <a  href="http://www.fysidea.com">Fysidea Team.</a></p>
</footer>

<style>
	.back {
		position: fixed;
		display: flex;
	}
	footer {
		display: flex;
		position: fixed;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		bottom: 0px;
		width: 100%;
		background: transparent;
		height: 20px;
		z-index: 3;
	}

	footer a {
		font-weight: bold;
	}

	@media (min-width: 480px) {
		footer {
			padding: 3px 0;
		}
	}
</style>
