class Item {
  int id;
  String name;
  String description;
  String image;
  double rating;
  int ratingCount;
  double price;
  int color;
  List<String> vitamins;
  List<String> ingrediants;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.rating,
    required this.ratingCount,
    required this.price,
    required this.color,
    required this.vitamins,
    required this.ingrediants,
  });
}

List<Item> demoItems = [
  Item(
    id: 1,
    name: 'Fruit soup',
    description: "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/1.png',
    rating: 4.5,
    ratingCount: 565,
    price: 3.50,
    color: 0xFFFFE3E3,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: ['assets/icons/ingredient1.svg', 'assets/icons/ingredient2.svg', 'assets/icons/ingredient3.svg', 'assets/icons/ingredient4.svg']
  ),
  Item(
    id: 2,
    name: 'Salad',
    description: "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/2.png',
    rating: 4.5,
    ratingCount: 465,
    price: 2,
    color: 0xFF80985C,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: ['assets/icons/ingredient1.svg', 'assets/icons/ingredient2.svg', 'assets/icons/ingredient3.svg', 'assets/icons/ingredient4.svg']
  ),
  Item(
    id: 3,
    name: 'Salmon',
    description: "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/3.png',
    rating: 4.5,
    ratingCount: 365,
    price: 15,
    color: 0xFF253B4A,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: ['assets/icons/ingredient1.svg', 'assets/icons/ingredient2.svg', 'assets/icons/ingredient3.svg', 'assets/icons/ingredient4.svg']
  ),
  Item(
    id: 4,
    name: 'Burger',
    description: "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/4.png',
    rating: 4.5,
    ratingCount: 165,
    price: 6.5,
    color: 0xFFB79161,
    vitamins: ['vitamin A', 'vitamin C', 'vitamin K'],
    ingrediants: ['assets/icons/ingredient1.svg', 'assets/icons/ingredient2.svg', 'assets/icons/ingredient3.svg', 'assets/icons/ingredient4.svg']
  ),
];