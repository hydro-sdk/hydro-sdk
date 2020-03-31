import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { Widget } from "../../runtime/flutter/widget";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { HomeScreen } from "./screens/homeScreen";
import { runApp } from "../../runtime/flutter/runApp";

class MyApp extends StatelessWidget {
    public build(): Widget {
        return new MaterialApp({
            title: "Flutter Demo",
            home: new HomeScreen()
        });
    }
}

runApp(() => new MyApp());