class Category {
  int id;
  String name;
  String icon;

  Category({
    required this.id,
    required this.name,
    required this.icon
  });
}

List<Category> demoCategories = [
    Category(
      id: 1,
      name: 'Foods',
      icon: 'assets/icons/food.svg'
    ),
    Category(
      id: 2,
      name: 'Drinks',
      icon: 'assets/icons/drinks.svg'
    ),
    Category(
      id: 3,
      name: 'Fruits',
      icon: 'assets/icons/fruit.svg'
    ),
    Category(
      id: 4,
      name: 'Vegetables',
      icon: 'assets/icons/vege.svg'
    ),
  ];