String removeNullabilitySuffix({
  required final String str,
}) =>
    str.endsWith("*") || str.endsWith("?")
        ? str.substring(0, str.length - 1)
        : str;
