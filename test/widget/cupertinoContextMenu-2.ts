import { double } from "../../runtime/dart/core/double";
import { List } from "../../runtime/dart/core/list";
import { Animation } from "../../runtime/flutter/animation/animation";
import { BuildContext } from "../../runtime/flutter/buildContext";
import { CupertinoApp } from "../../runtime/flutter/cupertino/cupertinoApp";
import { CupertinoContextMenu } from "../../runtime/flutter/cupertino/cupertinoContextMenu";
import { CupertinoContextMenuAction } from "../../runtime/flutter/cupertino/cupertinoContextMenuAction";
import { Key } from "../../runtime/flutter/foundation/key";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { BorderRadius } from "../../runtime/flutter/painting/borderRadius";
import { BoxFit } from "../../runtime/flutter/painting/boxFit";
import { runApp } from "../../runtime/flutter/runApp";
import { Widget } from "../../runtime/flutter/widget";
import { Center } from "../../runtime/flutter/widgets/center";
import { ClipRRect } from "../../runtime/flutter/widgets/clipRRect";
import { Container } from "../../runtime/flutter/widgets/container";
import { FittedBox } from "../../runtime/flutter/widgets/fittedBox";
import { Image } from "../../runtime/flutter/widgets/image";
import { Text } from "../../runtime/flutter/widgets/text";

runApp(
    () =>
        new CupertinoApp({
            home: new Scaffold({
                body: new Center({
                    child: new Container({
                        width: 100,
                        height: 100,
                        key: new Key("cupertinoContextMenu"),
                        child: new CupertinoContextMenu({
                            child: new FittedBox({
                                fit: BoxFit.cover,
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2021/02/12/09/36/sunflowers-6007847_1280.jpg",
                                    {}
                                ),
                            }),
                            previewBuilder: (
                                context: BuildContext,
                                animation: Animation<double>,
                                child: Widget
                            ) =>
                                new FittedBox({
                                    fit: BoxFit.cover,
                                    child: new ClipRRect({
                                        borderRadius: BorderRadius.circular(
                                            64 * animation.value()
                                        ),
                                        child: Image.network(
                                            "https://cdn.pixabay.com/photo/2021/02/12/09/36/sunflowers-6007847_1280.jpg",
                                            {}
                                        ),
                                    }),
                                }),
                            actions: [
                                new CupertinoContextMenuAction({
                                    child: new Text("Action one"),
                                    onPressed: () => {},
                                }),
                                new CupertinoContextMenuAction({
                                    child: new Text("Action two"),
                                    onPressed: () => {},
                                }),
                            ],
                        }),
                    }),
                }),
            }),
        })
);
