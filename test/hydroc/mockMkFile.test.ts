(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as path from "path";

import {
    MockFsNode,
    MockFsNodeKind,
    mockGetFileByPath,
    mockMkFile,
    mockMkdir,
} from "../../hydroc";

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {},
    };

    mockMkdir("root", true, mockFs as MockFsNode, path.sep as "\\" | "/");
    mockMkFile(
        `root${path.sep}file.txt`,
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    const root = mockGetFileByPath(
        "root",
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    expect(root).toBeDefined();
    expect(root?.kind).toBe(MockFsNodeKind.kDirectory);

    const file = mockGetFileByPath(
        `root${path.sep}file.txt`,
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    expect(file).toBeDefined();
    expect(file?.kind).toBe(MockFsNodeKind.kFile);

    expect(mockFs).toMatchObject({
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    "file.txt": {
                        kind: MockFsNodeKind.kFile,
                        fileMode: "",
                        content: "",
                    },
                },
            },
        },
    });
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

    mockMkFile(
        `root${path.sep}secondDirectory${path.sep}thirdFile`,
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    expect(mockFs).toMatchObject({
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
                            thirdFile: {
                                kind: MockFsNodeKind.kFile,
                                fileMode: "",
                                content: "",
                            },
                        },
                    },
                },
            },
        },
    });
});
