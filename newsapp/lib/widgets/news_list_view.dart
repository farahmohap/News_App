import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/news_card.dart';
//import 'package:newsapp/widgets/news_card.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});


  // bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsCard(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
     
  }
}

/*return 


FutureBuilder(
        future: NewsServices(Dio()).getNews(),
        builder: (context, snapshot) {
          return NewsListView(articles: snapshot.data ?? []);
        });







isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())): SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 22.0),
          child: NewsCard(
            articleModel: articles[index],
          ),
        );
      },
    ));
  } */