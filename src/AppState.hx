package;

class AppState implements Model {
	@:observable var counter: Int = 0;

	@:transition public function inc()
		return { counter: counter + 1 }

	@:transition public function dec()
		return { counter: counter - 1 }
}
