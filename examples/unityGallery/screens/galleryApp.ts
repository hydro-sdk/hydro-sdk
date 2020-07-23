import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Scaffold } from "../../../runtime/flutter/material/scaffold";
import { Colors } from "../../../runtime/flutter/material/colors";
import { SafeArea } from "../../../runtime/flutter/widgets/safeArea";
import { Stack } from "../../../runtime/flutter/widgets/stack";
import { Container } from "../../../runtime/flutter/widgets/container";
import { CustomScrollView } from "../../../runtime/flutter/widgets/customScrollView";
import { SliverToBoxAdapter } from "../../../runtime/flutter/widgets/sliverToBoxAdapter";
import { BoxDecoration } from "../../../runtime/flutter/painting/boxDecoration";
import { BorderRadius } from "../../../runtime/flutter/painting/borderRadius";
import { Radius } from "../../../runtime/dart/ui/radius";
import { EdgeInsets } from "../../../runtime/flutter/painting/edgeInsets";
import { List } from "../../../runtime/dart/collection/list";
import { Padding } from "../../../runtime/flutter/widgets/padding";
import { Column } from "../../../runtime/flutter/widgets/column";
import { Text } from "../../../runtime/flutter/widgets/text";
import { TextStyle } from "../../../runtime/flutter/painting/textStyle";
import { FontWeight } from "../../../runtime/dart/ui/fontWeight";
import { MainAxisSize } from "../../../runtime/flutter/rendering/mainAxisSize";
import { CrossAxisAlignment } from "../../../runtime/flutter/rendering/crossAxisAlignment";
import { SliverGrid } from "../../../runtime/flutter/widgets/sliverGrid";
import { SliverPadding } from "../../../runtime/flutter/widgets/sliverPadding";
import { GalleryCard } from "../widgets/galleryCard";
import { Icons } from "../../../runtime/flutter/material/icons";
import { Navigator } from "../../../runtime/flutter/widgets/navigator";
import { BuildContext } from "../../../runtime/flutter/buildContext";
import { MaterialPageRoute } from "../../../runtime/flutter/material/materialPageRoute";
import { PokeApp } from "../../pokeApp/pokeApp";
import { PokeHubService } from "../../pokeApp/data/pokeHubService";


export class GalleryApp extends StatelessWidget {
    public constructor() {
        super();
    }

    public build(context: BuildContext) {
        return new Scaffold({
            backgroundColor: Colors.white70,
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
                                color: Colors.greenAccent.swatch[700]
                            })
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
                                })
                            })
                        }),
                        new CustomScrollView({
                            slivers: List.fromArray([
                                new SliverToBoxAdapter({
                                    child: new Padding({
                                        padding: EdgeInsets.all(26.0),
                                        child: new Column({
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                new Text("Hydro Gallery", {
                                                    style: new TextStyle({
                                                        fontSize: 32,
                                                        fontWeight: FontWeight.w800,
                                                        color: Colors.white,
                                                    })
                                                })
                                            ]
                                        })
                                    })
                                }),
                                new SliverPadding({
                                    padding: EdgeInsets.all(26.0),
                                    sliver: SliverGrid.count({
                                        crossAxisCount: 2,
                                        children: List.fromArray([
                                            new GalleryCard({
                                                icon: Icons.cake,
                                                name: "PokeApp",
                                                onTap: () => {
                                                    Navigator.push(
                                                        context,
                                                        new MaterialPageRoute({
                                                            builder: () => new PokeApp(new PokeHubService())
                                                        })
                                                    );
                                                }
                                            })
                                        ])
                                    })
                                })
                            ])
                        })
                    ]
                })
            })
        });
    }
}