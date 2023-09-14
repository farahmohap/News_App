import 'package:flutter/material.dart';
import 'package:newsapp/widgets/categories_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

import '../widgets/AppBarNotificationIcon.dart';
import '../widgets/Search_Icon.dart';
// import 'package:newsapp/widgets/category_card.dart';
// import 'package:newsapp/widgets/news_card.dart';
//import '../widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Image.asset(
            "assetss/nn.png",
          ),
          actions: [
            AppBarSearchIcon(),
            AppBarNotificationIcon(),
          ],
          centerTitle: false,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min, //ad elcontent only
            children: [
              Text(
                "NwCld",
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 34, 33, 126),
                    fontWeight: FontWeight.bold),
              ),
              // Text(
              //   "Cloud",
              //   style: TextStyle(color: Colors.black),
              // ),
            ],
          ),
          backgroundColor: Colors.transparent),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ), // to cast any widget to sliver type
              SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              const SliverToBoxAdapter(
                  child: Text(
                "Breaking News",
                style: TextStyle(
                    color: Color.fromARGB(255, 182, 32, 9),
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              )),
              SliverToBoxAdapter(
                child: SizedBox(height: 15),
              ),
              NewsListViewBuilder(category: "general")
              // SliverToBoxAdapter(child:   NewsListView())
            ],
          )
          // Column(
          //     children: [
          //       CategoriesListView(),
          //       SizedBox(height:
          //       50),
          //       Expanded(child: NewsListView()),//expaned to Avoid exception(listview in column XXX)
          //     ],
          //   ),
          ),
    );
  }
}
