import {StatelessWidget} from "../../../runtime/flutter/widgets/statelessWidget";
import {Widget} from "../../../runtime/flutter/widget";
import {Scaffold} from "../../../runtime/flutter/material/scaffold";
import {SafeArea} from "../../../runtime/flutter/widgets/safeArea";
import {Color} from "../../../runtime/dart/ui/color";
import {Stack} from "../../../runtime/flutter/widgets/stack";
import {Positioned} from "../../../runtime/flutter/widgets/positioned";
import {SizedBox} from "../../../runtime/flutter/widgets/sizedBox";
import {MediaQuery} from "../../../runtime/flutter/widgets/mediaQuery";
import {Row} from "../../../runtime/flutter/widgets/row";
import {Flexible} from "../../../runtime/flutter/widgets/flexible";
import {Container} from "../../../runtime/flutter/widgets/container";
import {BuildContext} from "../../../runtime/flutter/buildContext";
import {Padding} from "../../../runtime/flutter/widgets/padding";
import {EdgeInsets} from "../../../runtime/flutter/painting/edgeInsets";
import {Column} from "../../../runtime/flutter/widgets/column";
import {CrossAxisAlignment} from "../../../runtime/flutter/rendering/crossAxisAlignment";
import {Text} from "../../../runtime/flutter/widgets/text";
import {Spacer} from "../../../runtime/flutter/widgets/spacer";
import {Theme} from "../../../runtime/flutter/material/theme";
import {Colors} from "../../../runtime/flutter/material/colors";
import {ClipRRect} from "../../../runtime/flutter/widgets/clipRRect";
import {white} from "../../../runtime/flutter/material/colors/white";
import {Image} from "../../../runtime/flutter/widgets/image";
import {BorderRadius} from "../../../runtime/flutter/painting/borderRadius";
import {BoxFit} from "../../../runtime/flutter/painting/boxFit";

export class HomeScreen extends StatelessWidget 
{
    public build(context: BuildContext): Widget 
    {
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
                                        new Text("My Profile", {
                                            style: Theme.of(context).textTheme.display1.copyWith({
                                                color: white
                                            })
                                        }),
                                        new SizedBox({
                                            height: 15
                                        }),
                                        new ClipRRect({
                                            borderRadius: BorderRadius.circular(15.0),
                                            child: new Container({
                                                //boxDecoration

                                                child: new Column({
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        new SizedBox({
                                                            height: 15.0
                                                        }),
                                                        new Padding({
                                                            padding: EdgeInsets.symmetric({horizontal: 15.0}),
                                                            child: new Row({
                                                                children: [
                                                                    new ClipRRect({
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        child: Image.network(
                                                                            "https://cdn.pixabay.com/photo/2019/11/19/21/44/animal-4638598_960_720.jpg",
                                                                            {
                                                                                fit: BoxFit.cover,
                                                                                height: 35,
                                                                                width: 35
                                                                            }
                                                                        )
                                                                    })
                                                                ]
                                                            })
                                                        })
                                                    ]
                                                })
                                            })
                                        })
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