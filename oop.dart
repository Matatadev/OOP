abstract class Animal {
  void makeSound();
}class Cow implements Animal {
  late String name;
  late String color;

  Cow.fromFile(String filename) {
    List<String> data = File(filename).readAsLinesSync();
    name = data[0];
    color = data[1];
  }

  @override
  void makeSound() {
    print("Moo");
  }

  void eatGrass(int amount) {
    for (int i = 0; i < amount; i++) {
      print("$name is eating grass...");
    }
  }
}


void main() {
  
  Cow cow = Cow();

  
  cow.name = "Bessie";
  cow.color = "Black";

  
  print("${cow.name} says:");
  cow.makeSound();

  cow.eatGrass(3);

  Cow cowFromFile = Cow.fromFile("cow_data.txt");
  print("Created cow from file:");
  print("Name: ${cowFromFile.name}, Color: ${cowFromFile.color}");
}
