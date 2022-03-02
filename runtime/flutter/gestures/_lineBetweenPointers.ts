import { IOffset, Offset } from "../../dart/ui/offset";
declare const flutter: {
    gestures: {
        _lineBetweenPointers: (
            this: void,
            _lineBetweenPointers: I_LineBetweenPointers,
            props: {
                pointerEndId: number;
                pointerEndLocation: IOffset;
                pointerStartId: number;
                pointerStartLocation: IOffset;
            }
        ) => I_LineBetweenPointers;
    };
};
export interface I_LineBetweenPointers {
    pointerStartLocation: IOffset;
    pointerStartId: number;
    pointerEndLocation: IOffset;
    pointerEndId: number;
}
export class _LineBetweenPointers {
    public readonly pointerStartLocation: IOffset = undefined as any;
    public readonly pointerStartId: number = undefined as any;
    public readonly pointerEndLocation: IOffset = undefined as any;
    public readonly pointerEndId: number = undefined as any;
    public constructor(props: {
        pointerEndId?: number;
        pointerEndLocation?: IOffset;
        pointerStartId?: number;
        pointerStartLocation?: IOffset;
    }) {
        flutter.gestures._lineBetweenPointers(this, {
            ..._lineBetweenPointersDefaultProps,
            ...props,
        });
    }
}
const _lineBetweenPointersDefaultProps = {
    pointerEndId: 1,
    pointerEndLocation: Offset.zero,
    pointerStartId: 0,
    pointerStartLocation: Offset.zero,
};
