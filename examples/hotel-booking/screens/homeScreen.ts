import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Widget } from "../../../runtime/flutter/widget";
import { Scaffold } from "../../../runtime/flutter/material/scaffold";
import { SafeArea } from "../../../runtime/flutter/widgets/safeArea";
import { Color } from "../../../runtime/dart/ui/color";
import { Stack } from "../../../runtime/flutter/widgets/stack";
import { Positioned } from "../../../runtime/flutter/widgets/positioned";
import { SizedBox } from "../../../runtime/flutter/widgets/sizedBox";

export class HomeScreen extends StatelessWidget {
    public build(): Widget {
        return new Scaffold({
            backgroundColor: new Color(0xff2446a6),
            body: new SafeArea({
                child: new Stack({
                    children: [
                        new Positioned({
                            left: 0,
                            right: 0,
                            top: 0,

                            child: new SizedBox({})
                        })
                    ]
                })
            })
        });
    }
}