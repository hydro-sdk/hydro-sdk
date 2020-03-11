import {Widget} from "../widget";

import {HitTestBehavior} from "./../rendering/hitTestBehavior";
import {StatelessWidget} from "./statelessWidget";
import { DartObject } from "../../dart/core";


interface GestureDetectorProps {
    behavior?: HitTestBehavior | undefined;
    child?: Widget | undefined;
    onTap: () => void;
}

declare const flutter: {
    widgets: {
        gestureDetector: (this: void, props: GestureDetectorProps) => GestureDetector;
    };
};

export class GestureDetector extends StatelessWidget  implements Readonly<DartObject>
{
    public readonly runtimeType = "GestureDetector";
    public props: GestureDetectorProps;
    public constructor(props: GestureDetectorProps) 
    {
        super();
        this.props = props;

        if (!this.props.child) 
        {
            this.props.behavior = HitTestBehavior.translucent;
        }
        else 
        {
            this.props.behavior = HitTestBehavior.deferToChild;
        }
    }

    public build(): Widget 
    {
        return flutter.widgets.gestureDetector(this.props);
    }
}