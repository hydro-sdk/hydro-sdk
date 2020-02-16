import { Widget } from './../widget';
import { SyntheticBox } from '../../syntheticBox';

interface AppBarProps {
    title: Widget;
}

declare const flutter: {
    material: {
        appBar: (this: void, props: AppBarProps) => { tag: string };
    }
}

export class AppBar extends SyntheticBox {
    public props: AppBarProps;
    public constructor(props: AppBarProps) {
        super();
        this.props = props;
    }

    public unwrap(): Widget {
        return flutter.material.appBar(this.props);
    }
}
