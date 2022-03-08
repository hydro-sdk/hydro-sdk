import { IColor } from "../../dart/ui/color";
import { IBuildContext } from "../widgets/buildContext";
import { IWidget } from "../widgets/widget";
import { IExpansionPanel } from "./expansionPanel";
declare const flutter: {
    material: {
        expansionPanelRadio: (
            this: void,
            expansionPanelRadio: IExpansionPanelRadio,
            props: {
                backgroundColor?: IColor | undefined;
                canTapOnHeader: boolean;
                body: IWidget;
                headerBuilder: (
                    context: IBuildContext,
                    isExpanded: boolean
                ) => IWidget;
                value: Object;
            }
        ) => IExpansionPanelRadio;
    };
};
export interface IExpansionPanelRadio {
    value: Object;
    headerBuilder: (context: IBuildContext, isExpanded: boolean) => IWidget;
    body: IWidget;
    isExpanded: boolean;
    canTapOnHeader: boolean;
    backgroundColor: IColor | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class ExpansionPanelRadio implements IExpansionPanel {
    public readonly value: Object = undefined as any;
    public readonly headerBuilder: (
        context: IBuildContext,
        isExpanded: boolean
    ) => IWidget = undefined as any;
    public readonly body: IWidget = undefined as any;
    public readonly isExpanded: boolean = undefined as any;
    public readonly canTapOnHeader: boolean = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        canTapOnHeader?: boolean;
        body: IWidget;
        headerBuilder: (context: IBuildContext, isExpanded: boolean) => IWidget;
        value: Object;
    }) {
        flutter.material.expansionPanelRadio(this, {
            ...expansionPanelRadioDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const expansionPanelRadioDefaultProps = {
    canTapOnHeader: false,
};
