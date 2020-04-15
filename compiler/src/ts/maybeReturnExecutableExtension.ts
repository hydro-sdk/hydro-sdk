export function maybeReturnExecutableExtension(): string {
    if (process.platform == "win32") {
        return ".exe";
    }

    return "";
}