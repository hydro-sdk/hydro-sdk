(global as any).HYDROC_DISABLE_TOP_LEVEL = true;
import * as path from "path";
import { mockGetFileByPath, MockFsNodeKind, MockFsFile, MockFsNode } from "../../hydroc";

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            "firstChild": {
                kind: MockFsNodeKind.kFile,
                content: "a child",
            }
        }
    };

    const res = mockGetFileByPath("firstChild", mockFs as any);

    expect(res).toBeDefined();
    expect(res?.kind).toBe(MockFsNodeKind.kFile);
    expect((res as MockFsFile).content).toBe("a child");
});

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            "root": {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    "firstChild": {
                        kind: MockFsNodeKind.kFile,
                        content: "a child",
                    }
                }
            }
        }
    };

    const res = mockGetFileByPath(`root${path.sep}firstChild`, mockFs as MockFsNode);

    expect(res).toBeDefined();
    expect(res?.kind).toBe(MockFsNodeKind.kFile);
    expect((res as MockFsFile).content).toBe("a child");
});

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            "root": {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    "firstFile": {
                        kind: MockFsNodeKind.kFile,
                        content: "the first file",
                    },
                    "secondDirectory": {
                        kind: MockFsNodeKind.kDirectory,
                        children: {
                            "secondFile": {
                                kind: MockFsNodeKind.kFile,
                                content: "the second file",
                            }
                        }
                    }
                }
            }
        }
    };

    const res = mockGetFileByPath(`root${path.sep}secondDirectory${path.sep}secondFile`, mockFs as MockFsNode);

    expect(res).toBeDefined();
    expect(res?.kind).toBe(MockFsNodeKind.kFile);
    expect((res as MockFsFile).content).toBe("the second file");
});