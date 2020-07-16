import {StatelessWidget} from "../../../runtime/flutter/widgets/statelessWidget";
import {Pokemon} from "../data/pokeHub";
import {Scaffold} from "../../../runtime/flutter/material/scaffold";
import {Colors} from "../../../runtime/flutter/material/colors";
import {AppBar} from "../../../runtime/flutter/material/appBar";
import {Text} from "../../../runtime/flutter/widgets/text";
import {Stack} from "../../../runtime/flutter/widgets/stack";
import {Positioned} from "../../../runtime/flutter/widgets/positioned";
import {MediaQuery} from "../../../runtime/flutter/widgets/mediaQuery";
import {BuildContext} from "../../../runtime/flutter/buildContext";
import {Card} from "../../../runtime/flutter/material/card";
import {Column} from "../../../runtime/flutter/widgets/column";
import {MainAxisAlignment} from "../../../runtime/flutter/widgets/mainAxisAlignment";
import {SizedBox} from "../../../runtime/flutter/widgets/sizedBox";
import {TextStyle} from "../../../runtime/flutter/painting/textStyle";
import {FontWeight} from "../../../runtime/dart/ui/fontWeight";
import {Row} from "../../../runtime/flutter/widgets/row";
import {List} from "../../../runtime/dart/collection/list";
import {Align} from "../../../runtime/flutter/widgets/align";
import {Alignment} from "../../../runtime/flutter/painting/alignment";
import {Container} from "../../../runtime/flutter/widgets/container";
import {Image} from "../../../runtime/flutter/widgets/image";

export class DetailScreen extends StatelessWidget 
{
    public pokemon: Pokemon;

    public constructor(pokemon: Pokemon) 
    {
        super();
        this.pokemon = pokemon;
    }

    public build(context: BuildContext) 
    {
        return new Scaffold({
            backgroundColor: Colors.cyan.swatch[500],
            appBar: new AppBar({
                title: new Text(this.pokemon.name),
                backgroundColor: Colors.cyan.swatch[500],
                elevation: 0
            }),
            body: new Stack({
                children: [
                    new Positioned({
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width - 20,
                        left: 10,
                        top: MediaQuery.of(context).size.height * 0.1,
                        child: new Card({
                            child: new Column({
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    new SizedBox({
                                        height: 70
                                    }),
                                    new Text(this.pokemon.name, {
                                        style: new TextStyle({fontSize: 25, fontWeight: FontWeight.bold})
                                    }),
                                    new Text(`Height: ${this.pokemon.height}`),
                                    new Text(`Weight: ${this.pokemon.weight}`),
                                    new Text("Types", {
                                        style: new TextStyle({fontWeight: FontWeight.bold})
                                    }),
                                    new Row({
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: List.fromArray(this.pokemon.type).map((t) => new Text(t)).unwrap()
                                    }),
                                    new Text("Weakness", {
                                        style: new TextStyle({fontWeight: FontWeight.bold})
                                    }),
                                    new Row({
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: List.fromArray(this.pokemon.weaknesses)
                                            .map((w) => new Text(w))
                                            .unwrap()
                                    }),
                                    new Text("Next Evolution", {
                                        style: new TextStyle({fontWeight: FontWeight.bold})
                                    }),
                                    new Row({
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: this.pokemon.next_evolution == undefined || List.fromArray(this.pokemon.next_evolution).isEmpty()
                                            ? [new Text("This is the final form")]
                                            : List.fromArray(this.pokemon.next_evolution)
                                                .map((n) => new Text(n.name))
                                                .unwrap()
                                    })
                                ]
                            })
                        })
                    }),
                    new Align({
                        alignment: Alignment.topCenter,
                        child: new Container({
                            height: 200,
                            width: 200,
                            child: Image.network(this.pokemon.img, {
                                height: 600,
                                width: 600
                            })
                        })
                    })
                ]
            })
        });
    }
}