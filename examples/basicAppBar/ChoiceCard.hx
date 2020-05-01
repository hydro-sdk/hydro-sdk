package examples.basicAppBar;

import runtime.flutter.*;
import runtime.flutter.widgets.*;

class ChoiceCard extends StatelessWidget {
	public var choice:Choice;

	public function new(props:{var choice:Choice;}) {
		super();
		this.choice = props.choice;
	}

	public override function build(context:BuildContext):Widget {
		var textStyle = Theme.of(context).textTheme.display1;
		return new SizedBox({});
	}
}