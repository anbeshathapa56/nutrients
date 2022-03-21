class FoodList {
  final int id;
  final String name;
  final String foodCategory;

  FoodList({required this.id, required this.name, required this.foodCategory});
  List<FoodList> foodlist() {
    return [
      FoodList(
          id: 2062064,
          name: 'Mango',
          foodCategory: 'Fruit'
      ), FoodList(
          id: 475597,
          name: 'Okra',
          foodCategory: 'Vegetable'
      ) , FoodList(
          id: 173945,
          name: 'Banana',
          foodCategory: 'Fruit'
      ),  FoodList(
          id: 1864680,
          name: 'Orange',
          foodCategory: 'Fruit'
      ),  FoodList(
          id: 1104096,
          name: 'Peanut',
          foodCategory: 'Nuts'
      ),  FoodList(
          id: 171711,
          name: 'Blueberries',
          foodCategory: 'Fruit'
      )
    ];
  }
}
