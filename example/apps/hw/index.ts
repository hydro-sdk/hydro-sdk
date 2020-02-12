import { console } from "ts/console";
import { Scaffold, AppBar, Text, Widget } from 'flutter/index';

declare let buildResult: Widget;

function printHello(): void {
    console.log("Hello");
}

printHello();

buildResult = Scaffold({
    appBar: AppBar({
        title: Text("Hello World From Typescript")
    })
});