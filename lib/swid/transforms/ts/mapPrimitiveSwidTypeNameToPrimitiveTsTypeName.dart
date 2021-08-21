String mapPrimitiveSwidTypeNameToPrimitiveTsTypeName(
        {required final String str}) =>
    str == "String" || str == "String*" || str == "String?"
        ? "string"
        : str == "bool" || str == "bool*" || str == "bool?"
            ? "boolean"
            : str == "int" ||
                    str == "int*" ||
                    str == "int?" ||
                    str == "double" ||
                    str == "double*" ||
                    str == "double?"
                ? "number"
                : str;
