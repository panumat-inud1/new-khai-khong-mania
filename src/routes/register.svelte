<script>
	import Button from '@smui/button';
	import Textfield from '@smui/textfield';
	let innerHeight;
	let email = '';
	let password;
</script>

register<svelte:window bind:innerHeight />

<div class="bg" style="height: {innerHeight}px;">
	<div class="container">
		<div class="box-login">
			<div style="text-align: center;">
				<h2>ลงชื่อเข้าใช้</h2>
			</div>
			<div class="content">
				<div class="field">
					<Textfield
						style="width: 100%;"
						input$resizable={false}
						variant="outlined"
						bind:value={email}
						label="Email"
						type="email"
					/>
				</div>
				<div class="field">
					<Textfield
						style="width: 100%;"
						input$resizable={false}
						variant="outlined"
						bind:value={email}
						label="Password"
						type="email"
					/>
				</div>
				<div class="field">
					<Button style="width:100%" variant="raised">ลงชื่อเข้าใช้</Button>
				</div>
				<div class="field">
					<div class="col-3">
						<hr style="width: 100%;" />
						<span style="text-align: center;">หรือ</span>
						<hr style="width: 100%;" />
					</div>
				</div>
				<div class="field">
					<Button style="width:100%" variant="outlined">ลงทะเบียนบัญชีใหม่</Button>
				</div>
				<div class="field" style="text-align: center;">
					<a href="/forgetpassword">ลืมรหัสผ่าน</a>
				</div>
			</div>
		</div>
	</div>
</div>

<style>
	a {
		color: red;
	}
	.field {
		margin: 5%;
	}
	.bg {
		background: #22242c;
	}

	.container {
		background-image: -webkit-radial-gradient(
			center top,
			ellipse,
			#2c3448,
			#292f3f 30%,
			#22242c 50%
		);
		background-image: radial-gradient(center top, ellipse, #2c3448, #292f3f 30%, #22242c 50%);
	}
	.box-login {
		max-width: 760px;
		min-height: 450px;
		margin: 0 auto;
		padding: 65px 0;
		background-color: transparent;
	}
	.content {
		width: 395px;
		margin: 0 auto;
	}
	.col-3 {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
	}
</style>
