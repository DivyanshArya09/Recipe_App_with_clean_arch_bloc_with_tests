part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeInitialEvent extends HomeEvent {
  final String category;
  final int id;
  final String menuItem;
  final int numberOfMenuItemsYouWant;
  final List<NutrientModel> nutrients;

  // final List<String> ingredients;

  const HomeInitialEvent({
    required this.category,
    required this.id,
    required this.menuItem,
    required this.numberOfMenuItemsYouWant,
    required this.nutrients,
  });
  @override
  List<Object> get props => [];
}
