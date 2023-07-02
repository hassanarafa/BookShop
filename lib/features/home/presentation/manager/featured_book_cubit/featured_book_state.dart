part of 'featured_book_cubit.dart';

abstract class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

class FeaturedBookCubitInitial extends FeaturedBookState {}

class FeaturedBookCubitloading extends FeaturedBookState {}

class FeaturedBookCubitsuccess extends FeaturedBookState {
  final List<Item> items;

  const FeaturedBookCubitsuccess(this.items);
}

class FeaturedBookCubitfailure extends FeaturedBookState {
  final String errormessage;

  const FeaturedBookCubitfailure(this.errormessage);
}
