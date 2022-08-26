import 'package:get/get.dart';
import 'package:movies_app/Page/movies_page.dart';

class RouteHelper {
  static const String moviespage = '/moviespage';

  static String getMoviesPage() => '$moviespage';

  static List<GetPage> routes = [
    GetPage(
      name: moviespage,
      page: () => const MoviesPage(),
    ),
  ];
}
