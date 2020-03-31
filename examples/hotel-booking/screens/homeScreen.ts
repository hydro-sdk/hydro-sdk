import {StatelessWidget} from "../../../runtime/flutter/widgets/statelessWidget";
import {Widget} from "../../../runtime/flutter/widget";
import {Scaffold} from "../../../runtime/flutter/material/scaffold";
import {SafeArea} from "../../../runtime/flutter/widgets/safeArea";
import {Color} from "../../../runtime/dart/ui/color";
import {SizedBox} from "../../../runtime/flutter/widgets/sizedBox";

export class HomeScreen extends StatelessWidget 
{
    public build(): Widget 
    {
        return new Scaffold({
            backgroundColor: new Color(0xff2446a6),
            body: new SafeArea({
                child: new SizedBox({})
            })
        });
    }
}