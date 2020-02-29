import { Widget } from "../widget";

import { StatelessWidget } from "./statelessWidget";

interface SizeTransitionProps {

}

declare const flutter: {
    widgets: {
        sizeTransition: (this: void, props: SizeTransitionProps) => SizeTransition;
    };
};

export class SizeTransition extends StatelessWidget {
    public props: SizeTransitionProps;
    public constructor(props: SizeTransitionProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.sizeTransition(this.props);
    }
}