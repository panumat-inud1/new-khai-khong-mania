<script lang="ts">
	import Button, { Label } from '@smui/button';
	$: now = new Date();
	

	function back() {
		window.location.href = '/';
	}
</script>

<!-- <Button variant="raised" on:click={() => (playgame = !playgame)}>ขยายจอ</Button> -->
<footer>
	<p>Copyright &copy; {now.getFullYear()} <a href="http://www.fysidea.com">Fysidea Team.</a></p>

</footer>

<style>

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
		z-index: 65;
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
