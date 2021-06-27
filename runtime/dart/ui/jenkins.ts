declare const dart: {
    ui: {
        jenkinsCombine: (hash: number, o?: Object | undefined) => number;
        jenkinsFinish: (hash: number) => number;
    };
};
export interface I_Jenkins {}
export class _Jenkins {
    public static combine(hash: number, o?: Object | undefined): number {
        return dart.ui.jenkinsCombine(hash, o);
    }
    public static finish(hash: number): number {
        return dart.ui.jenkinsFinish(hash);
    }
}
