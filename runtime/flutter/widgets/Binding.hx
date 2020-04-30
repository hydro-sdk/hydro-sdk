package runtime.flutter.widgets;

import runtime.dart.Developer;
import haxe.extern.Rest;

@:nullSafety(Static)
@:native("hydro")
private extern class HydroBinding {
	@:luaDotMethod
	@:native("globalBuildResult")
	public static var globalBuildResult:(Rest<Dynamic>) -> Widget;
}

class Binding {
	@:luaDotMethod
	public static function runApp(pred:Dynamic):Void {
		HydroBinding.globalBuildResult = pred;
	}
}
