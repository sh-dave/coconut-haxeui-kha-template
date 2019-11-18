let project = new Project('foo');

console.log(`building for ${platform}`);

project.localLibraryPath = 'libs';

project.addDefine('error_stack'); // (DK) stacktrace for tink.Error
project.addParameter('--times'); // (DK) show haxe compiler durations
project.addParameter('-dce full');
project.addDefine('analyzer_optimize');

switch (platform) {
	case 'debug-html5':
		project.addLibrary('hxnodejs');
		break;
}

project.addLibrary('coconut.data');
project.addLibrary('coconut.haxeui');
project.addLibrary('haxeui-core');
project.addLibrary('haxeui-kha');
project.addLibrary('tink_json');
project.addLibrary('tink_core_ext');
project.addLibrary('tink_url');

project.addSources('src');

resolve(project);
