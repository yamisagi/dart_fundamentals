/*Given the following class:

class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;
}
Add some new functionality to this class so that it can be used to:

get the total number of ratings
calculate the average rating (use a for loop or the reduce operator)
Create new getter variables or methods depending on what you feel is most appropriate.*/
class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;
  int get total => ratings.length;
  double avarege() {
    if (ratings.isEmpty) {
      return 0;
    }
    return ratings.reduce((value, element) => value + element) / total;
  }
}

void main() {}
