import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=83e3e70c195d420c9c9b826b652dc93b&country=us&category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article["urlToImage"],
            Title: article["title"],
            subTitle: article["description"]);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
    //print(articlesList);
  }

  // void getHttp() async {
  //   final response = await dio.get(
  //       'https://newsapi.org/v2/top-headlines?country=us&apiKey=83e3e70c195d420c9c9b826b652dc93b');
  //   print(response.statusCode);
  // }
}
