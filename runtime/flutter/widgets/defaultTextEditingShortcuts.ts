import { IIterable } from "../../dart/core/iterable";
import { IList, List } from "../../dart/core/list";
import { IMap, Map } from "../../dart/core/map";
import { IMapEntry, MapEntry } from "../../dart/core/mapEntry";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { LogicalKeyboardKey } from "../services/logicalKeyboardKey";
import { CopySelectionTextIntent } from "./copySelectionTextIntent";
import { CutSelectionTextIntent } from "./cutSelectionTextIntent";
import { DeleteByLineTextIntent } from "./deleteByLineTextIntent";
import { DeleteByWordTextIntent } from "./deleteByWordTextIntent";
import { DeleteForwardByLineTextIntent } from "./deleteForwardByLineTextIntent";
import { DeleteForwardByWordTextIntent } from "./deleteForwardByWordTextIntent";
import { DeleteForwardTextIntent } from "./deleteForwardTextIntent";
import { DeleteTextIntent } from "./deleteTextIntent";
import { DoNothingAndStopPropagationTextIntent } from "./doNothingAndStopPropagationTextIntent";
import { ExpandSelectionLeftByLineTextIntent } from "./expandSelectionLeftByLineTextIntent";
import { ExpandSelectionRightByLineTextIntent } from "./expandSelectionRightByLineTextIntent";
import { ExpandSelectionToEndTextIntent } from "./expandSelectionToEndTextIntent";
import { ExpandSelectionToStartTextIntent } from "./expandSelectionToStartTextIntent";
import { ExtendSelectionDownTextIntent } from "./extendSelectionDownTextIntent";
import { ExtendSelectionLeftByLineTextIntent } from "./extendSelectionLeftByLineTextIntent";
import { ExtendSelectionLeftByWordAndStopAtReversalTextIntent } from "./extendSelectionLeftByWordAndStopAtReversalTextIntent";
import { ExtendSelectionLeftByWordTextIntent } from "./extendSelectionLeftByWordTextIntent";
import { ExtendSelectionLeftTextIntent } from "./extendSelectionLeftTextIntent";
import { ExtendSelectionRightByLineTextIntent } from "./extendSelectionRightByLineTextIntent";
import { ExtendSelectionRightByWordAndStopAtReversalTextIntent } from "./extendSelectionRightByWordAndStopAtReversalTextIntent";
import { ExtendSelectionRightByWordTextIntent } from "./extendSelectionRightByWordTextIntent";
import { ExtendSelectionRightTextIntent } from "./extendSelectionRightTextIntent";
import { ExtendSelectionUpTextIntent } from "./extendSelectionUpTextIntent";
import { IIntent } from "./intent";
import { MoveSelectionDownTextIntent } from "./moveSelectionDownTextIntent";
import { MoveSelectionLeftByLineTextIntent } from "./moveSelectionLeftByLineTextIntent";
import { MoveSelectionLeftByWordTextIntent } from "./moveSelectionLeftByWordTextIntent";
import { MoveSelectionLeftTextIntent } from "./moveSelectionLeftTextIntent";
import { MoveSelectionRightByLineTextIntent } from "./moveSelectionRightByLineTextIntent";
import { MoveSelectionRightByWordTextIntent } from "./moveSelectionRightByWordTextIntent";
import { MoveSelectionRightTextIntent } from "./moveSelectionRightTextIntent";
import { MoveSelectionToEndTextIntent } from "./moveSelectionToEndTextIntent";
import { MoveSelectionToStartTextIntent } from "./moveSelectionToStartTextIntent";
import { MoveSelectionUpTextIntent } from "./moveSelectionUpTextIntent";
import { PasteTextIntent } from "./pasteTextIntent";
import { SelectAllTextIntent } from "./selectAllTextIntent";
import { IShortcutActivator } from "./shortcutActivator";
import { IShortcutManager } from "./shortcutManager";
import { IShortcuts } from "./shortcuts";
import { SingleActivator } from "./singleActivator";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        defaultTextEditingShortcuts: (
            this: void,
            defaultTextEditingShortcuts: IDefaultTextEditingShortcuts,
            props: { key?: IKey | undefined; child: IWidget }
        ) => IDefaultTextEditingShortcuts;
    };
};
export interface IDefaultTextEditingShortcuts {
    manager: IShortcutManager | undefined;
    shortcuts: IMap<IShortcutActivator, IIntent>;
    child: IWidget;
    debugLabel: string | undefined;
    key: IKey | undefined;
    createState: () => IState<IShortcuts>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class DefaultTextEditingShortcuts
    implements IShortcuts, IDiagnosticable
{
    public static _androidShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace),
                        new DeleteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            control: true,
                        }),
                        new DeleteByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            alt: true,
                        }),
                        new DeleteByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete),
                        new DeleteForwardTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            control: true,
                        }),
                        new DeleteForwardByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            alt: true,
                        }),
                        new DeleteForwardByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            alt: true,
                        }),
                        new MoveSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            alt: true,
                        }),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            alt: true,
                        }),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            alt: true,
                        }),
                        new MoveSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new MoveSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new MoveSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new MoveSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new MoveSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            control: true,
                        }),
                        new MoveSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            control: true,
                        }),
                        new MoveSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                        }),
                        new ExtendSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                        }),
                        new ExtendSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                        }),
                        new ExtendSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                        }),
                        new ExtendSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyX, {
                            control: true,
                        }),
                        new CutSelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyC, {
                            control: true,
                        }),
                        new CopySelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyV, {
                            control: true,
                        }),
                        new PasteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyA, {
                            control: true,
                        }),
                        new SelectAllTextIntent()
                    ),
                ])
            ))
        )
    );
    public static _fuchsiaShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace),
                        new DeleteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            control: true,
                        }),
                        new DeleteByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            alt: true,
                        }),
                        new DeleteByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete),
                        new DeleteForwardTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            control: true,
                        }),
                        new DeleteForwardByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            alt: true,
                        }),
                        new DeleteForwardByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            alt: true,
                        }),
                        new MoveSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            alt: true,
                        }),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            alt: true,
                        }),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            alt: true,
                        }),
                        new MoveSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new MoveSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new MoveSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new MoveSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new MoveSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            control: true,
                        }),
                        new MoveSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            control: true,
                        }),
                        new MoveSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                        }),
                        new ExtendSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                        }),
                        new ExtendSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                        }),
                        new ExtendSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                        }),
                        new ExtendSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyX, {
                            control: true,
                        }),
                        new CutSelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyC, {
                            control: true,
                        }),
                        new CopySelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyV, {
                            control: true,
                        }),
                        new PasteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyA, {
                            control: true,
                        }),
                        new SelectAllTextIntent()
                    ),
                ])
            ))
        )
    );
    public static _iOSShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace),
                        new DeleteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            control: true,
                        }),
                        new DeleteByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            alt: true,
                        }),
                        new DeleteByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete),
                        new DeleteForwardTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            control: true,
                        }),
                        new DeleteForwardByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            alt: true,
                        }),
                        new DeleteForwardByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            alt: true,
                        }),
                        new MoveSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            alt: true,
                        }),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            alt: true,
                        }),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            alt: true,
                        }),
                        new MoveSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new MoveSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new MoveSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new MoveSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new MoveSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            control: true,
                        }),
                        new MoveSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            control: true,
                        }),
                        new MoveSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                        }),
                        new ExtendSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                        }),
                        new ExtendSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                        }),
                        new ExtendSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                        }),
                        new ExtendSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyX, {
                            control: true,
                        }),
                        new CutSelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyC, {
                            control: true,
                        }),
                        new CopySelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyV, {
                            control: true,
                        }),
                        new PasteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyA, {
                            control: true,
                        }),
                        new SelectAllTextIntent()
                    ),
                ])
            ))
        )
    );
    public static _linuxShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace),
                        new DeleteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            control: true,
                        }),
                        new DeleteByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            alt: true,
                        }),
                        new DeleteByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete),
                        new DeleteForwardTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            control: true,
                        }),
                        new DeleteForwardByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            alt: true,
                        }),
                        new DeleteForwardByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            alt: true,
                        }),
                        new MoveSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            alt: true,
                        }),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            alt: true,
                        }),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            alt: true,
                        }),
                        new MoveSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new MoveSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new MoveSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new MoveSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new MoveSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            control: true,
                        }),
                        new MoveSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            control: true,
                        }),
                        new MoveSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                        }),
                        new ExtendSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                        }),
                        new ExtendSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                        }),
                        new ExtendSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                        }),
                        new ExtendSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.end),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.home),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.end, {
                            shift: true,
                        }),
                        new ExtendSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.home, {
                            shift: true,
                        }),
                        new ExtendSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyX, {
                            control: true,
                        }),
                        new CutSelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyC, {
                            control: true,
                        }),
                        new CopySelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyV, {
                            control: true,
                        }),
                        new PasteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyA, {
                            control: true,
                        }),
                        new SelectAllTextIntent()
                    ),
                ])
            ))
        )
    );
    public static _macShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace),
                        new DeleteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            alt: true,
                        }),
                        new DeleteByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            meta: true,
                        }),
                        new DeleteByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete),
                        new DeleteForwardTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            alt: true,
                        }),
                        new DeleteForwardByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            meta: true,
                        }),
                        new DeleteForwardByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            alt: true,
                        }),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            alt: true,
                        }),
                        new MoveSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            alt: true,
                        }),
                        new MoveSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            alt: true,
                        }),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            alt: true,
                        }),
                        new ExtendSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            alt: true,
                        }),
                        new ExtendSelectionLeftByWordAndStopAtReversalTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            alt: true,
                        }),
                        new ExtendSelectionRightByWordAndStopAtReversalTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            alt: true,
                        }),
                        new ExtendSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new MoveSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new MoveSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new MoveSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new MoveSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            meta: true,
                        }),
                        new MoveSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            meta: true,
                        }),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            meta: true,
                        }),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            meta: true,
                        }),
                        new MoveSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            meta: true,
                        }),
                        new ExpandSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            meta: true,
                        }),
                        new ExpandSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            meta: true,
                        }),
                        new ExpandSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            meta: true,
                        }),
                        new ExpandSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                        }),
                        new ExtendSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                        }),
                        new ExtendSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                        }),
                        new ExtendSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                        }),
                        new ExtendSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.end, {
                            shift: true,
                        }),
                        new ExpandSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.home, {
                            shift: true,
                        }),
                        new ExpandSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyX, {
                            meta: true,
                        }),
                        new CutSelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyC, {
                            meta: true,
                        }),
                        new CopySelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyV, {
                            meta: true,
                        }),
                        new PasteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyA, {
                            meta: true,
                        }),
                        new SelectAllTextIntent()
                    ),
                ])
            ))
        )
    );
    public static _windowsShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace),
                        new DeleteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            control: true,
                        }),
                        new DeleteByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            alt: true,
                        }),
                        new DeleteByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete),
                        new DeleteForwardTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            control: true,
                        }),
                        new DeleteForwardByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            alt: true,
                        }),
                        new DeleteForwardByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            alt: true,
                        }),
                        new MoveSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            alt: true,
                        }),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            alt: true,
                        }),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            alt: true,
                        }),
                        new MoveSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToEndTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            alt: true,
                        }),
                        new ExpandSelectionToStartTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new MoveSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new MoveSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new MoveSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new MoveSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            control: true,
                        }),
                        new MoveSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            control: true,
                        }),
                        new MoveSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionLeftByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            control: true,
                        }),
                        new ExtendSelectionRightByWordTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.end),
                        new MoveSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.home),
                        new MoveSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                        }),
                        new ExtendSelectionDownTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                        }),
                        new ExtendSelectionLeftTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                        }),
                        new ExtendSelectionRightTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                        }),
                        new ExtendSelectionUpTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.end, {
                            shift: true,
                        }),
                        new ExtendSelectionRightByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.home, {
                            shift: true,
                        }),
                        new ExtendSelectionLeftByLineTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyX, {
                            control: true,
                        }),
                        new CutSelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyC, {
                            control: true,
                        }),
                        new CopySelectionTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyV, {
                            control: true,
                        }),
                        new PasteTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyA, {
                            control: true,
                        }),
                        new SelectAllTextIntent()
                    ),
                ])
            ))
        )
    );
    public static _webShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.backspace, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.delete, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            alt: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.end),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.home),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            shift: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            shift: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            shift: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            shift: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.end, {
                            shift: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.home, {
                            shift: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.space),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyX, {
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyX, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyC, {
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyC, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyV, {
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyV, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyA, {
                            control: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.keyA, {
                            meta: true,
                        }),
                        new DoNothingAndStopPropagationTextIntent()
                    ),
                ])
            ))
        )
    );
    public readonly manager: IShortcutManager | undefined = undefined as any;
    public readonly shortcuts: IMap<IShortcutActivator, IIntent> =
        undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: { key?: IKey | undefined; child: IWidget }) {
        flutter.widgets.defaultTextEditingShortcuts(this, props);
    }
    private readonly _dart_createState: () => IState<IShortcuts> =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public createState(): IState<IShortcuts> {
        return this._dart_createState();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
