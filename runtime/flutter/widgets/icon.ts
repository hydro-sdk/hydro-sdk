import { Widget } from '../widget';
import { StatelessWidget } from './statelessWidget';
import { IconData } from './iconData';

interface IconProps {

}

declare const flutter: {
    widgets: {
        icon: (this: void, icon: IconData) => { tag: string };
    }
}

export class Icon extends StatelessWidget {
    public icon: IconData;
    public constructor(icon: IconData) {
        super();
        this.icon = icon;
    }
    public build(): Widget {
        return flutter.widgets.icon(this.icon);
    }
}