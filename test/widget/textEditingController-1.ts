import {Key} from "../../runtime/flutter/foundation/key";

import {runApp} from "./../../runtime/flutter/runApp";
import {Center} from "./../../runtime/flutter/widgets/center";
import {SizedBox} from "./../../runtime/flutter/widgets/sizedBox";
import {MaterialApp} from "./../../runtime/flutter/material/materialApp";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { StatefulWidget } from "../../runtime/flutter/widgets/statefulWidget";
import { State } from "../../runtime/flutter/widgets/state";

class MyApp extends StatelessWidget {
    public constructor(){
        super();
    }

    public build(){
        return new MaterialApp({
            home: new MyStatefulWidget();
        });
    }
}

class MyStatefulWidget extends StatefulWidget {
    public constructor(){
        super();
    }

    public createState(){
        return new MyStatefulWidgetState
    }
}

class MyStatefulWidgetState extends State<MyStatefulWidget>{
    public constructor(){
        super();
    }
}