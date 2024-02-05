class Event {
  String title;
  String description;
  String image;
  bool? isFirst;
  bool? isLast;
  

  Event({
    required this.title,
    required this.description,
    required this.image,
    this.isFirst,
    this.isLast,
  });  
}