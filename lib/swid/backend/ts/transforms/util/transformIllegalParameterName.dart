String transformIllegalParameterName({
  required final String name,
}) =>
    name == "function" ? "phunction" : name;
