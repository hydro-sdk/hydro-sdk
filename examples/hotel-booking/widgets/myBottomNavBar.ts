import {StatefulWidget} from "../../../runtime/flutter/widgets/statefulWidget";
import {State} from "../../../runtime/flutter/widgets/state";
import {BuildContext} from "../../../runtime/flutter/buildContext";
import {Row} from "../../../runtime/flutter/widgets/row";
import {Widget} from "../../../runtime/flutter/widget";
import {MainAxisAlignment} from "../../../runtime/flutter/widgets/mainAxisAlignment";
import {Icons} from "../../../runtime/flutter/material/icons";

import {MyBottomNavBarItem} from "./myBottomNavBarItem";

export class MyBottomNavBar extends StatefulWidget 
{
    public createState(): MyBottomNavBarState 
    {
        return new MyBottomNavBarState();
    }
}

class MyBottomNavBarState extends State<MyBottomNavBar> 
{
    private active = 0;

    public dispose()
    {
        
    }

    public initState()
    {
        
    }

    public build(context: BuildContext): Widget 
    {
        return new Row({
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                new MyBottomNavBarItem({
                    active: this.active,
                    id: 0,
                    icon: Icons.home,
                    text: "Home",
                    function: () => 
                    {
                        this.setState(() => 
                        {
                            this.active = 0;
                        });
                    }
                }),
                new MyBottomNavBarItem({
                    active: this.active,
                    id: 1,
                    icon: Icons.book,
                    text: "Booked",
                    function: () => 
                    {
                        this.setState(() => 
                        {
                            this.active = 1;
                        });
                    }
                }),
                new MyBottomNavBarItem({
                    active: this.active,
                    id: 2,
                    icon: Icons.flight,
                    text: "Tickets",
                    function: () => 
                    {
                        this.setState(() => 
                        {
                            this.active = 2;
                        });
                    }
                }),
                new MyBottomNavBarItem({
                    active: this.active,
                    id: 3,
                    icon: Icons.person,
                    text: "Profile",
                    function: () => 
                    {
                        this.setState(() => 
                        {
                            this.active = 3;
                        });
                    }
                })
            ]
        });
    }
}