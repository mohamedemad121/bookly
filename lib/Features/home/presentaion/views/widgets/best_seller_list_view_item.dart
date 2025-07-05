import 'package:bookley/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookley/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookley/Features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookley/constant.dart';
import 'package:bookley/core/utils/app_router.dart';
import 'package:bookley/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookmodel});
final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
           CustomBookImage(imageUrl: bookmodel.volumeInfo.imageLinks.thumbnail),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                     bookmodel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    bookmodel.volumeInfo.authors![0]
                    ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(
                        rating: bookmodel.volumeInfo.averageRating?? 0,
                        count: bookmodel.volumeInfo.ratingsCount?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
