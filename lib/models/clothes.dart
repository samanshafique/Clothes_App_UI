 class Clothes{
 String title;
 String subtitle;
String price;
String imageUrl;
 List <String> detailedUrl;


 Clothes(this.title,this.subtitle,this.price,this.imageUrl,this.detailedUrl);

// ignore: empty_constructor_bodies
static List<Clothes> generateClothes(){
  return[
Clothes('Gucci Oversize', 'Hoodie', '\$12.32', 'assests/images/arrival1.png', ['assests/images/arrival1.png','assests/images/detail2.png']),
Clothes('Man Coat', 'Rain Jacket', '\$50.55', 'assests/images/arrival2.png', ['assests/images/arrival2.png','assests/images/detail3.png'])
  ];
}
}