import { BuildContext } from "../../runtime/flutter/buildContext";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { runApp } from "../../runtime/flutter/runApp";
import { Widget } from "../../runtime/flutter/widget";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { DetailsScreen } from "./screens/detailsScreen";
import { HomeScreen } from "./screens/homeScreen";

class MyApp extends StatelessWidget {
    public build(): Widget {
        return new MaterialApp({
            title: "Flutter Demo",
            home: new HomeScreen(),
            routes: {
                details: (context: BuildContext) => new DetailsScreen(0),
            },
        });
    }
}

runApp(() => new MyApp());
