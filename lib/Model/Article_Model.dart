class Article_Model{

  final String? image;
  final String title;
  final String? subTitle; 
  final String link;
  Article_Model(this.image,this.title,this.subTitle,this.link);
  
  factory Article_Model.fromJson( json){
 return Article_Model(
        json["image"], json["title"], json["description"],json["url"]);
  }

}