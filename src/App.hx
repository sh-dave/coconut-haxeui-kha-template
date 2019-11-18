package;

class App extends View {
	@:attr var state: AppState;

	function render() '
		<VBox>
			<Label text="Hello World!" />
			<HBox>
				<Button text="-" onClick=${state.dec} />
				<Label text="${state.counter}" />
				<Button text="+" onClick=${state.inc} />
			</HBox>
		</VBox>
	';
}
