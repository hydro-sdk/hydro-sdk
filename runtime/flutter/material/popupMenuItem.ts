import {Widget} from "./../widget";
import {StatelessWidget} from "./../widgets/statelessWidget";

interface PopupMenuItemProps<T> {
    value: T;
    child: Widget;
}

declare const flutter: {
    widgets: {
        popupMenuItem: (this: void, props: PopupMenuItemProps<unknown>) => PopupMenuItem<unknown>;
    };
};

export class PopupMenuItem<T> extends StatelessWidget 
{
    public props: PopupMenuItemProps<T>;
    public constructor(props: PopupMenuItemProps<T>) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.widgets.popupMenuItem(this.props);
    }
}