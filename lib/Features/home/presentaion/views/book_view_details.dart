import 'package:bookley/Features/home/presentaion/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookViewDetails extends StatelessWidget {
  const BookViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDetailsViewBody()));
  }
}
