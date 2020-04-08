import {StatefulWidget} from "../../../runtime/flutter/widgets/statefulWidget";
import {State} from "../../../runtime/flutter/widgets/state";
import {BuildContext} from "../../../runtime/flutter/buildContext";
import {Row} from "../../../runtime/flutter/widgets/row";
import {Widget} from "../../../runtime/flutter/widget";
import {MainAxisAlignment} from "../../../runtime/flutter/widgets/mainAxisAlignment";
import {home} from "../../../runtime/flutter/material/icons/home";
import {book} from "../../../runtime/flutter/material/icons/book";
import {flight} from "../../../runtime/flutter/material/icons/flight";
import {person} from "../../../runtime/flutter/material/icons/person";

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

    public build(context: BuildContext): Widget 
    {
        return new Row({
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                new MyBottomNavBarItem({
                    active: this.active,
                    id: 0,
                    icon: home,
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
                    icon: book,
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
                    icon: flight,
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
                    icon: person,
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