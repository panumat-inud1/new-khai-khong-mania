<article class="contact-card">
	<slot name="content">
		<span class="missing">Unknown content</span>
	</slot>
</article>

<style>
	.contact-card {
		width: auto;
		height: auto;
		border: 2px solid #f05e29;
		border-radius: 15px;

		box-shadow: 0px 6px 14px -5px rgb(0 0 0 / 10%);
		padding: 3%;
		margin: 1%;
		background-image: radial-gradient(#f6ebd8ed, #f8e9cc, #f6ddc5, #f7dbbf);
	}
</style>
