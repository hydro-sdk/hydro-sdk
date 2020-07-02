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

	public override function build(context:BuildContext) {
		return new MaterialApp({
			home: new Scaffold({
				appBar: new AppBar({
					title: new Text("Basic Appbar"),
					actions: [
						new IconButton({
							icon: new Icon(Choice.choices[0].icon),
							onPressed: () -> {
								this.select(Choice.choices[0]);
							}
						}),
						new IconButton({
							icon: new Icon(Choice.choices[1].icon),
							onPressed: () -> {
								this.select(Choice.choices[1]);
							}
						}),
						new PopupMenuButton<Choice>({
							onSelected: (choice:Choice) -> {},
							itemBuilder: (context:BuildContext) -> {
								return Choice.choices.map((choice:Choice) -> {
									return new PopupMenuItem<Choice>({
										value: choice,
										child: new Text(choice.title)
									});
								});
							}
						})
					]
				})
			})
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
