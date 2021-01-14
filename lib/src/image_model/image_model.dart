class ImageModel {
  String url;
  String title;
  int id;

  ImageModel(this.url, this.title, this.id);

  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
