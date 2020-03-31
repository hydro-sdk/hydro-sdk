import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { BuildContext } from "../../../runtime/flutter/buildContext";
import { Widget } from "../../../runtime/flutter/widget";
import { Scaffold } from "../../../runtime/flutter/material/scaffold";
import { Color } from "../../../runtime/dart/ui/color";

export class DetailsScreen extends StatelessWidget {
    public readonly id: number;

    public constructor(id: number) {
        super();
        this.id = id;
    }

    public build(context: BuildContext): Widget {
        return new Scaffold({
            backgroundColor: new Color(0xff2446a6)
        });
    }
}