<script lang="ts">
	import Drawer, { AppContent, Content, Header, Title, Subtitle, Scrim } from '@smui/drawer';
	import Button, { Label } from '@smui/button';
	import List, { Item, Text, Graphic, Separator, Subheader } from '@smui/list';
	import Leftmenu from './leftmenu.svelte';

	export let open: boolean;
	export let playgame: true;
	let active = 'Inbox';

	function setActive(value: string) {
		active = value;
		open = false;
	}
</script>

<div class="drawer-container">
	<!-- Don't include fixed={false} if this is a page wide drawer.
          It adds a style for absolute positioning. -->
	<Drawer variant="modal" fixed={true} bind:open>
		<!-- <Header>
			<Title>Super Mail</Title>
			<Subtitle>It's the best fake mail app drawer.</Subtitle>
		</Header>
		-->
		<Content>
			<!-- <List>
				<Item
					href="javascript:void(0)"
					on:click={() => setActive('/')}
					activated={active === '/'}
				>
					<Graphic class="material-icons" aria-hidden="true">home</Graphic>
					<Text>Home</Text>
				</Item>
			</List>-->
			<Leftmenu bind:playgame />
		</Content>
	</Drawer>

	<!-- Don't include fixed={false} if this is a page wide drawer.
          It adds a style for absolute positioning. -->
	<Scrim fixed={true} />
	<AppContent class="app-content">
		<main class="main-content" />
	</AppContent>
</div>

<style>
	/* These classes are only needed because the
      drawer is in a container on the page. */
	.drawer-container {
		position: relative;
		display: flex;
		height: auto;
		width: 100%;
		overflow: hidden;
		z-index: 2;
	}

	* :global(.app-content) {
		flex: auto;
		overflow: auto;
		position: relative;
		flex-grow: 1;
	}

	.main-content {
		overflow: auto;
		height: 100%;
		box-sizing: border-box;
	}
</style>
