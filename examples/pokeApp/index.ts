import { StatefulWidget } from "../../runtime/flutter/widgets/statefulWidget";
import { State } from "../../runtime/flutter/widgets/state";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { AppBar } from "../../runtime/flutter/material/appBar";
import { Text } from "../../runtime/flutter/widgets/text";
import { SizedBox } from "../../runtime/flutter/widgets/sizedBox";
import { get } from "../../runtime/http/get";
import { jsonDecode } from "../../runtime/dart/convert/jsonDecode";
import { pauseInDebugger } from "../../runtime/dart/developer/debugger";
import { runApp } from "../../runtime/flutter/runApp";
import { CircularProgressIndicator } from "../../runtime/flutter/material/circularProgressIndicator";
import { Center } from "../../runtime/flutter/widgets/center";
import { PokeHub } from "./pokeHub";

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
            console.log(getResponse?.statusCode?.toString() ?? "0");
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
                    body: !this.pokeHub ? new Center({ child: new CircularProgressIndicator() }) : new SizedBox({})
                })
        });
    }
}

runApp(() => new PokeApp());