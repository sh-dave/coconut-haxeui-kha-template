package;

class Main {
	public static function main() {
		kha.System.start({}, function( _ ) {
			kha.Assets.loadEverything(function() {
				Toolkit.init();

				final state = new AppState();
				final root = new Component();
				root.percentWidth = 100;
				root.percentHeight = 100;

				Renderer.mount(root, coconut.Ui.hxx('<App state=${state}/>'));
				Screen.instance.addComponent(root);

				kha.System.notifyOnFrames(function( fbs ) {
					final fb = fbs[0];
					final g2 = fb.g2;
					g2.begin(true, 0xff008080);
						Screen.instance.renderTo(g2);
					g2.end();
				});
			});
		});
	}
}
