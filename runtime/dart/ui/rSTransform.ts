declare const dart: {
    ui: {
        rSTransform: (
            this: void,
            rSTransform: IRSTransform,
            scos: number,
            ssin: number,
            tx: number,
            ty: number
        ) => IRSTransform;
        rSTransformFromComponents: (props: {
            anchorX: number;
            anchorY: number;
            rotation: number;
            scale: number;
            translateX: number;
            translateY: number;
        }) => IRSTransform;
    };
};
export interface IRSTransform {
    getScos: () => number;
    getSsin: () => number;
    getTx: () => number;
    getTy: () => number;
}
export class RSTransform {
    public constructor(scos: number, ssin: number, tx: number, ty: number) {
        dart.ui.rSTransform(this, scos, ssin, tx, ty);
    }
    public static fromComponents(props: {
        anchorX: number;
        anchorY: number;
        rotation: number;
        scale: number;
        translateX: number;
        translateY: number;
    }): IRSTransform {
        return dart.ui.rSTransformFromComponents(props);
    }
    private readonly _dart_getScos: () => number = undefined as any;
    private readonly _dart_getSsin: () => number = undefined as any;
    private readonly _dart_getTx: () => number = undefined as any;
    private readonly _dart_getTy: () => number = undefined as any;
    public getScos(): number {
        return this._dart_getScos();
    }
    public getSsin(): number {
        return this._dart_getSsin();
    }
    public getTx(): number {
        return this._dart_getTx();
    }
    public getTy(): number {
        return this._dart_getTy();
    }
}
