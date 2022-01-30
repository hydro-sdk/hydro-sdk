import { IVelocity, Velocity } from "./velocity";
declare const flutter: {
    gestures: {
        dragEndDetails: (
            this: void,
            dragEndDetails: IDragEndDetails,
            props: { primaryVelocity?: number | undefined; velocity: IVelocity }
        ) => IDragEndDetails;
    };
};
export interface IDragEndDetails {
    velocity: IVelocity;
    primaryVelocity: number | undefined;
    toString: () => string;
}
export class DragEndDetails {
    public readonly velocity: IVelocity = undefined as any;
    public readonly primaryVelocity: number | undefined = undefined as any;
    public constructor(props: {
        primaryVelocity?: number | undefined;
        velocity?: IVelocity;
    }) {
        flutter.gestures.dragEndDetails(this, {
            ...dragEndDetailsDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
const dragEndDetailsDefaultProps = {
    velocity: Velocity.zero,
};
