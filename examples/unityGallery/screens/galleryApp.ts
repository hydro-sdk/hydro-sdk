import { List } from "../../../runtime/dart/core/list";
import { FontWeight } from "../../../runtime/dart/ui/fontWeight";
import { Radius } from "../../../runtime/dart/ui/radius";
import { BuildContext } from "../../../runtime/flutter/buildContext";
import { Colors } from "../../../runtime/flutter/material/colors";
import { Icons } from "../../../runtime/flutter/material/icons";
import { MaterialPageRoute } from "../../../runtime/flutter/material/materialPageRoute";
import { Scaffold } from "../../../runtime/flutter/material/scaffold";
import { BorderRadius } from "../../../runtime/flutter/painting/borderRadius";
import { BoxDecoration } from "../../../runtime/flutter/painting/boxDecoration";
import { EdgeInsets } from "../../../runtime/flutter/painting/edgeInsets";
import { TextStyle } from "../../../runtime/flutter/painting/textStyle";
import { CrossAxisAlignment } from "../../../runtime/flutter/rendering/crossAxisAlignment";
import { MainAxisSize } from "../../../runtime/flutter/rendering/mainAxisSize";
import { AlwaysScrollableScrollPhysics } from "../../../runtime/flutter/widgets/alwaysScrollableScrollPhysics";
import { BouncingScrollPhysics } from "../../../runtime/flutter/widgets/bouncingScrollPhysics";
import { Column } from "../../../runtime/flutter/widgets/column";
import { Container } from "../../../runtime/flutter/widgets/container";
import { CustomScrollView } from "../../../runtime/flutter/widgets/customScrollView";
import { Navigator } from "../../../runtime/flutter/widgets/navigator";
import { Padding } from "../../../runtime/flutter/widgets/padding";
import { SafeArea } from "../../../runtime/flutter/widgets/safeArea";
import { SliverGrid } from "../../../runtime/flutter/widgets/sliverGrid";
import { SliverPadding } from "../../../runtime/flutter/widgets/sliverPadding";
import { SliverToBoxAdapter } from "../../../runtime/flutter/widgets/sliverToBoxAdapter";
import { Stack } from "../../../runtime/flutter/widgets/stack";
import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Text } from "../../../runtime/flutter/widgets/text";
import { AnimatedListSample } from "../../animated-list/animatedListSample";
import { BasicAppBarSample } from "../../basicAppBar/basicAppBarSample";
import { CounterApp } from "../../counter/counterApp";
import { HomeScreen } from "../../hotel-booking/screens/homeScreen";
import { PokeHubService } from "../../pokeApp/data/pokeHubService";
import { PokeApp } from "../../pokeApp/pokeApp";
import { GalleryCard } from "../widgets/galleryCard";

export class GalleryApp extends StatelessWidget {
    public constructor() {
        super();
    }

    public build(context: BuildContext) {
        return new Scaffold({
            backgroundColor: Colors.blueGrey.swatch[50],
            body: new SafeArea({
                child: new Stack({
                    children: [
                        new Container({
                            height: 300,
                            decoration: new BoxDecoration({
                                borderRadius: BorderRadius.only({
                                    bottomLeft: Radius.circular(290),
                                    bottomRight: Radius.circular(30),
                                }),
                                color: Colors.greenAccent.swatch[700],
                            }),
                        }),
                        new Container({
                            margin: EdgeInsets.only({ left: 90, bottom: 20 }),
                            width: 299,
                            height: 279,
                            decoration: new BoxDecoration({
                                color: Colors.greenAccent.swatch[400],
                                borderRadius: BorderRadius.only({
                                    topLeft: Radius.circular(160),
                                    bottomLeft: Radius.circular(290),
                                    bottomRight: Radius.circular(160),
                                    topRight: Radius.circular(10),
                                }),
                            }),
                        }),
                        new CustomScrollView({
                            physics: new BouncingScrollPhysics({
                                parent: new AlwaysScrollableScrollPhysics(),
                            }),
                            slivers: List.fromArray([
                                new SliverToBoxAdapter({
                                    child: new Padding({
                                        padding: EdgeInsets.all(26.0),
                                        child: new Column({
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                                new Text("Hydro Gallery", {
                                                    style: new TextStyle({
                                                        fontSize: 32,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        color: Colors.white,
                                                    }),
                                                }),
                                            ],
                                        }),
                                    }),
                                }),
                                new SliverPadding({
                                    padding: EdgeInsets.all(26.0),
                                    sliver: SliverGrid.count({
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 20,
                                        crossAxisSpacing: 20,
                                        children: List.fromArray([
                                            new GalleryCard({
                                                icon: Icons.cake,
                                                name: "PokeApp",
                                                onTap: () => {
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute({
                                                            builder: () =>
                                                                new PokeApp(
                                                                    new PokeHubService()
                                                                ),
                                                        })
                                                    );
                                                },
                                            }),
                                            new GalleryCard({
                                                icon: Icons.hotel,
                                                name: "Hotel App",
                                                onTap: () => {
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute({
                                                            builder: () =>
                                                                new HomeScreen(),
                                                        })
                                                    );
                                                },
                                            }),
                                            new GalleryCard({
                                                icon: Icons.list,
                                                name: "Animated List App",
                                                onTap: () => {
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute({
                                                            builder: () =>
                                                                new AnimatedListSample(),
                                                        })
                                                    );
                                                },
                                            }),
                                            new GalleryCard({
                                                icon: Icons.directions_bike,
                                                name: "Basic App Bar App",
                                                onTap: () => {
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute({
                                                            builder: () =>
                                                                new BasicAppBarSample(),
                                                        })
                                                    );
                                                },
                                            }),
                                            new GalleryCard({
                                                icon: Icons.add,
                                                name: "Counter App",
                                                onTap: () => {
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute({
                                                            builder: () =>
                                                                new CounterApp(),
                                                        })
                                                    );
                                                },
                                            }),
                                        ]) as any,
                                    }),
                                }),
                            ]) as any,
                        }),
                    ],
                }),
            }),
        });
    }
}
