
import 'package:bookley/Features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:bookley/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookley/Features/home/presentaion/views/widgets/features_list_view.dart';
import 'package:bookley/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const CustomAppBar(),
              ),
              FeaturesBooksListView(),
              SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const BestSellerListView(
              
            ),
           
          ),
        ),
      ],
    );
  }
}
