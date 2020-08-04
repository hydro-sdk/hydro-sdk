import { runApp } from "../../runtime/flutter/runApp";
import { CupertinoApp } from "../../runtime/flutter/cupertino/cupertinoApp";
import { CupertinoContextMenu } from "../../runtime/flutter/cupertino/cupertinoContextMenu";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { Center } from "../../runtime/flutter/widgets/center";
import { Container } from "../../runtime/flutter/widgets/container";
import { FittedBox } from "../../runtime/flutter/widgets/fittedBox";
import { Image } from "../../runtime/flutter/widgets/image";
import { ClipRRect } from "../../runtime/flutter/widgets/clipRRect";
import { Text } from "../../runtime/flutter/widgets/text";
import { BoxFit } from "../../runtime/flutter/painting/boxFit";
import { List } from "../../runtime/dart/collection/list";
import { BuildContext } from "../../runtime/flutter/buildContext";
import { double } from "../../runtime/dart/core/double";
import { Animation } from "../../runtime/flutter/animation/animation";
import { Widget } from "../../runtime/flutter/widget";
import { BorderRadius } from "../../runtime/flutter/painting/borderRadius";
import { CupertinoContextMenuAction } from "../../runtime/flutter/cupertino/cupertinoContextMenuAction";
import { Key } from "../../runtime/flutter/foundation/key";

runApp(() =>
    new CupertinoApp({
        home: new Scaffold({
            body: new Center({
                child: new Container({
                    width: 100,
                    height: 100,
                    child: new CupertinoContextMenu({
                        key: new Key("cupertinoContextMenu"),
                        child: new FittedBox({
                            fit: BoxFit.cover,
                            child: Image.network("https://cdn.pixabay.com/photo/2014/09/11/18/23/london-441853_960_720.jpg", {})
                        }),
                        previewBuilder: (context: BuildContext, animation: Animation<double>, child: Widget) =>
                            new FittedBox({
                                fit: BoxFit.cover,
                                child: new ClipRRect({
                                    borderRadius: BorderRadius.circular(64 * animation.value),
                                    child: Image.network("https://cdn.pixabay.com/photo/2014/09/11/18/23/london-441853_960_720.jpg", {})
                                })
                            }),
                        actions: List.fromArray([
                            new CupertinoContextMenuAction({
                                child: new Text("Action one"),
                                onPressed: () => {

                                }
                            }),
                            new CupertinoContextMenuAction({
                                child: new Text("Action two"),
                                onPressed: () => {

                                }
                            })
                        ])
                    })
                })
            })
        })
    })
);