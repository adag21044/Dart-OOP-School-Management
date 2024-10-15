import 'Human.dart';
import 'Lecturer.dart';
import 'Student.dart';

class Secretary implements Human
{
  List<Lecturer> lecturers = [];
  List<Student> students = [];

  late String _name;

  Secretary(String name)
  {
    this._name = name;
  }

  @override
  String get name => _name;

  @override
  set name(String value) => this._name = value;

  void AddLecturer(Lecturer lecturer)
  {
      print("Adding lecturer ${lecturer.name}");
      lecturers.add(lecturer);
  }

  void AddStudent(Student student)
  {
      print("Adding student ${student.name}");
      students.add(student);
  }
}