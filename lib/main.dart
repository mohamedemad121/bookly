import 'package:bookley/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookley/Features/home/presentaion/manger/featured_books_cubit/featuredbookslistview_cubit.dart';
import 'package:bookley/Features/home/presentaion/manger/newset_books_cubit/newsetbookscubit_cubit.dart';
import 'package:bookley/constant.dart';
import 'package:bookley/core/utils/app_router.dart';
import 'package:bookley/core/utils/service_lactor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLactor();

  runApp(const BookleyApp());
}

class BookleyApp extends StatelessWidget {
  const BookleyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
              //trigger
              FeaturedbookslistviewCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetbookscubitCubit(getIt.get<HomeRepoImpl>())..fetchNewsetBooks()
          
          ,
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimarycolor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
