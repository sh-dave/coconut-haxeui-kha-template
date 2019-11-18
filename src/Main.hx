package;

class Main {
	public static function main() {
		kha.System.start({}, function( _ ) {
			kha.Assets.loadEverything(function() {
				Toolkit.init();

				final state = new AppState();
				final root = new Component();

				Renderer.mount(root, coconut.Ui.hxx('<App state=${state}/>'));
				Screen.instance.addComponent(root);

				kha.System.notifyOnFrames(function( fbs ) {
					final fb = fbs[0];
					final g2 = fb.g2;
					g2.begin(true, 0x800020);
						Screen.instance.renderTo(g2);
					g2.end();
				});
			});
		});
	}
}
