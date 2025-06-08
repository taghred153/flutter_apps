class RandomUserModel
{
  List<Map<String, dynamic>> results;
  RandomUserModel({required this.results});
  factory RandomUserModel.fromjson(Map<String, dynamic> json)
  {
    var userslist = List<Map<String, dynamic>>.from(json["results"]);
    return RandomUserModel(
      results: userslist,
    );
  }
}