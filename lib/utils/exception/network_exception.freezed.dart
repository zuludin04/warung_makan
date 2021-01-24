// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NetworkExceptionTearOff {
  const _$NetworkExceptionTearOff();

// ignore: unused_element
  RequestCancelled requestCancelled() {
    return const RequestCancelled();
  }

// ignore: unused_element
  RequestTimeout requestTimeout() {
    return const RequestTimeout();
  }

// ignore: unused_element
  SendTimeout sendTimeout() {
    return const SendTimeout();
  }

// ignore: unused_element
  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }

// ignore: unused_element
  DefaultError defaultError(String error) {
    return DefaultError(
      error,
    );
  }

// ignore: unused_element
  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkException = _$NetworkExceptionTearOff();

/// @nodoc
mixin _$NetworkException {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult noInternetConnection(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult noInternetConnection(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  final NetworkException _value;
  // ignore: unused_field
  final $Res Function(NetworkException) _then;
}

/// @nodoc
abstract class $RequestCancelledCopyWith<$Res> {
  factory $RequestCancelledCopyWith(
          RequestCancelled value, $Res Function(RequestCancelled) then) =
      _$RequestCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestCancelledCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements $RequestCancelledCopyWith<$Res> {
  _$RequestCancelledCopyWithImpl(
      RequestCancelled _value, $Res Function(RequestCancelled) _then)
      : super(_value, (v) => _then(v as RequestCancelled));

  @override
  RequestCancelled get _value => super._value as RequestCancelled;
}

/// @nodoc
class _$RequestCancelled implements RequestCancelled {
  const _$RequestCancelled();

  @override
  String toString() {
    return 'NetworkException.requestCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult noInternetConnection(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult noInternetConnection(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelled implements NetworkException {
  const factory RequestCancelled() = _$RequestCancelled;
}

/// @nodoc
abstract class $RequestTimeoutCopyWith<$Res> {
  factory $RequestTimeoutCopyWith(
          RequestTimeout value, $Res Function(RequestTimeout) then) =
      _$RequestTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements $RequestTimeoutCopyWith<$Res> {
  _$RequestTimeoutCopyWithImpl(
      RequestTimeout _value, $Res Function(RequestTimeout) _then)
      : super(_value, (v) => _then(v as RequestTimeout));

  @override
  RequestTimeout get _value => super._value as RequestTimeout;
}

/// @nodoc
class _$RequestTimeout implements RequestTimeout {
  const _$RequestTimeout();

  @override
  String toString() {
    return 'NetworkException.requestTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult noInternetConnection(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return requestTimeout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult noInternetConnection(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestTimeout != null) {
      return requestTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return requestTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestTimeout != null) {
      return requestTimeout(this);
    }
    return orElse();
  }
}

abstract class RequestTimeout implements NetworkException {
  const factory RequestTimeout() = _$RequestTimeout;
}

/// @nodoc
abstract class $SendTimeoutCopyWith<$Res> {
  factory $SendTimeoutCopyWith(
          SendTimeout value, $Res Function(SendTimeout) then) =
      _$SendTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements $SendTimeoutCopyWith<$Res> {
  _$SendTimeoutCopyWithImpl(
      SendTimeout _value, $Res Function(SendTimeout) _then)
      : super(_value, (v) => _then(v as SendTimeout));

  @override
  SendTimeout get _value => super._value as SendTimeout;
}

/// @nodoc
class _$SendTimeout implements SendTimeout {
  const _$SendTimeout();

  @override
  String toString() {
    return 'NetworkException.sendTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult noInternetConnection(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult noInternetConnection(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class SendTimeout implements NetworkException {
  const factory SendTimeout() = _$SendTimeout;
}

/// @nodoc
abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

/// @nodoc
class _$NoInternetConnection implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString() {
    return 'NetworkException.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult noInternetConnection(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult noInternetConnection(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements NetworkException {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) then) =
      _$DefaultErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(
      DefaultError _value, $Res Function(DefaultError) _then)
      : super(_value, (v) => _then(v as DefaultError));

  @override
  DefaultError get _value => super._value as DefaultError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(DefaultError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$DefaultError implements DefaultError {
  const _$DefaultError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'NetworkException.defaultError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DefaultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult noInternetConnection(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return defaultError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult noInternetConnection(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultError != null) {
      return defaultError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }
}

abstract class DefaultError implements NetworkException {
  const factory DefaultError(String error) = _$DefaultError;

  String get error;
  @JsonKey(ignore: true)
  $DefaultErrorCopyWith<DefaultError> get copyWith;
}

/// @nodoc
abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;
}

/// @nodoc
class _$UnexpectedError implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString() {
    return 'NetworkException.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult noInternetConnection(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult noInternetConnection(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(noInternetConnection != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements NetworkException {
  const factory UnexpectedError() = _$UnexpectedError;
}
