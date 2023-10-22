import 'package:booklyy/constants.dart';
import 'package:booklyy/core/utils/app_router.dart';
import 'package:booklyy/core/utils/service_locator.dart';
import 'package:booklyy/features/home/data/repos/home_repo_impl.dart';
import 'package:booklyy/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyy/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const Booklyy());
}
class Booklyy extends StatelessWidget {
  const Booklyy({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        ));
  }
}
