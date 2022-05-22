class Book {
  int? id;
  String? title;
  String? author;
  String? translator;
  String? language;
  String? cover;
  int? numberOfPages;
  double? price;

  Book(
      {this.id,
      this.title,
      this.author,
      this.translator,
      this.language,
      this.cover,
      this.numberOfPages,
      this.price});

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    author = json['author'];
    translator = json['translator'];
    language = json['language'];
    cover = json['cover'];
    numberOfPages = json['number_of_pages'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['author'] = this.author;
    data['translator'] = this.translator;
    data['language'] = this.language;
    data['cover'] = this.cover;
    data['number_of_pages'] = this.numberOfPages;
    data['price'] = this.price;
    return data;
  }
}
