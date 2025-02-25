part of 'details_cubit.dart';

@immutable
sealed class DetailsState {}
final class DetailsInitial extends DetailsState {}
final class AddToFavoritsSuccess extends DetailsState {}
final class  AddToFavoritsLoading extends DetailsState {}
final class AddToCartSuccess extends DetailsState {}
final class  AddToCartLoading extends DetailsState {}