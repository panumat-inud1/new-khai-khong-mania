<script lang="ts">
	import Cardleft from '$lib/card/cardleft.svelte';
	import Button, { Label } from '@smui/button';
	import HelperText from '@smui/textfield/helper-text';

	//import { playgame } from '../../global.svelte';
	//Componentfield
	//textarea helperLine$style="width: 100%;"
	//style="width: 100%;" input$rows={4}
	//input$cols={24} input$resizable={false}  type="email"
	//input$step="2" type="number"
	import Textfield from '@smui/textfield';
	export let playgame: boolean;
	let username = '';
	let password = '';

	function active() {
		window.location.href = 'profile';
	}
	let url = 'profile';

	function login() {
		window.location.href = 'profile';
		user(url, playgame, username, password);
	}

	function user(url: string, playgame: boolean, user: string, pass: string) {
		url;
		playgame;
		pass;
		user;
		console.log(url);
		console.log(playgame);
		console.log(user);
		console.log(pass);
	}

	const puser = 1682979;
	const nuser = 1621;
	const auser = 26845;
</script>

<!-- Card login -->
<div class="dispay-card">
	<Cardleft>
		<div slot="content">
			<div class="field-text">
				<Textfield
					style="width: 100%;"
					input$resizable={false}
					variant="outlined"
					invalid
					bind:value={username}
					label="Email"
					type="email"
				/>
			</div>
			<div style="margin: 2%;text-align: center;">
				<p>Password[<a href="/">Forgot password?</a>]:</p>
			</div>

			<div class="field-text">
				<Textfield
					style="width: 100%;"
					input$resizable={false}
					variant="outlined"
					invalid
					bind:value={password}
					label="Password"
					type="password"
				/>
			</div>
			<div class="col-2">
				<Button
					on:click={() => (playgame = !playgame)}
					type="submit"
					style="width: 100%;"
					variant="outlined"
				>
					<Label>Enter</Label>
				</Button>
				<Button variant="outlined">
					<Label>Register</Label>
				</Button>
			</div>
		</div>
	</Cardleft>
</div>

<!-- Card statistics -->
<div class="dispay-card">
	<Cardleft>
		<div slot="content">
			<div class="col-2">
				<p>All participants:</p>
				<span>{puser} Users</span>
			</div>
			<div class="col-2">
				<p>New for 24 hours:</p>
				<span>{nuser} Users</span>
			</div>
			<div class="col-2">
				<p>Avtive today:</p>
				<span>{auser} Users</span>
			</div>
		</div>
	</Cardleft>
</div>
<!-- PlaygameTest-->
<div class="dispay-card">
	<Cardleft>
		<div slot="content">
			<h3 style="color:orangered;text-align: center;">TEST DISPLAY GAME</h3>
			<div class="col-2">
				<Button on:click={active} type="submit" style="width: 100%;" variant="raised"
					>PLayGame</Button
				>
				<Button
					on:click={() => (playgame = !playgame)}
					type="submit"
					style="width: 100%;"
					variant="raised">ขยายจอ</Button
				>
			</div>
		</div>
	</Cardleft>
</div>

<style>
	.dispay-card {
		margin-bottom: 5%;
	}

	/* Card statistics */
	p {
		text-align: center;
		font-size: 13.5px;
		font-weight: bold;
	}
	span {
		font-weight: bold;
		color: #27a021;
		padding-top: 11%;
		text-align: center;
		font-size: 13.5px;
	}

	/* Card login*/
	a {
		font-size: 10%;
		list-style: none;
	}
	.col-2 {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
	}
	.field-text {
		margin: 5%;
		background-color: rgba(247, 246, 246, 0.299);
	}
</style>
