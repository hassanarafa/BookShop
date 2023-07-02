part of 'newest_book_cubit.dart';

abstract class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

class NewestBookInitial extends NewestBookState {}

class NewestBookloading extends NewestBookState {}

class NewestBookSuccess extends NewestBookState {
  final List<Item> items;

  const NewestBookSuccess(this.items);
}

class NewestBookFailure extends NewestBookState {
  final String errormessage;

  const NewestBookFailure(this.errormessage);
}
