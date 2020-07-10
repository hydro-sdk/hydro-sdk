import {StatelessWidget} from "../../../runtime/flutter/widgets/statelessWidget";
import {BuildContext} from "../../../runtime/flutter/buildContext";
import {Widget} from "../../../runtime/flutter/widget";
import {Scaffold} from "../../../runtime/flutter/material/scaffold";
import {Color} from "../../../runtime/dart/ui/color";
import {Text} from "../../../runtime/flutter/widgets/text";
import {SafeArea} from "../../../runtime/flutter/widgets/safeArea";
import {Row} from "../../../runtime/flutter/widgets/row";
import {Expanded} from "../../../runtime/flutter/widgets/expanded";
import {Stack} from "../../../runtime/flutter/widgets/stack";
import {Positioned} from "../../../runtime/flutter/widgets/positioned";
import {Image} from "../../../runtime/flutter/widgets/image";
import {destinationList, MyColors} from "../data";
import {BoxFit} from "../../../runtime/flutter/painting/boxFit";
import {IconButton} from "../../../runtime/flutter/material/iconButton";
import {Icon} from "../../../runtime/flutter/widgets/icon";
import {chevron_left} from "../../../runtime/flutter/material/icons/chevron_left";
import {brightness_3} from "../../../runtime/flutter/material/icons/brightness_3";
import {calendar_today} from "../../../runtime/flutter/material/icons/calendar_today";
import {map} from "../../../runtime/flutter/material/icons/map";
import {more_horiz} from "../../../runtime/flutter/material/icons/more_horiz";
import {cloud} from "../../../runtime/flutter/material/icons/cloud";
import {Container} from "../../../runtime/flutter/widgets/container";
import {BoxDecoration} from "../../../runtime/flutter/painting/boxDecoration";
import {LinearGradient} from "../../../runtime/flutter/painting/linearGradient";
import {Alignment} from "../../../runtime/flutter/painting/alignment";
import {Padding} from "../../../runtime/flutter/widgets/padding";
import {EdgeInsets} from "../../../runtime/flutter/painting/edgeInsets";
import {Column} from "../../../runtime/flutter/widgets/column";
import {CrossAxisAlignment} from "../../../runtime/flutter/rendering/crossAxisAlignment";
import {Theme} from "../../../runtime/flutter/material/theme";
import {Spacer} from "../../../runtime/flutter/widgets/spacer";
import {MainAxisAlignment} from "../../../runtime/flutter/widgets/mainAxisAlignment";
import {Align} from "../../../runtime/flutter/widgets/align";
import {MediaQuery} from "../../../runtime/flutter/widgets/mediaQuery";
import {InkWell} from "../../../runtime/flutter/material/inkWell";
import {BorderRadius} from "../../../runtime/flutter/painting/borderRadius";
import {Radius} from "../../../runtime/dart/ui/radius";
import {Transform} from "../../../runtime/flutter/widgets/transform";
import {clear} from "../../../runtime/flutter/material/icons/clear";
import {CircularProgressIndicator} from "../../../runtime/flutter/material/circularProgressIndicator";
import {AlwaysStoppedAnimation} from "../../../runtime/flutter/animation/alwaysStoppedAnimation";
import {Type} from "../../../runtime/dart/core/type";
import {Colors} from "../../../runtime/flutter/material/colors";

export class DetailsScreen extends StatelessWidget 
{
    public readonly id: number;

    public constructor(id: number) 
    {
        super();
        this.id = id;
    }

    public build(context: BuildContext): Widget 
    {
        return new Scaffold({
            backgroundColor: new Color(0xff2446a6),
            body: new SafeArea({
                child: new Row({
                    children: [
                        new Expanded({
                            child: new Column({
                                children: [
                                    new Expanded({
                                        child: new Stack({
                                            children: [
                                                new Positioned({
                                                    top: 0,
                                                    left: 0,
                                                    right: 0,
                                                    bottom: 0,
                                                    child: Image.network(
                                                        destinationList[this.id].imageUrl, {
                                                            fit: BoxFit.cover,
                                                        }),
                                                }),
                                                new Positioned({
                                                    left: 5,
                                                    top: 5,
                                                    child: new IconButton({
                                                        icon: new Icon(
                                                            chevron_left, {
                                                                color: Colors.white,
                                                            }),
                                                        onPressed: () => null// Navigator.pop(context),
                                                    }),
                                                }),
                                                new Positioned({
                                                    bottom: 0,
                                                    left: 0,
                                                    right: 0,
                                                    height: 70,
                                                    child: new Container({
                                                        decoration: new BoxDecoration({
                                                            gradient: new LinearGradient({
                                                                colors: [
                                                                    Colors.transparent,
                                                                    MyColors.darkBlue,
                                                                ],
                                                                begin: Alignment.topCenter,
                                                                end: Alignment.bottomCenter,
                                                            }),
                                                        }),
                                                    }),
                                                })
                                            ],
                                        }),
                                    }),
                                    new Expanded({
                                        child: new Padding({
                                            padding: EdgeInsets.all(15.0),
                                            child: new Column({
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    new Text(
                                                        destinationList[this.id].hotelName, {
                                                            style: Theme.of(context).textTheme.display1.apply({
                                                                color: Colors.white,
                                                            }),
                                                        }),
                                                    new Text(
                                                        `${destinationList[this.id].placeName} - ${destinationList[this.id].date}`, {
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .subtitle
                                                                .apply({color: Colors.white70}),
                                                        }),
                                                    new Spacer({}),
                                                    new Row({
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                            new Column({
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                    new Text(
                                                                        "$351", {
                                                                            style: Theme.of(context)
                                                                                .textTheme
                                                                                .display1
                                                                                .apply({color: Colors.white}),
                                                                        }),
                                                                    new Text(
                                                                        "4 nights", {
                                                                            style: Theme.of(context)
                                                                                .textTheme
                                                                                .body2
                                                                                .apply({color: Colors.white70}),
                                                                        })
                                                                ],
                                                            }),
                                                            new Container({
                                                                height: 50,
                                                                width: 50,
                                                                child: new Stack({
                                                                    children: [
                                                                        Positioned.fill({
                                                                            child: new CircularProgressIndicator({
                                                                                value: .25,
                                                                                backgroundColor: MyColors.lighterBlue,
                                                                                valueColor: new AlwaysStoppedAnimation(
                                                                                    new Type(Color),
                                                                                    Colors.white
                                                                                ),
                                                                            }),
                                                                        }),
                                                                        new Align({
                                                                            alignment: Alignment.center,
                                                                            child: new Icon(
                                                                                brightness_3, {
                                                                                    color: Colors.white,
                                                                                }),
                                                                        })
                                                                    ],
                                                                }),
                                                            }),
                                                        ],
                                                    }),
                                                    new Spacer({}),
                                                    new Row({
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                            new Column({
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                    new Text(
                                                                        "24 Days", {
                                                                            style: Theme.of(context)
                                                                                .textTheme
                                                                                .display1
                                                                                .apply({color: Colors.white}),
                                                                        }),
                                                                    new Text(
                                                                        "until trip", {
                                                                            style: Theme.of(context)
                                                                                .textTheme
                                                                                .body2
                                                                                .apply({color: Colors.white70}),
                                                                        })
                                                                ],
                                                            }),
                                                            new Container({
                                                                height: 50,
                                                                width: 50,
                                                                child: new Stack({
                                                                    children: [
                                                                        Positioned.fill({
                                                                            child: new CircularProgressIndicator({
                                                                                value: .25,
                                                                                backgroundColor: MyColors.lighterBlue,
                                                                                valueColor: new AlwaysStoppedAnimation(new Type(Color),
                                                                                    Colors.white
                                                                                ),
                                                                            }),
                                                                        }),
                                                                        new Align({
                                                                            alignment: Alignment.center,
                                                                            child: new Icon(
                                                                                calendar_today, {
                                                                                    color: Colors.white,
                                                                                }),
                                                                        })
                                                                    ],
                                                                }),
                                                            }),
                                                        ],
                                                    }),
                                                    new Spacer({}),
                                                ],
                                            }),
                                        }),
                                    })
                                ],
                            }),
                        }),
                        new Container({
                            width: MediaQuery.of(context).size.width / 5,
                            color: MyColors.lighterBlue,
                            child: new Column({
                                children: [
                                    new Expanded({
                                        child: new IconButton({
                                            icon: new Icon(
                                                more_horiz, {
                                                    color: Colors.white,
                                                }),
                                            onPressed: () => null,
                                        }),
                                    }),
                                    new Expanded({
                                        child: new IconButton({
                                            icon: new Icon(
                                                map, {
                                                    color: Colors.white,
                                                }),
                                            onPressed: () => null,
                                        }),
                                    }),
                                    new Expanded({
                                        child: new IconButton({
                                            icon: new Icon(
                                                cloud, {
                                                    color: Colors.white,
                                                }),
                                            onPressed: () => null,
                                        }),
                                    }),
                                    new Expanded({
                                        child: new InkWell({
                                            onTap: () => null,
                                            child: new Container({
                                                decoration: new BoxDecoration({
                                                    borderRadius: BorderRadius.only({
                                                        topLeft: Radius.circular(45),
                                                    }),
                                                    color: MyColors.red,
                                                }),
                                                child: Transform.rotate({
                                                    angle: -Math.PI / 2,
                                                    child: new Row({
                                                        children: [
                                                            new Expanded({
                                                                child: new Text(
                                                                    "Cancel Trip", {
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .body1
                                                                            .apply({color: Colors.white}),
                                                                    }),
                                                            }),
                                                            new Icon(clear, {color: Colors.white60}),
                                                        ],
                                                    }),
                                                }),
                                            }),
                                        }),
                                    }),
                                ],
                            }),
                        }),
                    ],
                }),
            }),
        });
        // return new Scaffold({
        //     backgroundColor: new Color(0xff2446a6),
        //     body: new SafeArea({
        //         child: new Row({
        //             children: [
        //                 new Expanded({
        //                     child: new Stack({
        //                         children: [
        //                             new Positioned({
        //                                 top: 0,
        //                                 left: 0,
        //                                 right: 0,
        //                                 bottom: 0,
        //                                 child: Image.network(destinationList[this.id].imageUrl, {
        //                                     fit: BoxFit.cover
        //                                 })
        //                             }),
        //                             new Positioned({
        //                                 left: 5,
        //                                 top: 5,
        //                                 child: new IconButton({
        //                                     icon: new Icon(chevron_left, {color: white}),
        //                                     onPressed: () => null
        //                                 })
        //                             }),
        //                             new Positioned({
        //                                 bottom: 0,
        //                                 left: 0,
        //                                 right: 0,
        //                                 height: 70,
        //                                 child: new Container({
        //                                     decoration: new BoxDecoration({
        //                                         gradient: new LinearGradient({
        //                                             colors: [
        //                                                 transparent,
        //                                                 MyColors.darkBlue
        //                                             ],
        //                                             begin: Alignment.topCenter,
        //                                             end: Alignment.bottomCenter
        //                                         })
        //                                     })
        //                                 })
        //                             })
        //                         ]
        //                     })
        //                 }),
        //                 new Expanded({
        //                     child: new Padding({
        //                         padding: EdgeInsets.all(15.0),
        //                         child: new Column({
        //                             crossAxisAlignment: CrossAxisAlignment.start,
        //                             children: [
        //                                 new Text(
        //                                     destinationList[this.id].hotelName, {
        //                                         style: Theme.of(context).textTheme.display1.apply({
        //                                             color: white
        //                                         })
        //                                     }),
        //                                 new Text(`${destinationList[this.id].placeName} - ${destinationList[this.id].date}`, {
        //                                     style: Theme.of(context).textTheme.subtitle.apply({color: white70})
        //                                 }),
        //                                 new Spacer({}),
        //                                 new Row({
        //                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                                     children: [
        //                                         new Column({
        //                                             crossAxisAlignment: CrossAxisAlignment.start,
        //                                             children: [
        //                                                 new Text("$351", {
        //                                                     style: Theme.of(context).textTheme.display1.apply({color: white})
        //                                                 }),
        //                                                 new Text("4 nights", {
        //                                                     style: Theme.of(context).textTheme.body2.apply({color: white70})
        //                                                 })
        //                                             ]
        //                                         }),
        //                                         new Container({
        //                                             height: 50,
        //                                             width: 50,
        //                                             child: new Stack({
        //                                                 children: [
        //                                                     Positioned.fill({
        //                                                         child: new SizedBox({})
        //                                                     }),
        //                                                     new Align({
        //                                                         alignment: Alignment.center,
        //                                                         child: new Icon(brightness_3, {color: white})
        //                                                     })
        //                                                 ]
        //                                             })
        //                                         })
        //                                     ]
        //                                 }),
        //                                 new Spacer({}),
        //                                 new Row({
        //                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                                     children: [
        //                                         new Column({
        //                                             crossAxisAlignment: CrossAxisAlignment.start,
        //                                             children: [
        //                                                 new Text("24 Days", {
        //                                                     style: Theme.of(context).textTheme.display1.apply({color: white})
        //                                                 }),
        //                                                 new Text("until trip", {
        //                                                     style: Theme.of(context).textTheme.body2.apply({color: white70})
        //                                                 })
        //                                             ]
        //                                         }),
        //                                         new Container({
        //                                             height: 50,
        //                                             width: 50,
        //                                             child: new Stack({
        //                                                 children: [
        //                                                     Positioned.fill({
        //                                                         child: new SizedBox({})
        //                                                     }),
        //                                                     new Align({
        //                                                         alignment: Alignment.center,
        //                                                         child: new Icon(calendar_today, {color: white})
        //                                                     })
        //                                                 ]
        //                                             })
        //                                         })
        //                                     ]
        //                                 })
        //                             ]
        //                         })
        //                     })
        //                 }),
        //                 new Container({
        //                     width: MediaQuery.of(context).size.width / 5,
        //                     color: MyColors.lighterBlue,
        //                     child: new Column({
        //                         children: [
        //                             new Expanded({
        //                                 child: new IconButton({
        //                                     icon: new Icon(more_horiz, {
        //                                         color: white
        //                                     }),
        //                                     onPressed: () => null
        //                                 })
        //                             }),
        //                             new Expanded({
        //                                 child: new IconButton({
        //                                     icon: new Icon(map, {
        //                                         color: white
        //                                     }),
        //                                     onPressed: () => null
        //                                 })
        //                             }),
        //                             new Expanded({
        //                                 child: new IconButton({
        //                                     icon: new Icon(cloud, {
        //                                         color: white
        //                                     }),
        //                                     onPressed: () => null
        //                                 })
        //                             }),
        //                             new Expanded({
        //                                 child: new InkWell({
        //                                     onTap: () => null,
        //                                     child: new Container({
        //                                         decoration: new BoxDecoration({
        //                                             borderRadius: BorderRadius.only({
        //                                                 topLeft: Radius.circular(45)
        //                                             }),
        //                                             color: MyColors.red,
        //                                         }),
        //                                         child: Transform.rotate({
        //                                             angle: Math.PI / 2,
        //                                             child: new Row({
        //                                                 children: [
        //                                                     new Expanded({
        //                                                         child: new Text(
        //                                                             "Cancel Trip", {
        //                                                                 style: Theme.of(context).textTheme.body1.apply({color: white})
        //                                                             })
        //                                                     }),
        //                                                     new Icon(clear, {color: white60})
        //                                                 ]
        //                                             })
        //                                         })
        //                                     })
        //                                 })
        //                             })
        //                         ]
        //                     })
        //                 })
        //             ]
        //         })
        //     })
        // });
    }
}