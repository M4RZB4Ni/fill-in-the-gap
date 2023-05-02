import 'dart:io';
import 'package:fill_in_the_gap/app/messages/printers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(final String message) =
  UnauthorizedRequest;

  const factory NetworkExceptions.socketIoError(final String message) =
  SocketIoError;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(final String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.badGateway() = BadGateWay;

  const factory NetworkExceptions.gatewayTimeout() = GatewayTimeout;

  const factory NetworkExceptions.networkAuthRequired() = NetworkAuthRequired;

  const factory NetworkExceptions.forbidden() = Forbidden;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(final String error) =
  DefaultError;

  const factory NetworkExceptions.parsingError(final String error) =
  ParsingError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  const factory NetworkExceptions.wrongVerification() = WrongVerification;

  const factory NetworkExceptions.invalidEmail() = InvalidEmail;

  const factory NetworkExceptions.wrongPassword() = WrongPassword;

  const factory NetworkExceptions.userNotFound() = UserNotFound;

  const factory NetworkExceptions.userDisabled() = UserDisabled;

  const factory NetworkExceptions.tooManyRequests() = TooManyRequests;

  const factory NetworkExceptions.operationNotAllowed() = OperationNotAllowed;

  const factory NetworkExceptions.emailAlreadyExists() = EmailAlreadyExists;

  const factory NetworkExceptions.customTokenMismatch() = CustomTokenMismatch;

  const factory NetworkExceptions.invalidCustomToken() = InvalidCustomToken;

  const factory NetworkExceptions.undefined() = undefined;

  static String getErrorMessage(
      final NetworkExceptions networkExceptions, {
        final bool showInLog = true,
        final dynamic stackTrace,
      }) {
    sentryReporter(exception: networkExceptions, stackTrace: stackTrace);

    var errorMessage = '';
    networkExceptions.when(
      notImplemented: () {
        errorMessage = 'Not Implemented';
      },
      requestCancelled: () {
        errorMessage = 'Request Cancelled';
      },
      internalServerError: () {
        errorMessage = 'Internal Server Error';
      },
      notFound: (final String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: () {
        errorMessage = 'Service unavailable';
      },
      methodNotAllowed: () {
        errorMessage = 'Method Allowed';
      },
      badRequest: () {
        errorMessage = 'Bad request';
      },
      unauthorizedRequest: (final String message) {
        errorMessage = message.isEmpty ? 'Unauthorized request' : message;
      },
      unexpectedError: () {
        errorMessage = 'Unexpected error occurred';
      },
      requestTimeout: () {
        errorMessage = 'Connection request timeout';
      },
      noInternetConnection: () {
        errorMessage = 'No internet connection';
      },
      conflict: () {
        errorMessage = 'Error due to a conflict';
      },
      sendTimeout: () {
        errorMessage = 'Send timeout in connection with API server';
      },
      unableToProcess: () {
        errorMessage = 'Unable to process the data';
      },
      defaultError: (final String error) {
        errorMessage = error;
      },
      formatException: () {
        errorMessage = 'Unexpected error occurred';
      },
      notAcceptable: () {
        errorMessage = 'Not acceptable';
      },
      socketIoError: (final String message) {
        errorMessage = 'Socket Connection Error';
      },
      networkAuthRequired: () {
        errorMessage = 'Unable to process the data';
      },
      badGateway: () {
        errorMessage = 'Bad Gateway';
      },
      forbidden: () {
        errorMessage = 'Forbidden access';
      },
      gatewayTimeout: () {
        errorMessage = 'Forbidden';
      },
      operationNotAllowed: () {
        errorMessage = 'Signing in with number and Password is not enabled.';
      },
      customTokenMismatch: () {
        errorMessage = 'customTokenMismatch';
      },
      emailAlreadyExists: () {
        errorMessage =
        'The email has already been registered. Please login or reset your password.';
      },
      tooManyRequests: () {
        errorMessage = 'Too many requests. Try again later.';
      },
      wrongVerification: () {
        errorMessage = 'Wrong code. Please try again.';
      },
      invalidCustomToken: () {
        errorMessage = 'invalidCustomToken';
      },
      invalidEmail: () {
        errorMessage = 'Your email address appears to be malformed.';
      },
      undefined: () {
        errorMessage = 'An undefined Error happened.';
      },
      userNotFound: () {
        errorMessage = "Invalid phone number. Please try again.";
      },
      userDisabled: () {
        errorMessage = 'User with this number has been disabled.';
      },
      wrongPassword: () {
        errorMessage = 'Your password is wrong.';
      },
      parsingError: (String error) {
        errorMessage = 'Parsing Json Exception $error';
      },
    );

    return errorMessage;
  }

  factory NetworkExceptions.handleResponse(final int error, {stackTrace}) {
    switch (error) {
      case 400:
        sentryReporter(
            exception: const NetworkExceptions.badRequest(),
            stackTrace: stackTrace);

        return const NetworkExceptions.badRequest();

      case 401:
        sentryReporter(
            exception: const NetworkExceptions.unauthorizedRequest(
                'Please Check Token'),
            stackTrace: stackTrace);

        return const NetworkExceptions.unauthorizedRequest(
            'Please Check Token');
      case 403:
        sentryReporter(
            exception: const NetworkExceptions.forbidden(),
            stackTrace: stackTrace);

        return const NetworkExceptions.forbidden();
      case 404:
        sentryReporter(
            exception: const NetworkExceptions.notFound(
                'Route Not found, Check your address'),
            stackTrace: stackTrace);

        return const NetworkExceptions.notFound(
            'Route Not found, Check your address');
      case 405:
        sentryReporter(
            exception: const NetworkExceptions.methodNotAllowed(),
            stackTrace: stackTrace);

        return const NetworkExceptions.methodNotAllowed();
      case 409:
        sentryReporter(
            exception: const NetworkExceptions.conflict(),
            stackTrace: stackTrace);

        return const NetworkExceptions.conflict();
      case 408:
        sentryReporter(
            exception: const NetworkExceptions.requestTimeout(),
            stackTrace: stackTrace);

        return const NetworkExceptions.requestTimeout();
      case 500:
        sentryReporter(
            exception: const NetworkExceptions.internalServerError(),
            stackTrace: stackTrace);

        return const NetworkExceptions.internalServerError();
      case 501:
        sentryReporter(
            exception: const NetworkExceptions.notImplemented(),
            stackTrace: stackTrace);

        return const NetworkExceptions.notImplemented();
      case 502:
        sentryReporter(
            exception: const NetworkExceptions.badGateway(),
            stackTrace: stackTrace);

        return const NetworkExceptions.badGateway();
      case 503:
        sentryReporter(
            exception: const NetworkExceptions.serviceUnavailable(),
            stackTrace: stackTrace);

        return const NetworkExceptions.serviceUnavailable();
      case 504:
        sentryReporter(
            exception: const NetworkExceptions.gatewayTimeout(),
            stackTrace: stackTrace);

        return const NetworkExceptions.gatewayTimeout();
      case 511:
        sentryReporter(
            exception: const NetworkExceptions.networkAuthRequired(),
            stackTrace: stackTrace);

        return const NetworkExceptions.networkAuthRequired();
      default:
        sentryReporter(
            exception: const NetworkExceptions.unexpectedError(),
            stackTrace: stackTrace);

        return const NetworkExceptions.unexpectedError();
    // return NetworkExceptions.defaultError(
    //   'Received invalid status code: $responseCode',
    // );
    }
  }

  factory NetworkExceptions.handleFireBaseResponse(error, stackTrace) {
    sentryReporter(exception: error, stackTrace: stackTrace);

    switch (error.code) {
      case "invalid-verification-code":
        return const NetworkExceptions.wrongVerification();
      case "ERROR_INVALID_EMAIL":
        return const NetworkExceptions.invalidEmail();
      case "ERROR_WRONG_PASSWORD":
      case "wrong-password":
        return const NetworkExceptions.wrongPassword();
      case "ERROR_USER_NOT_FOUND":
      case "user-not-found":
        return const NetworkExceptions.userNotFound();
      case "ERROR_USER_DISABLED":
        return const NetworkExceptions.userDisabled();
      case "ERROR_TOO_MANY_REQUESTS":
        return const NetworkExceptions.tooManyRequests();
      case "ERROR_OPERATION_NOT_ALLOWED":
        return const NetworkExceptions.operationNotAllowed();
      case "ERROR_EMAIL_ALREADY_IN_USE":
        return const NetworkExceptions.emailAlreadyExists();
      case "invalid-custom-token":
        return const NetworkExceptions.customTokenMismatch();
      case "custom-token-mismatch":
        return const NetworkExceptions.invalidCustomToken();
      case "network-request-failed":
        return const NetworkExceptions.noInternetConnection();
      case "invalid-phone-number":
        return const NetworkExceptions.userNotFound();
      default:
        return const NetworkExceptions.undefined();
    }
  }

  factory NetworkExceptions.getException(final HttpException error,
      {required dynamic stackTrace}) {
    NetworkExceptions? networkExceptions;
    realDebugPrint('low level error--> ${error.message}');
    // try {
    //
    //   if (error is OperationException) {
    //     if (error.graphqlErrors.isNotEmpty &&
    //         error.graphqlErrors[0].extensions!['code'].toString() == '401') {
    //       final message = error.graphqlErrors[0].message
    //           .replaceAll('GraphQL.ExecutionError: ', '');
    //       networkExceptions = NetworkExceptions.unauthorizedRequest(message);
    //     } else if (error.graphqlErrors.isNotEmpty &&
    //         error.graphqlErrors[0].message.isNotEmpty) {
    //       final message = error.graphqlErrors[0].message
    //           .replaceAll('GraphQL.ExecutionError: ', '');
    //       networkExceptions = NetworkExceptions.unauthorizedRequest(message);
    //     } else {
    //       final SocketException sockerErr =
    //           error.linkException!.originalException;
    //
    //       if (error.linkException != null) {
    //         if (error.linkException!.originalException != null &&
    //             sockerErr.osError!.message.isNotEmpty) {
    //           networkExceptions = NetworkExceptions.defaultError(
    //             sockerErr.osError!.message,
    //           );
    //         }
    //       }
    //     }
    //   }
    //   sentryReporter(error);

    sentryReporter(exception: error, stackTrace: stackTrace);
    return networkExceptions!;
    // } on FormatException catch (e) {
    //   realDebugPrint(e.toString());
    //
    //   return const NetworkExceptions.formatException();
    // } catch (_) {
    //   return const NetworkExceptions.unexpectedError();
    // }
  }

  static bool isErrorNeedToShow(String err) {
    switch (err) {
      case "ERROR_TOO_MANY_REQUESTS":
      case "ERROR_USER_DISABLED":
      case "Connection request timeout":
      case "Unauthorized request":
      case "Please Check Token":
      case "Forbidden":
      case "Unable to process the data":
      case "Forbidden access":
      case "Internal Server Error":
        return false;
      default:
        return true;
    }
  }

  static void sentryReporter(
      {required dynamic exception, required dynamic stackTrace}) async {
    //I disabled this line because for this repo we do not need really connect to Sentry.IO
    // await Sentry.captureException(exception, stackTrace: stackTrace);
  }
}
