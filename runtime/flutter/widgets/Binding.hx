package runtime.flutter.widgets;

import haxe.extern.Rest;

@:nullSafety(Static)
@:native("hydro")
private extern class HydroBinding {
	@:native("globalBuildResult")
	public static var globalBuildResult:Rest<Dynamic>->Widget;
}

class Binding {
	public static function runApp(pred:Rest<Dynamic>->Widget):Void {
		HydroBinding.globalBuildResult = pred;
	}
}
