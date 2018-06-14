void main() {
  final cat = new Cat();
  final list = [cat];

  final newList = filter(list)
      ..add(new Animal())
      ..add(new BlackCat());

  print(list);
}

List<Animal> filter(List<Animal> input){ return input; }

class Animal {}

class Cat implements Animal {}

class BlackCat implements Cat {}
