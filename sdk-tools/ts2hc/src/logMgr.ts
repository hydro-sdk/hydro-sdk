import { LoggingBehaviour } from "./loggingBehaviour";
import { LogEventType, DiagnosticLogEvent, ErrorLogEvent, ProgressStartLogEvent, ProgressStopLogEvent, ProgressTickLogEvent } from "./logEvent";

export class LogMgr {
    public readonly loggingBehaviour: LoggingBehaviour;

    public constructor({ loggingBehaviour }: { loggingBehaviour: LoggingBehaviour; }) {
        this.loggingBehaviour = loggingBehaviour;
    }

    private async logDiagnosticToStdout({
        event,
        loggingBehaviour
    }: {
        event: DiagnosticLogEvent;
        loggingBehaviour: LoggingBehaviour.stdout;
    }

    ): Promise<void> {
        console.log(event.message);
    }

    private async narrowDiagnosticLoggingBehavior({
        event,
        loggingBehaviour,
    }: {
        event:
        DiagnosticLogEvent
        loggingBehaviour: LoggingBehaviour;
    }): Promise<void> {
        switch (loggingBehaviour) {
            case LoggingBehaviour.stdout:
                await this.logDiagnosticToStdout({ event, loggingBehaviour });
                return;
            case LoggingBehaviour.parent:
                return;
            case LoggingBehaviour.none:
                return;

            default:
                ((_: never): void => { })(loggingBehaviour);
        }
    }

    public async log({
        event
    }: {
        event:
        DiagnosticLogEvent | ErrorLogEvent | ProgressStartLogEvent | ProgressStopLogEvent | ProgressTickLogEvent
    }): Promise<void> {
        switch (event.logEventType) {
            case LogEventType.diagnostic:
                await this.narrowDiagnosticLoggingBehavior({ event, loggingBehaviour: this.loggingBehaviour });
                return;

            case LogEventType.error:
                return;
            case LogEventType.progressStart:
                return;
            case LogEventType.progressStop:
                return;
            case LogEventType.progressTick:
                return;

            default:
                ((_: never): void => { })(event);
        }
    }
}