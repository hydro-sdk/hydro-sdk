import {Scaffold} from "../../../runtime/flutter/material/scaffold";
import {AppBar} from "../../../runtime/flutter/material/appBar";
import {Text} from "../../../runtime/flutter/widgets/text";
import {CircularProgressIndicator} from "../../../runtime/flutter/material/circularProgressIndicator";
import {Center} from "../../../runtime/flutter/widgets/center";
import {GridView} from "../../../runtime/flutter/widgets/gridView";
import {Padding} from "../../../runtime/flutter/widgets/padding";
import {EdgeInsets} from "../../../runtime/flutter/painting/edgeInsets";
import {List} from "../../../runtime/dart/collection/list";
import {BuildContext} from "../../../runtime/flutter/buildContext";
import {Colors} from "../../../runtime/flutter/material/colors";
import {StatelessWidget} from "../../../runtime/flutter/widgets/statelessWidget";
import {ScopedModel} from "../../../runtime/scopedModel/scopedModel";
import {PokeHubService} from "../data/pokeHubService";
import {ListView} from "../../../runtime/flutter/widgets/listView";
import {NeverScrollableScrollPhysics} from "../../../runtime/flutter/widgets/neverScrollableScrollPhysics";
import {TextFormField} from "../../../runtime/flutter/material/textFormField";
import {PokeCard} from "../widgets/pokeCard";
import {TextSearchService} from "../data/textSearchService";

import {PokeHub} from "./../data/pokeHub";

export class PokeGridScreen extends StatelessWidget 
{
    public constructor() 
    {
        super();
    }

    public build(context: BuildContext) 
    {
        const pokeHubService = ScopedModel.of<PokeHubService>(context, PokeHubService.staticType);
        let pokeHub: PokeHub | undefined;
        if (pokeHubService) 
        {
            pokeHub = pokeHubService.getPokeHub();
        }

        const textSearchService = ScopedModel.of<TextSearchService>(context, TextSearchService.staticType);

        return new Scaffold({
            appBar: new AppBar({
                title: new Text("Poke App"),
                elevation: 0,
                backgroundColor: Colors.cyan.swatch[500],
            }),
            body: !pokeHub ? new Center({child: new CircularProgressIndicator()})
                :
                ListView.create({
                    children: List.fromArray([
                        new Padding({
                            padding: EdgeInsets.all(20),
                            child: new TextFormField({
                                onChanged: (val) => 
                                {
                                    if (textSearchService) 
                                    {
                                        textSearchService.updateSearchText(val);
                                    }
                                }
                            })
                        }),
                        GridView.count({
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            physics: new NeverScrollableScrollPhysics(),
                            children: List.fromArray(pokeHub.pokemon).where((poke) => 
                            {
                                if(textSearchService)
                                {
                                    const searchText = textSearchService.getSearchText();
                                    if(searchText !== undefined && searchText != "")
                                    {
                                        if(textSearchService.getSearchText() != poke.name.toLowerCase())
                                        {
                                            return false;
                                        }
                                    }
                                }
                                return true;
                            }).map((poke) => new PokeCard(poke))
                        })
                    ])
                })
        });
    }
}