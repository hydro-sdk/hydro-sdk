
import { IKey } from "../foundation/key";
import { IRenderObjectWidget } from "./renderObjectWidget";
import { IRenderObjectElement } from "./renderObjectElement";
import { IBuildContext } from "./buildContext";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderSliverWithKeepAliveMixin } from "../rendering/renderSliverWithKeepAliveMixin";
export interface ISliverWithKeepAliveWidget

 extends IRenderObjectWidget
{
createRenderObject: (context: IBuildContext) => IRenderSliverWithKeepAliveMixin;
}