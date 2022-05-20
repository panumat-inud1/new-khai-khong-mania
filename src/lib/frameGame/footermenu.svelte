<script lang="ts">

import { fade, fly } from 'svelte/transition';


</script>
<footer in:fly={{ y: 200, duration: 2500 }} out:fade>
	
		<slot name="content">

            <span>not found content</span>
        </slot>


</footer>
<style>
    	footer {
		position: absolute;
		width: 100%;
		height: 5%;
		bottom: 0;
		border-radius: 0px 0px 12px 12px;
		z-index: 99;
		background-color: #f05e29;

		background-image: radial-gradient(#dc8455, #de7238, #de611e, #dc540b);
	}
</style>