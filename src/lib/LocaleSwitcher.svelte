<script>
	import { createEventDispatcher } from 'svelte';
	import { t, locales, locale } from './translation';

	const dispatch = createEventDispatcher();

	function switchLocale(event) {
		event.preventDefault();
		dispatch('locale-changed', event.target.value);
	}

	let choices = ['EN', 'TH'];
	let selected = 'EN';
</script>

<div>{$t('header.lang')}</div>
<select bind:value={$locale} style="margin-right: 10px; margin-left: 10px;">
	{#each $locales as value}
		<option {value}>{$t(`lang.${value}`)}</option>
	{/each}
</select>
