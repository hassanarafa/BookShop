import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/bookmodel/item.dart';
import '../../../data/repo/homerepo.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(NewestBookloading());
    var books = await homeRepo.fetchFeaturedBos();
    books.fold((failure) {
      emit(NewestBookFailure(failure.errormessage));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}
