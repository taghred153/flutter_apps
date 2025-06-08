import 'package:flutter/material.dart';
import 'package:flutter_apps/providers/newsprovider.dart';
import 'package:flutter_apps/widgets/newswidget.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
      ),
      body: Consumer<NewsProvider>(
          builder: (context, value, child) {
            var newss= value.newsModel;
            if(newss == null){
              value.fetchdata();
              return Center(child: CircularProgressIndicator());
            }else {
              return ListView.separated(
                itemBuilder: (context, index) =>
                    NewsWidget(
                      urlToImage: newss.articles[index]["urlToImage"],
                      title: newss.articles[index]["title"],
                      description: newss.articles[index]["description"],
                    ),
                separatorBuilder: (context, index) => Divider(),
                itemCount: 10,
              );
            }
          }
      ),
    );
  }
}
