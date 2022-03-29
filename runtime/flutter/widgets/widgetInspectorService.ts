import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { IImage } from "../../dart/ui/image";
import { IInspectorSelection } from "./inspectorSelection";
export interface IWidgetInspectorService {
    selection: IInspectorSelection;
    registerServiceExtension: (props: {
        callback: (parameters: {
            [index: string]: string;
        }) => IFuture<{ [index: string]: any }>;
        name: string;
    }) => void;
    forceRebuild: () => IFuture<void>;
    isStructuredErrorsEnabled: () => boolean;
    initServiceExtensions: (
        registerServiceExtensionCallback: (props: {
            callback: (parameters: {
                [index: string]: string;
            }) => IFuture<{ [index: string]: any }>;
            name: string;
        }) => void
    ) => void;
    disposeGroup: (name: string) => void;
    toId: (object: Object | undefined, groupName: string) => string | undefined;
    isWidgetTreeReady: (groupName?: string | undefined) => boolean;
    toObject: (
        id?: string | undefined,
        groupName?: string | undefined
    ) => Object | undefined;
    toObjectForSourceLocation: (
        id: string,
        groupName?: string | undefined
    ) => Object | undefined;
    disposeId: (id: string | undefined, groupName: string) => void;
    setPubRootDirectories: (pubRootDirectories: IList<string>) => void;
    setSelectionById: (
        id?: string | undefined,
        groupName?: string | undefined
    ) => boolean;
    setSelection: (
        object?: Object | undefined,
        groupName?: string | undefined
    ) => boolean;
    getParentChain: (id: string, groupName: string) => string;
    getProperties: (diagnosticsNodeId: string, groupName: string) => string;
    getChildren: (diagnosticsNodeId: string, groupName: string) => string;
    getChildrenSummaryTree: (
        diagnosticsNodeId: string,
        groupName: string
    ) => string;
    getChildrenDetailsSubtree: (
        diagnosticsNodeId: string,
        groupName: string
    ) => string;
    getRootWidget: (groupName: string) => string;
    getRootWidgetSummaryTree: (groupName: string) => string;
    getRootRenderObject: (groupName: string) => string;
    getDetailsSubtree: (
        id: string,
        groupName: string,
        props: { subtreeDepth: number }
    ) => string;
    getSelectedRenderObject: (
        previousSelectionId: string,
        groupName: string
    ) => string;
    getSelectedWidget: (
        previousSelectionId: string | undefined,
        groupName: string
    ) => string;
    screenshot: (
        object?: Object | undefined,
        props: {
            debugPaint: boolean;
            margin: number;
            maxPixelRatio: number;
            height: number;
            width: number;
        }
    ) => IFuture<IImage | undefined>;
    getSelectedSummaryWidget: (
        previousSelectionId: string,
        groupName: string
    ) => string;
    isWidgetCreationTracked: () => boolean;
    postEvent: (
        eventKind: string,
        eventData: IMap<Object, Object | undefined>
    ) => void;
    performReassemble: () => void;
}
