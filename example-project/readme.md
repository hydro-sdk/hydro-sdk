# Hydro Example Project

This folder is an example usage of Hydro-SDK.

You'll need both the `npm`, and `flutter` commands available to scaffold the project and manage dependencies.

`flutter create .` establishes the basic Flutter project structure.

`npm init` will create and manage `package.json` and `package-lock.json`

Hydro-SDK itself is managed through `npm`. Install it by running `npm install --save chgibb/hydro-sdk` .   
`npm` will clone and save a copy of Hydro-SDK into `node_modules/`. 

The Dart portion of Hydro-SDK is exposed to Flutter by adding the following under `dependencies` in `pubspec.yaml`.
```
hydro_sdk:
    path: ./node_modules/hydro-sdk
```
Its important that Hydro-SDK is included as a `dependency` and NOT a `devDependency` in both `package.json` and `pubspec.yaml`.


Once Hydro-SDK is mature enough, it will be available as separate packages.

By default, running `flutter run` or starting a debug session in your IDE will open a host application which will download and run a line for line port of https://github.com/cybdom/hotel_booking_ui using Github as the file host.

The provided `hello-world.ts` file can be compiled into a bytecode image to `assets/hello-world.hc` by running
```
 node node_modules/hydro-sdk/dist/compiler -t hello-world.ts -m hello-world -d assets -p debug

```

`-t` is the target file to compile  
`-m` is the output file name, minus the extension  
`-d` is the output directory name  
`-p` is the build profile. Either `debug` or `release`  
`-w` (Optional) watch a directory and rebuild the gievnt target with the given options when changes are detected

Development time hot-reload is only possible when running bytecode over the network with `RunFromNetwork`. This can be accomplished with the `-w` switch and something like the `serve` package. To serve the `assets` directory on `localhost`, something like
```
npx serve assets
```
can be used.

To consume from an Android emulator
```
RunFromNetwork(baseUrl: "10.0.2.2:5000/assets/hello-world.hc")
```
or from an iOS simulator
```
RunFromNetwork(baseUrl: "localhost:5000/assets/hello-world.hc")
```
can be used

## Debugging
The following function
```typescript
import {pauseInDebugger} from "hydro-sdk/runtime/ts/debugger";
```
can be called to cause IDE dev tools to pause execution if the host application is running in debug mode and connected to a debugger. `pauseInDebugger` can optionally take a single argument, the value of which will be inspectable in the connected debugger. This can useful to inspect class layouts at runtime or to step between sequential `pauseInDebugger` calls.