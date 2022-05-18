<article class="contact-card">
	<slot name="content">
		<span class="missing">Unknown content</span>
	</slot>
</article>

<style>
	.contact-card {
		width: auto;
		height: auto;
		border: 2px solid rgb(6, 97, 158);
		border-radius: 15px;
		box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
		padding: 3%;
		margin: 1%;
		background-color: rgb(167, 199, 241);
		background-image: radial-gradient(rgba(202, 237, 248, 0.158), rgba(130, 218, 245, 0.507), rgba(73, 207, 248, 0.253), rgba(3, 191, 248, 0.729));
	}
</style>
