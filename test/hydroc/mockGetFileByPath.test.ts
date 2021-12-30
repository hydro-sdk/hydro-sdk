(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as path from "path";

import {
    MockFsFile,
    MockFsNode,
    MockFsNodeKind,
    mockGetFileByPath,
} from "../../hydroc";

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            firstChild: {
                kind: MockFsNodeKind.kFile,
                content: "a child",
            },
        },
    };

    const res = mockGetFileByPath(
        "firstChild",
        mockFs as any,
        path.sep as "\\" | "/"
    );

    expect(res).toBeDefined();
    expect(res?.kind).toBe(MockFsNodeKind.kFile);
    expect((res as MockFsFile).content).toBe("a child");
});

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: [],
            },
        },
    };

    const res = mockGetFileByPath(
        "root",
        mockFs as any,
        path.sep as "\\" | "/"
    );

    expect(res).toBeDefined();
    expect(res?.kind).toBe(MockFsNodeKind.kDirectory);
});

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    firstChild: {
                        kind: MockFsNodeKind.kFile,
                        fileMode: "",
                        content: "a child",
                    },
                },
            },
        },
    };

    const res = mockGetFileByPath(
        `root${path.sep}firstChild`,
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    expect(res).toBeDefined();
    expect(res?.kind).toBe(MockFsNodeKind.kFile);
    expect((res as MockFsFile).content).toBe("a child");
});

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    firstFile: {
                        kind: MockFsNodeKind.kFile,
                        fileMode: "",
                        content: "the first file",
                    },
                    secondDirectory: {
                        kind: MockFsNodeKind.kDirectory,
                        children: {
                            secondFile: {
                                kind: MockFsNodeKind.kFile,
                                fileMode: "",
                                content: "the second file",
                            },
                        },
                    },
                },
            },
        },
    };

    const res = mockGetFileByPath(
        `root${path.sep}secondDirectory${path.sep}secondFile`,
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    expect(res).toBeDefined();
    expect(res?.kind).toBe(MockFsNodeKind.kFile);
    expect((res as MockFsFile).content).toBe("the second file");
});
