abstract class IApiFailureResult {
  final int statusCode;
  final String message;

  const IApiFailureResult({
    required this.statusCode,
    required this.message,
  });
}

abstract class IApiSuccessResult<T> {
  final int statusCode;
  final T result;

  const IApiSuccessResult({
    required this.statusCode,
    required this.result,
  });
}
