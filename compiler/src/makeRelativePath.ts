import * as path from "path";

export function makeRelativePath(absPath: string): string 
{
    return path.relative(process.cwd(), absPath);
}
