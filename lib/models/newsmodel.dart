class NewsModel{
  List<Map<String, dynamic>> articles;
  String status;
  NewsModel({required this.articles, required this.status});

  factory NewsModel.fromjson(Map<String,dynamic> json){
    return NewsModel(
      articles: List<Map<String, dynamic>>.from(json["articles"]),
      status: json["status"],
    );
  }
}