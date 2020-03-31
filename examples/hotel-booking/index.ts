import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { Widget } from "../../runtime/flutter/widget";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { HomeScreen } from "./screens/homeScreen";
import { runApp } from "../../runtime/flutter/runApp";
import { BuildContext } from "../../runtime/flutter/buildContext";
import { DetailsScreen } from "./screens/detailsScreen";

class MyApp extends StatelessWidget {
    public build(): Widget {
        return new MaterialApp({
            title: "Flutter Demo",
            home: new HomeScreen(),
            routes: {
                "details": (context: BuildContext) => new DetailsScreen(0)
            }
        });
    }
}

runApp(() => new MyApp());