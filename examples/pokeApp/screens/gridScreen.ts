import {StatefulWidget} from "../../../runtime/flutter/widgets/statefulWidget";
import {State} from "../../../runtime/flutter/widgets/state";
import {Scaffold} from "../../../runtime/flutter/material/scaffold";
import {AppBar} from "../../../runtime/flutter/material/appBar";
import {Text} from "../../../runtime/flutter/widgets/text";
import {get} from "../../../runtime/http/get";
import {jsonDecode} from "../../../runtime/dart/convert/jsonDecode";
import {CircularProgressIndicator} from "../../../runtime/flutter/material/circularProgressIndicator";
import {Center} from "../../../runtime/flutter/widgets/center";
import {GridView} from "../../../runtime/flutter/widgets/gridView";
import {Padding} from "../../../runtime/flutter/widgets/padding";
import {EdgeInsets} from "../../../runtime/flutter/painting/edgeInsets";
import {InkWell} from "../../../runtime/flutter/material/inkWell";
import {Card} from "../../../runtime/flutter/material/card";
import {Column} from "../../../runtime/flutter/widgets/column";
import {MainAxisSize} from "../../../runtime/flutter/rendering/mainAxisSize";
import {MainAxisAlignment} from "../../../runtime/flutter/widgets/mainAxisAlignment";
import {Container} from "../../../runtime/flutter/widgets/container";
import {Image} from "../../../runtime/flutter/widgets/image";
import {List} from "../../../runtime/dart/collection/list";
import {TextStyle} from "../../../runtime/flutter/painting/textStyle";
import {FontWeight} from "../../../runtime/dart/ui/fontWeight";
import {Navigator} from "../../../runtime/flutter/widgets/navigator";
import {MaterialPageRoute} from "../../../runtime/flutter/material/materialPageRoute";
import {BuildContext} from "../../../runtime/flutter/buildContext";
import {Colors} from "../../../runtime/flutter/material/colors";
import {Hero} from "../../../runtime/flutter/widgets/hero";

import {DetailScreen} from "./detailScreen";
import {PokeHub} from "./../data/pokeHub";
import { Key } from "../../../runtime/flutter/foundation/key";

export class PokeGridScreen extends StatefulWidget 
{
    public constructor() 
    {
        super();
    }

    public createState() 
    {
        return new PokeGridScreenState();
    }
}

class PokeGridScreenState extends State<PokeGridScreen>
{
    public constructor() 
    {
        super();

        this.fetchData();
    }

    private readonly url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
    private pokeHub: PokeHub | undefined;
    private fetchData() 
    {
        const res = get(this.url);

        res.then((getResponse) => 
        {
            this.setState(() => 
            {
                if (getResponse.body) 
                {
                    this.pokeHub = jsonDecode(getResponse.body);
                }
            });
        });
    }

    public build(context: BuildContext) 
    {
        return new Scaffold({
            appBar: new AppBar({
                title: new Text("Poke App"),
                elevation: 0,
                backgroundColor: Colors.cyan.swatch[500],
            }),
            body: !this.pokeHub ? new Center({child: new CircularProgressIndicator()})
                : GridView.count({
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    children: List.fromArray(this.pokeHub.pokemon).map(
                        (poke) => new Padding({
                            padding: EdgeInsets.all(2.0),
                            key: new Key(poke.name),
                            child: new InkWell({
                                onTap: () => 
                                {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute({
                                            builder: () => new DetailScreen(poke)
                                        })
                                    );
                                },
                                child:
                                    new Hero({
                                        tag: poke.img,
                                        child:
                                            new Card({
                                                child: new Column({
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                        new Container({
                                                            child: Image.network(poke.img, {
                                                                width: 120,
                                                                height: 120,
                                                            })
                                                        }),
                                                        new Text(poke.name, {
                                                            style: new TextStyle({
                                                                fontSize: 20.0,
                                                                fontWeight: FontWeight.bold
                                                            })
                                                        })
                                                    ]
                                                })
                                            })
                                    })
                            })
                        })
                    )
                })
        });
    }
}