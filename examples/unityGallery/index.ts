import {runApp} from "../../runtime/flutter/runApp";
import {MaterialApp} from "../../runtime/flutter/material/materialApp";

import {GalleryApp} from "./screens/galleryApp";

runApp(() => new MaterialApp({
    home: new GalleryApp()
}));