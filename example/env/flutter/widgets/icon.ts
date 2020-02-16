import { Widget } from '../widget';
import { StatelessWidget } from './statelessWidget';

interface IconProps {
    child: Widget;
}

declare const flutter: {
    widgets: {
        icon: (this: void, props: IconProps) => { tag: string };
    }
}

export class Icon extends StatelessWidget {
    public props:IconProps;
    public iconData:
}