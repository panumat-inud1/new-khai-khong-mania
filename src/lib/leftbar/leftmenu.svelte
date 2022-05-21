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

	let username = '';
	let password = '';

	function active() {
		$playgame = 'full';
		window.location.href = '/khai-khong-mania';
	}

	const puser = 1682979;
	const nuser = 1621;
	const auser = 26845;

	//รับค่าจาก Stores
	import { playgame, userName, logins } from '../../stores';
	let playgameFullscreen: Boolean;
	// รับค่าจาก Stroes
	/*playgame.subscribe((value) => {
		playgameFullscreen = value;
	});
 */
	//  Update Stroes
	function fullscreen() {
		playgame.update(() => (playgameFullscreen = !playgameFullscreen));
	}

	function login() {
		if (username == $userName && password == 'admin') {
			$logins = 'login';
			window.location.replace('/');
		} else {
			alert('Incorrect password or email');
		}
	}
	function logout() {
		$logins = 'logout';
		window.location.href = '/';
	}
</script>

<!--Card Profile-->
{#if $logins == 'login'}
	<div class="dispay-card">
		<Cardleft>
			<div slot="content">
				<h3 style="color:orangered;text-align: center;">Profile</h3>
				<h4 style="color:orangered;text-align: center;">TEST DISPLAY GAME</h4>
				<div class="col-2">
					<div class="field-text">
						<Button on:click={active} style="width: 100%;" variant="raised">PLayGame</Button>
					</div>
					<div class="field-text">
						<Button on:click={logout} style="width: 100%;" variant="raised">LOGOUT</Button>
					</div>
				</div>
				<div class="field-text">
					<Button on:click={()=>(window.location.href = '/screens')} style="width: 100%;" variant="raised">TEST DISPLAY</Button>
				</div>
			</div>
		</Cardleft>
	</div>
{/if}

<!-- Card login -->
{#if $logins == 'logout'}
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
					<Button on:click={login} type="submit" style="width: 100%;" variant="outlined">
						<Label>Enter</Label>
					</Button>
					<Button variant="outlined">
						<Label>Register</Label>
					</Button>
				</div>
			</div>
		</Cardleft>
	</div>
{/if}

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

<style>
	.dispay-card {
		margin-bottom: 5%;
	}

	/* Card statistics */
	p {
		text-align: center;
		font-size: 12.5px;
		font-weight: bold;
	}
	span {
		font-weight: bold;
		color: #27a021;
		padding-top: 9.5%;
		text-align: center;
		font-size: 13.5px;
	}

	/* Card login*/
	a {
		font-size: 13.5px;
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
	@media (max-width: 750px) {
		p {
			font-size: 10.5px;
		}
		span {
			padding-top: 9%;
			font-size: 10.5px;
		}
	}
</style>
