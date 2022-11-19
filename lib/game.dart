class Game {

  final String path;
  final String name;
  final int price;
  final String description;
  final int tqe;

  Game(this.path, this.name, this.price, this.description, this.tqe);

  @override
  String toString() {
    return 'Game{path: $path, name: $name, price: $price, description: $description, tqe: $tqe}';
  }
}