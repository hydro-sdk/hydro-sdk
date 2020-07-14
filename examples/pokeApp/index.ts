import { StatefulWidget } from "../../runtime/flutter/widgets/statefulWidget";
import { State } from "../../runtime/flutter/widgets/state";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { AppBar } from "../../runtime/flutter/material/appBar";
import { Text } from "../../runtime/flutter/widgets/text";
import { get } from "../../runtime/http/get";
import { jsonDecode } from "../../runtime/dart/convert/jsonDecode";
import { runApp } from "../../runtime/flutter/runApp";
import { CircularProgressIndicator } from "../../runtime/flutter/material/circularProgressIndicator";
import { Center } from "../../runtime/flutter/widgets/center";
import { GridView } from "../../runtime/flutter/widgets/gridView";
import { PokeHub } from "./pokeHub";
import { Padding } from "../../runtime/flutter/widgets/padding";
import { EdgeInsets } from "../../runtime/flutter/painting/edgeInsets";
import { InkWell } from "../../runtime/flutter/material/inkWell";
import { Card } from "../../runtime/flutter/material/card";
import { Column } from "../../runtime/flutter/widgets/column";
import { MainAxisSize } from "../../runtime/flutter/rendering/mainAxisSize";
import { MainAxisAlignment } from "../../runtime/flutter/widgets/mainAxisAlignment";
import { Container } from "../../runtime/flutter/widgets/container";
import { Image } from "../../runtime/flutter/widgets/image";

console.log("main chunk");

class PokeApp extends StatefulWidget {
    public constructor() {
        super();
    }

    public createState() {
        return new PokeAppState();
    }
}

class PokeAppState extends State<PokeApp>{
    public constructor() {
        super();

        this.fetchData();
    }

    private readonly url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
    private pokeHub: PokeHub | undefined;
    private fetchData() {
        const res = get(this.url);

        res.then((getResponse) => {
            this.setState(() => {
                if (getResponse.body) {
                    this.pokeHub = jsonDecode(getResponse.body);
                }
            });
        });
    }

    public build() {
        return new MaterialApp({
            home:
                new Scaffold({
                    appBar: new AppBar({
                        title: new Text("Poke App"),
                    }),
                    body: !this.pokeHub ? new Center({ child: new CircularProgressIndicator() })
                        : GridView.count({
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            children: this.pokeHub.pokemon.concat([]).map(
                                (poke) => new Padding({
                                    padding: EdgeInsets.all(2.0),
                                    child: new InkWell({
                                        onTap: () => { },
                                        child: new Card({
                                            child: new Column({
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                    new Container({
                                                        child: Image.network(poke.img, {
                                                            width: 120,
                                                            height: 120,
                                                        })
                                                    })
                                                ]
                                            })
                                        })
                                    })
                                })
                            )
                        })
                })
        });
    }
}

runApp(() => new PokeApp());