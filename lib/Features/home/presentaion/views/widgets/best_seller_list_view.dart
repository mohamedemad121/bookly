
import 'package:bookley/Features/home/presentaion/manger/newset_books_cubit/newsetbookscubit_cubit.dart';
import 'package:bookley/Features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:bookley/core/widgets/custom_err.dart';
import 'package:bookley/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetbookscubitCubit, NewsetbookscubitState>(
      builder: (context, state) {
        if (state is NewsetbookscubitSuccses) {
  return ListView.builder(
    padding: EdgeInsets.zero,
    itemCount: state.books.length,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BookListViewItem(
      bookmodel:     state.books[index]
        ),
      );
    },
  );
}else if (state is NewsetbookscubitFailure){
  return CustomErr(errMessege: state.errMessege);
}else{
  return CustomLoadingIndecator();
}
      },
    );
  }
}
