import 'package:bookley/Features/home/presentaion/manger/featured_books_cubit/featuredbookslistview_cubit.dart';
import 'package:bookley/Features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookley/core/widgets/custom_err.dart';
import 'package:bookley/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbookslistviewCubit, FeaturedbookslistviewState>(
      builder: (context, state) {
        if (state is FeaturedbookslistviewSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              physics: BouncingScrollPhysics(),

              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedbookslistviewFailure) {
          return CustomErr(errMessege: state.errormessege);
        } else {
          return CustomLoadingIndecator();
        }
      },
    );
  }
}
