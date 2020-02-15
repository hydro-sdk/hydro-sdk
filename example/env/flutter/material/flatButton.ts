
import { Widget } from '../widget';
import { StatelessWidget } from './../widgets/statelessWidget';

interface FlatButtonProps {
    child: Widget;
    onPressed: (this: void) => void;
}

declare const flutter: {
    material: {
        flatButton: (this: void, props: FlatButtonProps) => { tag: string };
    }
}

export class FlatButton extends StatelessWidget {
    public props: FlatButtonProps;
    public constructor(props: FlatButtonProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.material.flatButton(this.props);
    }
}
