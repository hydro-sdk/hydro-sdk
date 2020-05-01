package examples.basicAppBar;

import runtime.flutter.*;
import runtime.flutter.widgets.*;
import runtime.flutter.material.*;
import runtime.flutter.rendering.*;
import runtime.flutter.painting.*;

class ChoiceCard extends StatelessWidget {
	public var choice:Choice;

	public function new(props:{var choice:Choice;}) {
		super();
		this.choice = props.choice;
	}

	public override function build(context:BuildContext):Widget {
		var textStyle:TextStyle = Theme.of(context).textTheme.display1;
		return new Card({
			color: Colors.white,
			child: new Center({
				child: new Column({
					mainAxisSize: MainAxisSize.min,
					crossAxisAlignment: CrossAxisAlignment.center,
					children: [new Icon(this.choice.icon, {size: 128.0, color: textStyle.color})]
				})
			})
		});
	}
}
