import {
    DiagnosticLogEvent,
    ErrorLogEvent,
    LogEventType,
    ProgressStartLogEvent,
    ProgressStopLogEvent,
    ProgressTickLogEvent,
} from "./logEvent";
import { ProgressBar } from "./progressBar";
import { LoggingBehaviour } from "./loggingBehaviour";

export class LogMgr {
    public readonly loggingBehaviour: LoggingBehaviour;
    private readonly progressBars: { [i: string]: ProgressBar | undefined } = {};

    public constructor({
        loggingBehaviour,
    }: {
        loggingBehaviour: LoggingBehaviour;
    }) {
        this.loggingBehaviour = loggingBehaviour;
    }

    private async logDiagnosticToStdout({
        event,
        loggingBehaviour,
    }: {
        event: DiagnosticLogEvent;
        loggingBehaviour: LoggingBehaviour.stdout;
    }): Promise<void> {
        console.log(event.message);
    }

    private async logErrorToStdout({
        event,
        loggingBehaviour,
    }: {
        event: ErrorLogEvent;
        loggingBehaviour: LoggingBehaviour.stdout;
    }): Promise<void> {
        console.log(event.message);
    }

    private async logToParent({
        event,
        loggingBehaviour,
    }: {
        event: | DiagnosticLogEvent
        | ErrorLogEvent
        | ProgressStartLogEvent
        | ProgressStopLogEvent
        | ProgressTickLogEvent;
        loggingBehaviour: LoggingBehaviour.parent;
    }): Promise<void> {
        console.log(JSON.stringify(event));
    }

    private async narrowDiagnosticLoggingBehavior({
        event,
        loggingBehaviour,
    }: {
        event: DiagnosticLogEvent;
        loggingBehaviour: LoggingBehaviour;
    }): Promise<void> {
        switch (loggingBehaviour) {
            case LoggingBehaviour.stdout:
                await this.logDiagnosticToStdout({ event, loggingBehaviour });
                return;
            case LoggingBehaviour.parent:
                await this.logToParent({ event, loggingBehaviour });
                return;
            case LoggingBehaviour.none:
                return;

            default:
                ((_: never): void => { })(loggingBehaviour);
        }
    }

    private async narrowErrorLoggingBehavior({
        event,
        loggingBehaviour,
    }: {
        event: ErrorLogEvent;
        loggingBehaviour: LoggingBehaviour;
    }): Promise<void> {
        switch (loggingBehaviour) {
            case LoggingBehaviour.stdout:
                await this.logErrorToStdout({ event, loggingBehaviour });
                return;
            case LoggingBehaviour.parent:
                await this.logToParent({ event, loggingBehaviour });
                return;
            case LoggingBehaviour.none:
                return;

            default:
                ((_: never): void => { })(loggingBehaviour);
        }
    }

    private async narrowProgressStartLoggingBehavior({
        event,
        loggingBehaviour,
    }: {
        event: ProgressStartLogEvent;
        loggingBehaviour: LoggingBehaviour;
    }): Promise<void> {
        switch (loggingBehaviour) {
            case LoggingBehaviour.stdout:
                const progressBar = this.progressBars[event.progessId];

                if (progressBar === undefined) {
                    this.progressBars[event.progessId] = new ProgressBar("");
                }
                return;
            case LoggingBehaviour.parent:
                await this.logToParent({ event, loggingBehaviour });
                return;
            case LoggingBehaviour.none:
                return;

            default:
                ((_: never): void => { })(loggingBehaviour);
        }
    }

    private async narrowProgressStopLoggingBehavior({
        event,
        loggingBehaviour,
    }: {
        event: ProgressStopLogEvent;
        loggingBehaviour: LoggingBehaviour;
    }): Promise<void> {
        switch (loggingBehaviour) {
            case LoggingBehaviour.stdout:
                const progressBar = this.progressBars[event.progessId];

                if (progressBar === undefined) {
                    progressBar.stop();
                }
                return;
            case LoggingBehaviour.parent:
                await this.logToParent({ event, loggingBehaviour });
                return;
            case LoggingBehaviour.none:
                return;

            default:
                ((_: never): void => { })(loggingBehaviour);
        }
    }

    private async narrowProgressTickLoggingBehavior({
        event,
        loggingBehaviour,
    }: {
        event: ProgressTickLogEvent;
        loggingBehaviour: LoggingBehaviour;
    }): Promise<void> {
        switch (loggingBehaviour) {
            case LoggingBehaviour.stdout:
                const progressBar = this.progressBars[event.progessId];

                if (progressBar === undefined) {
                    progressBar.update(event.currentStep, event.totalSteps, event.suffixMessage);
                }
                return;
            case LoggingBehaviour.parent:
                await this.logToParent({ event, loggingBehaviour });
                return;
            case LoggingBehaviour.none:
                return;

            default:
                ((_: never): void => { })(loggingBehaviour);
        }
    }

    public async log({
        event,
    }: {
        event:
        | DiagnosticLogEvent
        | ErrorLogEvent
        | ProgressStartLogEvent
        | ProgressStopLogEvent
        | ProgressTickLogEvent;
    }): Promise<void> {
        switch (event.logEventType) {
            case LogEventType.diagnostic:
                await this.narrowDiagnosticLoggingBehavior({
                    event,
                    loggingBehaviour: this.loggingBehaviour,
                });
                return;

            case LogEventType.error:
                await this.narrowErrorLoggingBehavior({
                    event,
                    loggingBehaviour: this.loggingBehaviour,
                });
                return;
            case LogEventType.progressStart:
                await this.narrowProgressStartLoggingBehavior({ event, loggingBehaviour: this.loggingBehaviour });
                return;
            case LogEventType.progressStop:
                await this.narrowProgressStopLoggingBehavior({ event, loggingBehaviour: this.loggingBehaviour });
                return;
            case LogEventType.progressTick:
                await this.narrowProgressTickLoggingBehavior({ event, loggingBehaviour: this.loggingBehaviour });
                return;

            default:
                ((_: never): void => { })(event);
        }
    }
}
