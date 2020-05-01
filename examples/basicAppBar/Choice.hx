package examples.basicAppBar;

import runtime.flutter.widgets.*;
import runtime.flutter.material.*;

class Choice {
	public var title:String;
	public var icon:IconData;

	public function new(props:{var title:String; var icon:IconData;}) {
		this.title = props.title;
		this.icon = props.icon;
	}

	public static var choices = [
		new Choice({title: "Car", icon: Icons.directions_car}),
		new Choice({title: "Bicycle", icon: Icons.directions_bike}),
		new Choice({title: "Boat", icon: Icons.directions_boat}),
		new Choice({title: "Bus", icon: Icons.directions_bus}),
		new Choice({title: "Train", icon: Icons.directions_railway}),
		new Choice({title: "Walk", icon: Icons.directions_walk})
	];
}