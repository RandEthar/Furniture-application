part of 'wishlist_cubit.dart';

@immutable
sealed class WishlistState {}

final class WishlistInitial extends WishlistState {}
final class ToggelfavoriteSuccess  extends WishlistState {}
final class ToggelfavoriteLoading extends WishlistState {}
final class FeatchWishlistLoading extends WishlistState {}

final class FeatchWishlistSuccess extends WishlistState {
  final List<FurnitureModel> productList;

  FeatchWishlistSuccess({required this.productList});
}
final class FeatchWishlistFailure extends WishlistState {
  final String errorMassage;

  FeatchWishlistFailure({required this.errorMassage});


}