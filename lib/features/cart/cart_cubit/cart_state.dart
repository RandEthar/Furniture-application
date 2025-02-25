part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartLoading extends CartState {}

final class CartSuccess extends CartState {
  final List<FurnitureModel> listProduct;

  CartSuccess({required this.listProduct});
}

final class CartFailure extends CartState {
  final String errorMassage;

  CartFailure({required this.errorMassage});
}
