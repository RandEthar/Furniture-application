part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeDataSuccess extends HomeState {
  final List<FurnitureModel> listProduct;

  HomeDataSuccess({required this.listProduct});
}

final class HomeDataLoading extends HomeState {}

final class HomeDataFailure extends HomeState {
  final String errorMassage;

  HomeDataFailure({required this.errorMassage});
}
