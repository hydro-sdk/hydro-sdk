import {Animation} from "../animation/animation";
import {Color} from "../../dart/ui/color";
import {StatelessWidget} from "../widgets/statelessWidget";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {Key} from "./../foundation/key";

export interface CircularProgressIndicatorProps {
    key?: Key | undefined;
    value?: number | undefined;
    backgroundColor?: Color | undefined;
    valueColor: Animation<Color>;
    strokeWidth?: number | undefined;
    semanticsLabel?: string | undefined;
    semanticsValue?: string | undefined;
}

declare const flutter: {
    material: {
        circularProgressIndicator: (this: void, props?: CircularProgressIndicatorProps | undefined) => CircularProgressIndicator;
    };
};

export class CircularProgressIndicator extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(CircularProgressIndicator);
    public props?: CircularProgressIndicatorProps | undefined;
    public constructor(props?: CircularProgressIndicatorProps | undefined) 
    {
        super();
        this.props = props;

        if (this.props) 
        {
            if (this.props.strokeWidth === undefined) 
            {
                this.props.strokeWidth = 4.0;
            }
        }
    }

    public build() 
    {
        return flutter.material.circularProgressIndicator(this.props);
    }

}