
export enum LogEventType { diagnostic, progressTick, progressStart, progressStop, error, }

export interface DiagnosticLogEvent {
    readonly logEventType: LogEventType.diagnostic;
    readonly message: string;
}

export interface ErrorLogEvent {
    readonly logEventType: LogEventType.error;
    readonly message: string;

}

export interface ProgressStartLogEvent {
    readonly logEventType: LogEventType.progressStart;
    readonly progessId: string;
}

export interface ProgressStopLogEvent {
    readonly logEventType: LogEventType.progressStop;
    readonly progessId: string;
}

export interface ProgressTickLogEvent {
    readonly logEventType: LogEventType.progressTick;
    readonly currentStep: number;
    readonly totalSteps: number;
    readonly suffixMessage: string;
    readonly progessId: string;
}