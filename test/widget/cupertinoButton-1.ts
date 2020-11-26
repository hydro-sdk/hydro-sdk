import { CupertinoApp } from "../../runtime/flutter/cupertino/cupertinoApp";
import { CupertinoButton } from "../../runtime/flutter/cupertino/cupertinoButton";
import { CupertinoColors } from "../../runtime/flutter/cupertino/cupertinoColors";
import { CupertinoIcons } from "../../runtime/flutter/cupertino/cupertinoIcons";
import { Key } from "../../runtime/flutter/foundation/key";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { runApp } from "../../runtime/flutter/runApp";
import { Center } from "../../runtime/flutter/widgets/center";
import { Icon } from "../../runtime/flutter/widgets/icon";

runApp(
    () =>
        new CupertinoApp({
            home: new Scaffold({
                body: new Center({
                    child: new CupertinoButton({
                        key: new Key("cupertinoButton"),
                        color: CupertinoColors.activeGreen.color,
                        child: new Icon(CupertinoIcons.book),
                        onPressed: () => {},
                    }),
                }),
            }),
        })
);
