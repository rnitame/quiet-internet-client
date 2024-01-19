sealed class QuietInternetApiError implements Exception {
  QuietInternetApiError(this.statusCode, this.message);

  factory QuietInternetApiError.fromStatus(
    int? statusCode,
    String statusMessage,
  ) {
    switch (statusCode) {
      case 400:
        return InvalidArgumentError(statusCode, statusMessage);
      case 401:
        return AuthenticationFailedError(statusCode, statusMessage);
      case 404:
        return NotFoundError(statusCode, statusMessage);
      case 429:
        return RateLimitExceededError(statusCode, statusMessage);
      case 500:
        return InternalServerError(statusCode, statusMessage);
      default:
        return UnknownError(statusCode, statusMessage);
    }
  }

  int? statusCode;
  String message;

  @override
  String toString() => '$runtimeType : $statusCode, $message';
}

class InvalidArgumentError extends QuietInternetApiError {
  InvalidArgumentError(super.statusCode, super.message);
}

class AuthenticationFailedError extends QuietInternetApiError {
  AuthenticationFailedError(super.statusCode, super.message);
}

class NotFoundError extends QuietInternetApiError {
  NotFoundError(super.statusCode, super.message);
}

class RateLimitExceededError extends QuietInternetApiError {
  RateLimitExceededError(super.statusCode, super.message);
}

class InternalServerError extends QuietInternetApiError {
  InternalServerError(super.statusCode, super.message);
}

class UnknownError extends QuietInternetApiError {
  UnknownError(super.statusCode, super.message);
}
