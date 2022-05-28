<script>
	import { images } from './imageData';
	import Slide from './Slide.svelte';
	import Thumbnail from './Thumbnai.svelte';
	import Caption from './Caption.svelte';
	import { onInterval } from './utils';
	import { slide, fade } from 'svelte/transition';

	/* IMAGE TO SHOW */
	let imageShowingIndex = 0;
	let Auto = true;
	let slideInterval;

	$: console.log(imageShowingIndex);
	$: image = images[imageShowingIndex];

	let seconds = 0;
	onInterval(() => (seconds += 1), 1000);
	$: console.log(seconds);
	$: if (seconds >= 5) {
		seconds = 0;
		if (imageShowingIndex === images.length - 1) {
			imageShowingIndex = 0;
		} else {
			imageShowingIndex += 1;
		}
	}

	const nextSlide = () => {
		if (imageShowingIndex === images.length - 1) {
			imageShowingIndex = 0;
		} else {
			imageShowingIndex += 1;
		}
	};

	const prevSlide = () => {
		if (imageShowingIndex === 0) {
			imageShowingIndex = images.length - 1;
		} else {
			imageShowingIndex -= 1;
		}
	};

	const goToSlide = (number) => (imageShowingIndex = number);
</script>

<main>
	<!-- image gallery -->
	<div class="container">
		<Slide
			image={image.imgurl}
			altTag={image.name}
			attr={image.attribution}
			slideNo={image.id + 1}
			totalSlides={images.length}
		/>

		<div class="dot-position">
			<div class="dot-row">
				{#each images as { id, imgurl, name, attribution }}
					<div class="dot" on:click={() => goToSlide(id)}>
						<div class="dd" class:active={imageShowingIndex === id} />
					</div>
				{/each}
			</div>
		</div>
	</div>

	<!-- Image text -->
	<Caption
		caption={images[imageShowingIndex].name}
		on:prevClick={prevSlide}
		on:nextClick={nextSlide}
	/>

	<!-- Thumbnail images -->
	<div class="thumbnails-row">
		{#each images as { id, imgurl, name, attribution }}
			<Thumbnail
				thumbImg={imgurl}
				altTag={name}
				titleLink={attribution}
				{id}
				selected={imageShowingIndex === id}
				on:click={() => goToSlide(id)}
			/>
		{/each}
	</div>
</main>

<style>
	.dd {
		height: 15px;
		width: 15px;
		background-color: rgb(250, 250, 250);
		border-radius: 15px;
		opacity: 1;
	}

	.active {
		opacity: 0.4;
	}
	.dot-position {
		position: absolute;
		bottom: 5%;
		left: 37%;
		width: 30%;
		display: flex;
	}
	.dot {
		width: 16.66%;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	/*	main {
		width: 70%;
		display: flex;
		flex-direction: column;
		margin: 0 auto;
		background-color: #222;
		box-shadow: 0 0 10px black;
	}*/

	/* Position the image container (needed to position the left and right arrows) */
	.container {
		position: relative;
	}

	.thumbnails-row {
		width: 100%;
		display: flex;
		align-self: flex-end;
	}
	.dot-row {
		width: 100%;
		display: flex;
		align-self: flex-end;
	}
</style>
