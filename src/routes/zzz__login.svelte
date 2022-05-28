<script lang="ts">
	import { enhance } from '$lib/form';

	type Todo = {
		uid: string;
		created_at: Date;
		text: string;
		done: boolean;
		pending_delete: boolean;
	};

	let todos: Todo[];
</script>
<form
		class="new"
		action="/todos"
		method="post"
		use:enhance={{
			result: async ({ form }) => {
				form.reset();
			}
		}}
	>
		<input name="text" aria-label="Add todo" placeholder="+ tap to add a todo" />
	</form>


