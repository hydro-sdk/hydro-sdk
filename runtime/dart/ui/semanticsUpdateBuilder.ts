import { IFloat64List } from "../typed_data/float64List";
import { IInt32List } from "../typed_data/int32List";
import { IRect } from "./rect";
import { ISemanticsUpdate } from "./semanticsUpdate";
import { TextDirection } from "./textDirection";
declare const dart: {
    ui: {
        semanticsUpdateBuilder: (
            this: void,
            semanticsUpdateBuilder: ISemanticsUpdateBuilder
        ) => ISemanticsUpdateBuilder;
    };
};
export interface ISemanticsUpdateBuilder {
    updateNode: (props: {
        textDirection?: TextDirection | undefined;
        actions: number;
        additionalActions: IInt32List;
        childrenInHitTestOrder: IInt32List;
        childrenInTraversalOrder: IInt32List;
        currentValueLength: number;
        decreasedValue: string;
        elevation: number;
        flags: number;
        hint: string;
        id: number;
        increasedValue: string;
        label: string;
        maxValueLength: number;
        platformViewId: number;
        rect: IRect;
        scrollChildren: number;
        scrollExtentMax: number;
        scrollExtentMin: number;
        scrollIndex: number;
        scrollPosition: number;
        textSelectionBase: number;
        textSelectionExtent: number;
        thickness: number;
        transform: IFloat64List;
        value: string;
    }) => void;
    updateCustomAction: (props: {
        hint?: string | undefined;
        label?: string | undefined;
        overrideId: number;
        id: number;
    }) => void;
    build: () => ISemanticsUpdate;
}
export class SemanticsUpdateBuilder {
    public constructor() {
        dart.ui.semanticsUpdateBuilder(this);
    }
    private readonly _dart_updateNode: (props: {
        textDirection?: TextDirection | undefined;
        actions: number;
        additionalActions: IInt32List;
        childrenInHitTestOrder: IInt32List;
        childrenInTraversalOrder: IInt32List;
        currentValueLength: number;
        decreasedValue: string;
        elevation: number;
        flags: number;
        hint: string;
        id: number;
        increasedValue: string;
        label: string;
        maxValueLength: number;
        platformViewId: number;
        rect: IRect;
        scrollChildren: number;
        scrollExtentMax: number;
        scrollExtentMin: number;
        scrollIndex: number;
        scrollPosition: number;
        textSelectionBase: number;
        textSelectionExtent: number;
        thickness: number;
        transform: IFloat64List;
        value: string;
    }) => void = undefined as any;
    private readonly _dart_updateCustomAction: (props: {
        hint?: string | undefined;
        label?: string | undefined;
        overrideId: number;
        id: number;
    }) => void = undefined as any;
    private readonly _dart_build: () => ISemanticsUpdate = undefined as any;
    public updateNode(props: {
        textDirection?: TextDirection | undefined;
        actions: number;
        additionalActions: IInt32List;
        childrenInHitTestOrder: IInt32List;
        childrenInTraversalOrder: IInt32List;
        currentValueLength: number;
        decreasedValue: string;
        elevation: number;
        flags: number;
        hint: string;
        id: number;
        increasedValue: string;
        label: string;
        maxValueLength: number;
        platformViewId: number;
        rect: IRect;
        scrollChildren: number;
        scrollExtentMax: number;
        scrollExtentMin: number;
        scrollIndex: number;
        scrollPosition: number;
        textSelectionBase: number;
        textSelectionExtent: number;
        thickness: number;
        transform: IFloat64List;
        value: string;
    }): void {
        return this._dart_updateNode(props);
    }
    public updateCustomAction(props: {
        hint?: string | undefined;
        label?: string | undefined;
        overrideId?: number;
        id: number;
    }): void {
        return this._dart_updateCustomAction({
            ...updateCustomActionDefaultProps,
            ...props,
        });
    }
    public build(): ISemanticsUpdate {
        return this._dart_build();
    }
}
const updateCustomActionDefaultProps = {
    overrideId: -1,
};
