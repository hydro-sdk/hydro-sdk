import {Widget} from "../widget";

import {StatelessWidget} from "./../widgets/statelessWidget";
import {Color} from "./../../dart/ui/color";

interface CardProps {
    borderOnForeground?: boolean | undefined;
    color?: Color | undefined;
    child: Widget;
}

declare const flutter: {
    material: {
        card: (this: void, props: CardProps) => Card;
    };
};

export class Card extends StatelessWidget 
{
    public props: CardProps;
    public constructor(props: CardProps) 
    {
        super();
        this.props = props;

        if (this.props.borderOnForeground === undefined) 
        {
            this.props.borderOnForeground = true;
        }
    }

    public build(): Widget 
    {
        return flutter.material.card(this.props);
    }
}