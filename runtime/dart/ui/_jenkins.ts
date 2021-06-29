declare const dart: {
    ui: {
        _jenkinsCombine: (hash: number, o?: Object | undefined) => number;
        _jenkinsFinish: (hash: number) => number;
    };
};
export interface I_Jenkins {}
export class _Jenkins {
    public static combine(hash: number, o?: Object | undefined): number {
        return dart.ui._jenkinsCombine(hash, o);
    }
    public static finish(hash: number): number {
        return dart.ui._jenkinsFinish(hash);
    }
}
