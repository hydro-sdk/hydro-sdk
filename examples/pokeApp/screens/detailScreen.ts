import { List } from "../../../runtime/dart/core/list";
import { FontWeight } from "../../../runtime/dart/ui/fontWeight";
import { BuildContext } from "../../../runtime/flutter/buildContext";
import { AppBar } from "../../../runtime/flutter/material/appBar";
import { Card } from "../../../runtime/flutter/material/card";
import { Colors } from "../../../runtime/flutter/material/colors";
import { FilterChip } from "../../../runtime/flutter/material/filterChip";
import { Scaffold } from "../../../runtime/flutter/material/scaffold";
import { Alignment } from "../../../runtime/flutter/painting/alignment";
import { TextStyle } from "../../../runtime/flutter/painting/textStyle";
import { Align } from "../../../runtime/flutter/widgets/align";
import { Column } from "../../../runtime/flutter/widgets/column";
import { Container } from "../../../runtime/flutter/widgets/container";
import { Hero } from "../../../runtime/flutter/widgets/hero";
import { Image } from "../../../runtime/flutter/widgets/image";
import { MainAxisAlignment } from "../../../runtime/flutter/widgets/mainAxisAlignment";
import { MediaQuery } from "../../../runtime/flutter/widgets/mediaQuery";
import { Positioned } from "../../../runtime/flutter/widgets/positioned";
import { Row } from "../../../runtime/flutter/widgets/row";
import { SizedBox } from "../../../runtime/flutter/widgets/sizedBox";
import { Stack } from "../../../runtime/flutter/widgets/stack";
import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Text } from "../../../runtime/flutter/widgets/text";
import { Pokemon } from "../data/pokeHub";

export class DetailScreen extends StatelessWidget {
    public pokemon: Pokemon;

    public constructor(pokemon: Pokemon) {
        super();
        this.pokemon = pokemon;
    }

    public build(context: BuildContext) {
        return new Scaffold({
            backgroundColor: Colors.cyan.swatch[500],
            appBar: new AppBar({
                title: new Text(this.pokemon.name),
                backgroundColor: Colors.cyan.swatch[500],
                elevation: 0,
            }),
            body: new Stack({
                children: [
                    new Positioned({
                        height: MediaQuery.of(context).size.getHeight() / 1.5,
                        width: MediaQuery.of(context).size.getWidth() - 20,
                        left: 10,
                        top: MediaQuery.of(context).size.getHeight() * 0.1,
                        child: new Card({
                            child: new Column({
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                    new SizedBox({
                                        height: 70,
                                    }),
                                    new Text(this.pokemon.name, {
                                        style: new TextStyle({
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                        }),
                                    }),
                                    new Text(`Height: ${this.pokemon.height}`),
                                    new Text(`Weight: ${this.pokemon.weight}`),
                                    new Text("Types", {
                                        style: new TextStyle({
                                            fontWeight: FontWeight.bold,
                                        }),
                                    }),
                                    new Row({
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: this.pokemon.type.map(
                                            (t) =>
                                                new FilterChip({
                                                    backgroundColor:
                                                        Colors.amber
                                                            .swatch[500],
                                                    label: new Text(t),
                                                    onSelected: () => undefined,
                                                })
                                        ),
                                    }),
                                    new Text("Weakness", {
                                        style: new TextStyle({
                                            fontWeight: FontWeight.bold,
                                        }),
                                    }),
                                    new Row({
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: this.pokemon.weaknesses.map(
                                            (t) =>
                                                new FilterChip({
                                                    backgroundColor:
                                                        Colors.red.swatch[500],
                                                    label: new Text(t, {
                                                        style: new TextStyle({
                                                            color: Colors.white,
                                                        }),
                                                    }),
                                                    onSelected: () => undefined,
                                                })
                                        ),
                                    }),
                                    new Text("Next Evolution", {
                                        style: new TextStyle({
                                            fontWeight: FontWeight.bold,
                                        }),
                                    }),
                                    new Row({
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children:
                                            this.pokemon.next_evolution ==
                                                undefined ||
                                            List.fromArray(
                                                this.pokemon.next_evolution
                                            ).getIsEmpty()
                                                ? [
                                                      new Text(
                                                          "This is the final form"
                                                      ),
                                                  ]
                                                : this.pokemon.next_evolution.map(
                                                      (n) =>
                                                          new FilterChip({
                                                              backgroundColor:
                                                                  Colors.green
                                                                      .swatch[500],
                                                              label: new Text(
                                                                  n.name,
                                                                  {
                                                                      style: new TextStyle(
                                                                          {
                                                                              color: Colors.white,
                                                                          }
                                                                      ),
                                                                  }
                                                              ),
                                                              onSelected: () =>
                                                                  undefined,
                                                          })
                                                  ),
                                    }),
                                ],
                            }),
                        }),
                    }),
                    new Align({
                        alignment: Alignment.topCenter,
                        child: new Hero({
                            tag: this.pokemon.img,
                            child: new Container({
                                height: 200,
                                width: 200,
                                child: Image.network(this.pokemon.img, {
                                    height: 600,
                                    width: 600,
                                }),
                            }),
                        }),
                    }),
                ],
            }),
        });
    }
}
