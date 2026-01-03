class CategoryModel{
  String image ;
  String category;
  CategoryModel({required this.image,required this.category});
}

List<CategoryModel> item = [
  CategoryModel(
      image:"assets/images/fashion.png",
      category: "موضة رجالي"
  ),
  CategoryModel(
      image:"assets/images/watches.png",
      category: "ساعات"
  ),
  CategoryModel(
      image:"assets/images/mobiles.png",
      category: "موبايلات"
  ),
  CategoryModel(
      image:"assets/images/cosmo.png",
      category: "منتجات تجميل"
  ),
];

