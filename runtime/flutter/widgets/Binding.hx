package runtime.flutter.widgets;

import haxe.extern.Rest;

class Binding {
    @:native("hydroGlobalBuildResult") static var hydroGlobalBuildResult:Rest<Dynamic>->Widget;
	public static function runApp(pred:Rest<Dynamic> -> Widget):Void {
		hydroGlobalBuildResult = pred;
	}
}
