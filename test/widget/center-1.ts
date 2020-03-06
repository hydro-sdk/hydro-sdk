import {Key} from "../../runtime/flutter/key";

import {runApp} from "./../../runtime/flutter/runApp";
import {Center} from "./../../runtime/flutter/widgets/center";
import {SizedBox} from "./../../runtime/flutter/widgets/sizedBox";

runApp(() => new Center({key: new Key("non-null child"), child: new SizedBox({})}));