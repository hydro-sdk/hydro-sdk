import { console } from "ts/console";
import { Scaffold, AppBar, Text } from 'flutter/index';

declare let buildResult: any;

function printHello(): void {
    console.log("Hello");
}

function printWorld(): void {
    console.log("world");
}

printHello();

buildResult = Scaffold({ appBar: AppBar({ title: Text("Hello World From Typescript") }) });