import { Widget } from '../widget';
import { StatelessWidget } from './statelessWidget';

interface IconDataProps {
    fontFamily: string;
}

declare const flutter: {
    widgets: {
        iconData: (this: void, codePoint: number, props: IconDataProps) => { tag: string };
    }
}

export class IconData extends StatelessWidget {
    public codePoint: number;
    public props: IconDataProps;
    public constructor(codePoint: number, props: IconDataProps) {
        super();
        this.codePoint = codePoint;
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.iconData(this.codePoint, this.props);
    }
}