import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderSliverWithKeepAliveMixin } from "../rendering/renderSliverWithKeepAliveMixin";
import { IBuildContext } from "./buildContext";
import { IRenderObjectElement } from "./renderObjectElement";
import { IRenderObjectWidget } from "./renderObjectWidget";
export interface ISliverWithKeepAliveWidget extends IRenderObjectWidget {
    createRenderObject: (
        context: IBuildContext
    ) => IRenderSliverWithKeepAliveMixin;
}
