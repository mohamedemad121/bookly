import 'package:bookley/Features/home/presentaion/views/widgets/book_action.dart';
import 'package:bookley/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookley/Features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookley/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: "https://covers.openlibrary.org/b/id/8369251-L.jpg",
          ),
        ),
        SizedBox(height: 43),
        Text('The Jungle Book', style: Styles.textStyle30),
        SizedBox(height: 6),
        Opacity(
          opacity: .7,

          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 18),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 5,
          count: 250,
        ),
        SizedBox(height: 38),
        BookAction(),
      ],
    );
  }
}
