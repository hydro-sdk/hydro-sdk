import { IFuture } from "../../dart/async/future";
import { I_StandardBottomSheet } from "./_standardBottomSheet";
import { IScaffoldFeatureController } from "./scaffoldFeatureController";
export interface IPersistentBottomSheetController<T>
    extends IScaffoldFeatureController<_StandardBottomSheet, T> {}
