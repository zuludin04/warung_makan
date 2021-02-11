// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RestaurantSearchStateTearOff {
  const _$RestaurantSearchStateTearOff();

// ignore: unused_element
  InitialSearch initialSearch() {
    return const InitialSearch();
  }

// ignore: unused_element
  LoadingSearch loadingSearch() {
    return const LoadingSearch();
  }

// ignore: unused_element
  ShowSearchResult showSearchResult(List<Restaurants> results) {
    return ShowSearchResult(
      results,
    );
  }

// ignore: unused_element
  FailedShowResult failedShowResult(String message) {
    return FailedShowResult(
      message,
    );
  }

// ignore: unused_element
  EmptyResult emptyResult() {
    return const EmptyResult();
  }
}

/// @nodoc
// ignore: unused_element
const $RestaurantSearchState = _$RestaurantSearchStateTearOff();

/// @nodoc
mixin _$RestaurantSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialSearch(),
    @required TResult loadingSearch(),
    @required TResult showSearchResult(List<Restaurants> results),
    @required TResult failedShowResult(String message),
    @required TResult emptyResult(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialSearch(),
    TResult loadingSearch(),
    TResult showSearchResult(List<Restaurants> results),
    TResult failedShowResult(String message),
    TResult emptyResult(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialSearch(InitialSearch value),
    @required TResult loadingSearch(LoadingSearch value),
    @required TResult showSearchResult(ShowSearchResult value),
    @required TResult failedShowResult(FailedShowResult value),
    @required TResult emptyResult(EmptyResult value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialSearch(InitialSearch value),
    TResult loadingSearch(LoadingSearch value),
    TResult showSearchResult(ShowSearchResult value),
    TResult failedShowResult(FailedShowResult value),
    TResult emptyResult(EmptyResult value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RestaurantSearchStateCopyWith<$Res> {
  factory $RestaurantSearchStateCopyWith(RestaurantSearchState value,
          $Res Function(RestaurantSearchState) then) =
      _$RestaurantSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantSearchStateCopyWithImpl<$Res>
    implements $RestaurantSearchStateCopyWith<$Res> {
  _$RestaurantSearchStateCopyWithImpl(this._value, this._then);

  final RestaurantSearchState _value;
  // ignore: unused_field
  final $Res Function(RestaurantSearchState) _then;
}

/// @nodoc
abstract class $InitialSearchCopyWith<$Res> {
  factory $InitialSearchCopyWith(
          InitialSearch value, $Res Function(InitialSearch) then) =
      _$InitialSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialSearchCopyWithImpl<$Res>
    extends _$RestaurantSearchStateCopyWithImpl<$Res>
    implements $InitialSearchCopyWith<$Res> {
  _$InitialSearchCopyWithImpl(
      InitialSearch _value, $Res Function(InitialSearch) _then)
      : super(_value, (v) => _then(v as InitialSearch));

  @override
  InitialSearch get _value => super._value as InitialSearch;
}

/// @nodoc
class _$InitialSearch implements InitialSearch {
  const _$InitialSearch();

  @override
  String toString() {
    return 'RestaurantSearchState.initialSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialSearch(),
    @required TResult loadingSearch(),
    @required TResult showSearchResult(List<Restaurants> results),
    @required TResult failedShowResult(String message),
    @required TResult emptyResult(),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return initialSearch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialSearch(),
    TResult loadingSearch(),
    TResult showSearchResult(List<Restaurants> results),
    TResult failedShowResult(String message),
    TResult emptyResult(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialSearch != null) {
      return initialSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialSearch(InitialSearch value),
    @required TResult loadingSearch(LoadingSearch value),
    @required TResult showSearchResult(ShowSearchResult value),
    @required TResult failedShowResult(FailedShowResult value),
    @required TResult emptyResult(EmptyResult value),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return initialSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialSearch(InitialSearch value),
    TResult loadingSearch(LoadingSearch value),
    TResult showSearchResult(ShowSearchResult value),
    TResult failedShowResult(FailedShowResult value),
    TResult emptyResult(EmptyResult value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialSearch != null) {
      return initialSearch(this);
    }
    return orElse();
  }
}

abstract class InitialSearch implements RestaurantSearchState {
  const factory InitialSearch() = _$InitialSearch;
}

/// @nodoc
abstract class $LoadingSearchCopyWith<$Res> {
  factory $LoadingSearchCopyWith(
          LoadingSearch value, $Res Function(LoadingSearch) then) =
      _$LoadingSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingSearchCopyWithImpl<$Res>
    extends _$RestaurantSearchStateCopyWithImpl<$Res>
    implements $LoadingSearchCopyWith<$Res> {
  _$LoadingSearchCopyWithImpl(
      LoadingSearch _value, $Res Function(LoadingSearch) _then)
      : super(_value, (v) => _then(v as LoadingSearch));

  @override
  LoadingSearch get _value => super._value as LoadingSearch;
}

/// @nodoc
class _$LoadingSearch implements LoadingSearch {
  const _$LoadingSearch();

  @override
  String toString() {
    return 'RestaurantSearchState.loadingSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialSearch(),
    @required TResult loadingSearch(),
    @required TResult showSearchResult(List<Restaurants> results),
    @required TResult failedShowResult(String message),
    @required TResult emptyResult(),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return loadingSearch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialSearch(),
    TResult loadingSearch(),
    TResult showSearchResult(List<Restaurants> results),
    TResult failedShowResult(String message),
    TResult emptyResult(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingSearch != null) {
      return loadingSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialSearch(InitialSearch value),
    @required TResult loadingSearch(LoadingSearch value),
    @required TResult showSearchResult(ShowSearchResult value),
    @required TResult failedShowResult(FailedShowResult value),
    @required TResult emptyResult(EmptyResult value),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return loadingSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialSearch(InitialSearch value),
    TResult loadingSearch(LoadingSearch value),
    TResult showSearchResult(ShowSearchResult value),
    TResult failedShowResult(FailedShowResult value),
    TResult emptyResult(EmptyResult value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingSearch != null) {
      return loadingSearch(this);
    }
    return orElse();
  }
}

abstract class LoadingSearch implements RestaurantSearchState {
  const factory LoadingSearch() = _$LoadingSearch;
}

/// @nodoc
abstract class $ShowSearchResultCopyWith<$Res> {
  factory $ShowSearchResultCopyWith(
          ShowSearchResult value, $Res Function(ShowSearchResult) then) =
      _$ShowSearchResultCopyWithImpl<$Res>;
  $Res call({List<Restaurants> results});
}

/// @nodoc
class _$ShowSearchResultCopyWithImpl<$Res>
    extends _$RestaurantSearchStateCopyWithImpl<$Res>
    implements $ShowSearchResultCopyWith<$Res> {
  _$ShowSearchResultCopyWithImpl(
      ShowSearchResult _value, $Res Function(ShowSearchResult) _then)
      : super(_value, (v) => _then(v as ShowSearchResult));

  @override
  ShowSearchResult get _value => super._value as ShowSearchResult;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(ShowSearchResult(
      results == freezed ? _value.results : results as List<Restaurants>,
    ));
  }
}

/// @nodoc
class _$ShowSearchResult implements ShowSearchResult {
  const _$ShowSearchResult(this.results) : assert(results != null);

  @override
  final List<Restaurants> results;

  @override
  String toString() {
    return 'RestaurantSearchState.showSearchResult(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowSearchResult &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  $ShowSearchResultCopyWith<ShowSearchResult> get copyWith =>
      _$ShowSearchResultCopyWithImpl<ShowSearchResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialSearch(),
    @required TResult loadingSearch(),
    @required TResult showSearchResult(List<Restaurants> results),
    @required TResult failedShowResult(String message),
    @required TResult emptyResult(),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return showSearchResult(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialSearch(),
    TResult loadingSearch(),
    TResult showSearchResult(List<Restaurants> results),
    TResult failedShowResult(String message),
    TResult emptyResult(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSearchResult != null) {
      return showSearchResult(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialSearch(InitialSearch value),
    @required TResult loadingSearch(LoadingSearch value),
    @required TResult showSearchResult(ShowSearchResult value),
    @required TResult failedShowResult(FailedShowResult value),
    @required TResult emptyResult(EmptyResult value),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return showSearchResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialSearch(InitialSearch value),
    TResult loadingSearch(LoadingSearch value),
    TResult showSearchResult(ShowSearchResult value),
    TResult failedShowResult(FailedShowResult value),
    TResult emptyResult(EmptyResult value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSearchResult != null) {
      return showSearchResult(this);
    }
    return orElse();
  }
}

abstract class ShowSearchResult implements RestaurantSearchState {
  const factory ShowSearchResult(List<Restaurants> results) =
      _$ShowSearchResult;

  List<Restaurants> get results;
  @JsonKey(ignore: true)
  $ShowSearchResultCopyWith<ShowSearchResult> get copyWith;
}

/// @nodoc
abstract class $FailedShowResultCopyWith<$Res> {
  factory $FailedShowResultCopyWith(
          FailedShowResult value, $Res Function(FailedShowResult) then) =
      _$FailedShowResultCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailedShowResultCopyWithImpl<$Res>
    extends _$RestaurantSearchStateCopyWithImpl<$Res>
    implements $FailedShowResultCopyWith<$Res> {
  _$FailedShowResultCopyWithImpl(
      FailedShowResult _value, $Res Function(FailedShowResult) _then)
      : super(_value, (v) => _then(v as FailedShowResult));

  @override
  FailedShowResult get _value => super._value as FailedShowResult;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FailedShowResult(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$FailedShowResult implements FailedShowResult {
  const _$FailedShowResult(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RestaurantSearchState.failedShowResult(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailedShowResult &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FailedShowResultCopyWith<FailedShowResult> get copyWith =>
      _$FailedShowResultCopyWithImpl<FailedShowResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialSearch(),
    @required TResult loadingSearch(),
    @required TResult showSearchResult(List<Restaurants> results),
    @required TResult failedShowResult(String message),
    @required TResult emptyResult(),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return failedShowResult(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialSearch(),
    TResult loadingSearch(),
    TResult showSearchResult(List<Restaurants> results),
    TResult failedShowResult(String message),
    TResult emptyResult(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failedShowResult != null) {
      return failedShowResult(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialSearch(InitialSearch value),
    @required TResult loadingSearch(LoadingSearch value),
    @required TResult showSearchResult(ShowSearchResult value),
    @required TResult failedShowResult(FailedShowResult value),
    @required TResult emptyResult(EmptyResult value),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return failedShowResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialSearch(InitialSearch value),
    TResult loadingSearch(LoadingSearch value),
    TResult showSearchResult(ShowSearchResult value),
    TResult failedShowResult(FailedShowResult value),
    TResult emptyResult(EmptyResult value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failedShowResult != null) {
      return failedShowResult(this);
    }
    return orElse();
  }
}

abstract class FailedShowResult implements RestaurantSearchState {
  const factory FailedShowResult(String message) = _$FailedShowResult;

  String get message;
  @JsonKey(ignore: true)
  $FailedShowResultCopyWith<FailedShowResult> get copyWith;
}

/// @nodoc
abstract class $EmptyResultCopyWith<$Res> {
  factory $EmptyResultCopyWith(
          EmptyResult value, $Res Function(EmptyResult) then) =
      _$EmptyResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyResultCopyWithImpl<$Res>
    extends _$RestaurantSearchStateCopyWithImpl<$Res>
    implements $EmptyResultCopyWith<$Res> {
  _$EmptyResultCopyWithImpl(
      EmptyResult _value, $Res Function(EmptyResult) _then)
      : super(_value, (v) => _then(v as EmptyResult));

  @override
  EmptyResult get _value => super._value as EmptyResult;
}

/// @nodoc
class _$EmptyResult implements EmptyResult {
  const _$EmptyResult();

  @override
  String toString() {
    return 'RestaurantSearchState.emptyResult()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialSearch(),
    @required TResult loadingSearch(),
    @required TResult showSearchResult(List<Restaurants> results),
    @required TResult failedShowResult(String message),
    @required TResult emptyResult(),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return emptyResult();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialSearch(),
    TResult loadingSearch(),
    TResult showSearchResult(List<Restaurants> results),
    TResult failedShowResult(String message),
    TResult emptyResult(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyResult != null) {
      return emptyResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialSearch(InitialSearch value),
    @required TResult loadingSearch(LoadingSearch value),
    @required TResult showSearchResult(ShowSearchResult value),
    @required TResult failedShowResult(FailedShowResult value),
    @required TResult emptyResult(EmptyResult value),
  }) {
    assert(initialSearch != null);
    assert(loadingSearch != null);
    assert(showSearchResult != null);
    assert(failedShowResult != null);
    assert(emptyResult != null);
    return emptyResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialSearch(InitialSearch value),
    TResult loadingSearch(LoadingSearch value),
    TResult showSearchResult(ShowSearchResult value),
    TResult failedShowResult(FailedShowResult value),
    TResult emptyResult(EmptyResult value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyResult != null) {
      return emptyResult(this);
    }
    return orElse();
  }
}

abstract class EmptyResult implements RestaurantSearchState {
  const factory EmptyResult() = _$EmptyResult;
}
