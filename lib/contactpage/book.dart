class Book {
  final int id;
  final String Name;
  final int callnumber;
  final String urlImage;
  final int whatsapp;


  const Book({
    this.id,
    this.callnumber,
    this.Name,
    this.urlImage,
    this.whatsapp,

  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json['id'],
        callnumber: json['callnumber'],
        Name: json['Name'],
        urlImage: json['urlImage'],
        whatsapp: json['whatsapp'],


      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'Name': Name,
        'callnumber': callnumber,
        'urlImage': urlImage,
        'whatsapp': whatsapp,
      };
}
