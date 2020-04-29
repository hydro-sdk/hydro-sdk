package runtime.flutter.material;

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function themeOf(context:BuildContext):ThemeData;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

class Theme {
	public static function of(context:BuildContext):ThemeData {
        return FlutterBinding.material.themeOf(context);
    }
}
