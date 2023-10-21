class SearchModel {
  var title;
  var author;
  SearchModel({
    required this.title,
    required this.author,
  });

  factory SearchModel.fromJson(Map<dynamic, dynamic> json) {
    return SearchModel(
      title: json['title'],
      author: json['author'],
    );
  }
}
