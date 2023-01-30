class Quote {
  late String name;
  late String description;

  Quote({
    required this.name,
    required this.description,
  });

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      name: json['name'] ,
      description: json['description'],
    );
  }


}


