// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorite_button_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoriteButtonStateTearOff {
  const _$FavoriteButtonStateTearOff();

// ignore: unused_element
  InitialButton initialButton() {
    return const InitialButton();
  }

// ignore: unused_element
  IsRestaurantFavorite isRestaurantFavorite(bool favorite) {
    return IsRestaurantFavorite(
      favorite,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavoriteButtonState = _$FavoriteButtonStateTearOff();

/// @nodoc
mixin _$FavoriteButtonState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialButton(),
    @required TResult isRestaurantFavorite(bool favorite),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialButton(),
    TResult isRestaurantFavorite(bool favorite),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialButton(InitialButton value),
    @required TResult isRestaurantFavorite(IsRestaurantFavorite value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialButton(InitialButton value),
    TResult isRestaurantFavorite(IsRestaurantFavorite value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FavoriteButtonStateCopyWith<$Res> {
  factory $FavoriteButtonStateCopyWith(
          FavoriteButtonState value, $Res Function(FavoriteButtonState) then) =
      _$FavoriteButtonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteButtonStateCopyWithImpl<$Res>
    implements $FavoriteButtonStateCopyWith<$Res> {
  _$FavoriteButtonStateCopyWithImpl(this._value, this._then);

  final FavoriteButtonState _value;
  // ignore: unused_field
  final $Res Function(FavoriteButtonState) _then;
}

/// @nodoc
abstract class $InitialButtonCopyWith<$Res> {
  factory $InitialButtonCopyWith(
          InitialButton value, $Res Function(InitialButton) then) =
      _$InitialButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialButtonCopyWithImpl<$Res>
    extends _$FavoriteButtonStateCopyWithImpl<$Res>
    implements $InitialButtonCopyWith<$Res> {
  _$InitialButtonCopyWithImpl(
      InitialButton _value, $Res Function(InitialButton) _then)
      : super(_value, (v) => _then(v as InitialButton));

  @override
  InitialButton get _value => super._value as InitialButton;
}

/// @nodoc
class _$InitialButton implements InitialButton {
  const _$InitialButton();

  @override
  String toString() {
    return 'FavoriteButtonState.initialButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialButton(),
    @required TResult isRestaurantFavorite(bool favorite),
  }) {
    assert(initialButton != null);
    assert(isRestaurantFavorite != null);
    return initialButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialButton(),
    TResult isRestaurantFavorite(bool favorite),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialButton != null) {
      return initialButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialButton(InitialButton value),
    @required TResult isRestaurantFavorite(IsRestaurantFavorite value),
  }) {
    assert(initialButton != null);
    assert(isRestaurantFavorite != null);
    return initialButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialButton(InitialButton value),
    TResult isRestaurantFavorite(IsRestaurantFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialButton != null) {
      return initialButton(this);
    }
    return orElse();
  }
}

abstract class InitialButton implements FavoriteButtonState {
  const factory InitialButton() = _$InitialButton;
}

/// @nodoc
abstract class $IsRestaurantFavoriteCopyWith<$Res> {
  factory $IsRestaurantFavoriteCopyWith(IsRestaurantFavorite value,
          $Res Function(IsRestaurantFavorite) then) =
      _$IsRestaurantFavoriteCopyWithImpl<$Res>;
  $Res call({bool favorite});
}

/// @nodoc
class _$IsRestaurantFavoriteCopyWithImpl<$Res>
    extends _$FavoriteButtonStateCopyWithImpl<$Res>
    implements $IsRestaurantFavoriteCopyWith<$Res> {
  _$IsRestaurantFavoriteCopyWithImpl(
      IsRestaurantFavorite _value, $Res Function(IsRestaurantFavorite) _then)
      : super(_value, (v) => _then(v as IsRestaurantFavorite));

  @override
  IsRestaurantFavorite get _value => super._value as IsRestaurantFavorite;

  @override
  $Res call({
    Object favorite = freezed,
  }) {
    return _then(IsRestaurantFavorite(
      favorite == freezed ? _value.favorite : favorite as bool,
    ));
  }
}

/// @nodoc
class _$IsRestaurantFavorite implements IsRestaurantFavorite {
  const _$IsRestaurantFavorite(this.favorite) : assert(favorite != null);

  @override
  final bool favorite;

  @override
  String toString() {
    return 'FavoriteButtonState.isRestaurantFavorite(favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsRestaurantFavorite &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favorite);

  @JsonKey(ignore: true)
  @override
  $IsRestaurantFavoriteCopyWith<IsRestaurantFavorite> get copyWith =>
      _$IsRestaurantFavoriteCopyWithImpl<IsRestaurantFavorite>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialButton(),
    @required TResult isRestaurantFavorite(bool favorite),
  }) {
    assert(initialButton != null);
    assert(isRestaurantFavorite != null);
    return isRestaurantFavorite(favorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialButton(),
    TResult isRestaurantFavorite(bool favorite),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isRestaurantFavorite != null) {
      return isRestaurantFavorite(favorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialButton(InitialButton value),
    @required TResult isRestaurantFavorite(IsRestaurantFavorite value),
  }) {
    assert(initialButton != null);
    assert(isRestaurantFavorite != null);
    return isRestaurantFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialButton(InitialButton value),
    TResult isRestaurantFavorite(IsRestaurantFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isRestaurantFavorite != null) {
      return isRestaurantFavorite(this);
    }
    return orElse();
  }
}

abstract class IsRestaurantFavorite implements FavoriteButtonState {
  const factory IsRestaurantFavorite(bool favorite) = _$IsRestaurantFavorite;

  bool get favorite;
  @JsonKey(ignore: true)
  $IsRestaurantFavoriteCopyWith<IsRestaurantFavorite> get copyWith;
}
