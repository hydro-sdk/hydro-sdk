import { Widget } from '../widget';
import { StatelessWidget } from './../widgets/statelessWidget';

interface FloatingActionButtonProps {
    child: Widget;
    onPressed: () => void;
}

declare const flutter: {
    material: {
        floatingActionButton: (this: void, props: FloatingActionButtonProps) => { tag: string };
    }
}

export class FloatingActionButton extends StatelessWidget {
    public props: FloatingActionButtonProps;
    public constructor(props: FloatingActionButtonProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.material.floatingActionButton(this.props);
    }
}