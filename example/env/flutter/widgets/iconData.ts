import { Widget } from '../widget';
import { SyntheticBox } from './../../syntheticBox';

interface IconDataProps {
    fontFamily: string;
}

declare const flutter: {
    widgets: {
        iconData: (this: void, codePoint: number, props: IconDataProps) => { tag: string };
    }
}

export class IconData extends SyntheticBox {
    public codePoint: number;
    public props: IconDataProps;
    public constructor(codePoint: number, props: IconDataProps) {
        super();
        this.codePoint = codePoint;
        this.props = props;
    }

    public unwrap(): Widget {
        return flutter.widgets.iconData(this.codePoint, this.props);
    }
}