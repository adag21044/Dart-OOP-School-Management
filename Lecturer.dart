import 'Human.dart';
import 'Student.dart';
import 'IExamMaker.dart';

class Lecturer implements IExamMaker, Human 
{
  late String _name;

  // Constructor
  Lecturer(String name)
  {
    this._name = name;
  }

  @override
  String get name => _name;

  @override
  set name(String value) => _name = value;

  void PrepareLecture() 
  {
    print("Lecturer $_name is preparing lecture");
  }

  @override
  void MakeExam(Student student) 
  {
    print("Lecturer is making exam for student ${student.name}");
  }
}