(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as path from "path";

import {
    MockFsNode,
    MockFsNodeKind,
    mockGetFileByPath,
    mockMkdir,
    mockMkFile,
} from "../../hydroc";

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {},
    };

    mockMkdir("root", true, mockFs as MockFsNode);
    mockMkFile(`root${path.sep}file.txt`, mockFs as MockFsNode);

    const root = mockGetFileByPath("root", mockFs as MockFsNode);

    expect(root).toBeDefined();
    expect(root?.kind).toBe(MockFsNodeKind.kDirectory);

    const file = mockGetFileByPath(`root${path.sep}file.txt`, mockFs as MockFsNode);

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
                        content: "",
                    }
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
                        content: "the first file",
                    },
                    secondDirectory: {
                        kind: MockFsNodeKind.kDirectory,
                        children: {
                            secondFile: {
                                kind: MockFsNodeKind.kFile,
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
        mockFs as MockFsNode
    );

    expect(mockFs).toMatchObject({
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    firstFile: {
                        kind: MockFsNodeKind.kFile,
                        content: "the first file",
                    },
                    secondDirectory: {
                        kind: MockFsNodeKind.kDirectory,
                        children: {
                            secondFile: {
                                kind: MockFsNodeKind.kFile,
                                content: "the second file",
                            },
                            thirdFile: {
                                kind: MockFsNodeKind.kFile,
                                content: "",
                            },
                        },
                    },
                },
            },
        },
    });
});
