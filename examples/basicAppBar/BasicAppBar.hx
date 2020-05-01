package examples.basicAppBar;

import runtime.flutter.*;
import runtime.flutter.widgets.*;
import runtime.flutter.material.*;

class BasicAppBarSample extends StatefulWidget {
	public function new() {
		super();
	}

	public override function createState() {
		return new BasicAppBarSampleState();
	}
}

private class BasicAppBarSampleState extends State<BasicAppBarSample> {
	public var selectedChoice = Choice.choices[0];

	public function new() {
		super();
	}

	public function select(choice:Choice):Void {
		this.setState(() -> {
			this.selectedChoice = choice;
		});
	}
}

class BasicAppBar {
	public static function main() {
		Binding.runApp(() -> {
			return new BasicAppBarSample();
		});
	}
}
