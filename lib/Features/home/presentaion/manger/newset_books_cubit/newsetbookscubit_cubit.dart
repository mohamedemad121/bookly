import 'package:bloc/bloc.dart';
import 'package:bookley/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookley/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newsetbookscubit_state.dart';

class NewsetbookscubitCubit extends Cubit<NewsetbookscubitState> {
  NewsetbookscubitCubit(this.homeRepo) : super(NewsetbookscubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetbookscubitLoading());

    var result = await homeRepo.fetchNewsetBooks();

    result.fold(
      (failure) {
        emit(NewsetbookscubitFailure(failure.errMessege));
      },
      (books) {
        emit(NewsetbookscubitSuccses(books));
      },
    );
  }
}
