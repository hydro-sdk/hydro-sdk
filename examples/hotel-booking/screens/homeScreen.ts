import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Widget } from "../../../runtime/flutter/widget";
import { Scaffold } from "../../../runtime/flutter/material/scaffold";
import { SafeArea } from "../../../runtime/flutter/widgets/safeArea";
import { Color } from "../../../runtime/dart/ui/color";
import { Stack } from "../../../runtime/flutter/widgets/stack";
import { Positioned } from "../../../runtime/flutter/widgets/positioned";
import { SizedBox } from "../../../runtime/flutter/widgets/sizedBox";
import { MediaQuery } from "../../../runtime/flutter/widgets/mediaQuery";
import { Row } from "../../../runtime/flutter/widgets/row";
import { Flexible } from "../../../runtime/flutter/widgets/flexible";
import { Container } from "../../../runtime/flutter/widgets/container";
import { BuildContext } from "../../../runtime/flutter/buildContext";
import { Padding } from "../../../runtime/flutter/widgets/padding";
import { EdgeInsets } from "../../../runtime/flutter/painting/edgeInsets";
import { Column } from "../../../runtime/flutter/widgets/column";
import { CrossAxisAlignment } from "../../../runtime/flutter/rendering/crossAxisAlignment";
import { Text } from "../../../runtime/flutter/widgets/text";
import { Spacer } from "../../../runtime/flutter/widgets/spacer";

export class HomeScreen extends StatelessWidget {
    public build(context: BuildContext): Widget {
        return new Scaffold({
            backgroundColor: new Color(0xff2446a6),
            body: new SafeArea({
                child: new Stack({
                    children: [
                        new Positioned({
                            left: 0,
                            right: 0,
                            top: 0,
                            height: MediaQuery.of(context).size.height / 3,
                            child: new Row({
                                children: [
                                    new Flexible({
                                        flex: 3,
                                        child: new Container({
                                            color: new Color(0xff4169d8)
                                        })
                                    }),
                                    new Flexible({
                                        flex: 1,
                                        child: new Container({
                                            color: new Color(0xff3a5fc8)
                                        })
                                    })
                                ]
                            })
                        }),
                        new Positioned({
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 70,
                            child: new Padding({
                                padding: EdgeInsets.all(15),
                                child: new Column({
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        new Spacer({}),
                                        new Text("My Profile")
                                    ]
                                })
                            })
                        })
                    ]
                })
            })
        });
    }
}