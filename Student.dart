import 'Human.dart';

class Student implements Human
{
  late String _name;

  // Constructor
  Student(String name)
  {
    this._name = name;
  }

  @override
  String get name => _name;

  @override
  set name(String value) => _name = value;

  void TakeExam()
  {
    print("$_name is taking exam");
  }

  void Study()
  {
    print("$_name is studying");
  }
}