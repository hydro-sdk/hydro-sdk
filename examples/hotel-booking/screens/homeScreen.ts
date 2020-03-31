import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Widget } from "../../../runtime/flutter/widget";
import { Scaffold } from "../../../runtime/flutter/material/scaffold";
import { SizedBox } from "../../../runtime/flutter/widgets/sizedBox";

export class HomeScreen extends StatelessWidget {
    public build(): Widget {
        return new Scaffold({
            body: new SizedBox({})
        });
    }
}