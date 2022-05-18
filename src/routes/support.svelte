<script>
	import Cardmain from '$lib/card/cardmain.svelte';
</script>
<svelte:head>
	<title>Sypport</title>
	<meta name="description" content="Home this app" />
</svelte:head>
<div class="card-display">
	<Cardmain>
		<div slot="content">
			<p>
                Before creating a new application, make sure that there is no necessary for you information in 
                <a href="/">Frequently Asked Questions</a>
            </p>
            <hr />
            <p>To apply for the technical support sign in, please!</p>
            <p>Email: support@coin-birds.com</p>
		</div>
	</Cardmain>
</div>

<style>
    p{
        text-align-last: center;
    }

</style>
