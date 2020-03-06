import {Key} from "../../runtime/flutter/key";

import {runApp} from "./../../runtime/flutter/runApp";
import {Column} from "./../../runtime/flutter/widgets/column";
import {SizedBox} from "./../../runtime/flutter/widgets/sizedBox";

runApp(() => new Column({
    children: [
        new SizedBox({key: new Key("empty")}),
        new SizedBox({key: new Key("only width"), width: 10}),
        new SizedBox({key: new Key("only height"), height: 10})
    ]
}));