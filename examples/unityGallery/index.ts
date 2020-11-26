import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { runApp } from "../../runtime/flutter/runApp";
import { GalleryApp } from "./screens/galleryApp";

runApp(
    () =>
        new MaterialApp({
            home: new GalleryApp(),
        })
);
