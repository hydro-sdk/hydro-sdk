import { ICompleter } from "../../dart/async/completer";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IFlow } from "../../dart/developer/flow";
declare const flutter: {
    scheduler: {
        _taskEntry: <T>(
            this: void,
            _taskEntry: I_TaskEntry<T>,
            task: () => T,
            priority: number,
            debugLabel?: string | undefined,
            flow?: IFlow | undefined
        ) => I_TaskEntry<T>;
    };
};
export interface I_TaskEntry<T> {
    priority: number;
    debugLabel: string | undefined;
    flow: IFlow | undefined;
    debugStack: IStackTrace;
    completer: ICompleter<T>;
    run: () => void;
}
export class _TaskEntry<T> {
    public readonly priority: number = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public readonly flow: IFlow | undefined = undefined as any;
    public readonly debugStack: IStackTrace = undefined as any;
    public readonly completer: ICompleter<T> = undefined as any;
    public constructor(
        task: () => T,
        priority: number,
        debugLabel?: string | undefined,
        flow?: IFlow | undefined
    ) {
        flutter.scheduler._taskEntry(this, task, priority, debugLabel, flow);
    }
    private readonly _dart_run: () => void = undefined as any;
    public run(): void {
        return this._dart_run();
    }
}
