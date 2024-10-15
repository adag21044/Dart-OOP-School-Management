import 'Lecturer.dart';
import 'Secretary.dart';
import 'Student.dart';

class Main 
{
  void run()
  {
    // Creating instances of students
    Student student = Student("Billy Butcher");
    Student student2 = Student("Hughie Campbell");
    Student student3 = Student("Kimiko Miyashiro");

    // Creating an instance of secretary
    Secretary secretary = Secretary("Ashley Barrett");

    // Creating an instance of lecturer
    Lecturer lecturer = Lecturer("Grace Mallory");
    
    secretary.AddStudent(student);
    secretary.AddStudent(student2);
    secretary.AddStudent(student3);

    // Students studying
    for (var student in secretary.students)
    {
      student.Study();
    }

    // Adding lecturer
    secretary.AddLecturer(lecturer);

    // Lecturer preparing lecture
    for (var lecturer in secretary.lecturers)
    {
      lecturer.PrepareLecture();
    }

    // Making exam for students
    for(var student in secretary.students)
    {
      lecturer.MakeExam(student);
      student.TakeExam();
    }
  }
}

void main()
{  
  Main app = Main();
  app.run();
}

