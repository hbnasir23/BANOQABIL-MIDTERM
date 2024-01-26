// MID TERM BANO QABIL 2.0
// Q2
// Create a class called "Student" with the following attributes and methods:
// ● name (string)
// ● id (string)
// ● courses (list of strings)
// ● add_course(course): adds a course to the student's list of courses.
// ● drop_course(course): removes a course from the student's list of courses.
// ● display_courses(): prints out the student's list of courses.
// Then, create two instances of the Student class, each with their name, id, and courses.
// Finally, call the add_course(), drop_course(), and display_courses() methods on each
// instance and confirm that the information is updated and displayed correctly.

class Student {
  String name;
  String id;
  List<String> courses;

  // Constructor...!
  Student({required this.name, required this.id, required this.courses});

  // Methods...!
  void add_course(String course) {
    courses.add(course);
    print("$course added to ${name}'s courses.");
    }

  void drop_course(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      print("$course dropped from ${name}'s courses.");
      }
    else {
      print('${name} is not enrolled in $course.');
      }
      }

  void display_courses() {
    print("${name}'s Courses:");
    int no = 1;
    for (String course in courses) {
      print('Course#$no => $course');
      no++;
    }
    print('');
  }
}

void main() {
  Student student1 = Student(name: 'Haris Bin Nasir', id: 'A123', courses: ['Calculus', 'Pak. Studies', 'Russian']);
  Student student2 = Student(name: 'Umar Farooq Jawaid', id: 'B456', courses: ['Biology', 'Islamiat', 'Japanese']);

  student1.display_courses();
  student1.add_course('Programming Fundamentals');
  student1.drop_course('Pak. Studies');
  student1.display_courses();

  student2.display_courses();
  student2.add_course('Discrete Structures');
  student2.drop_course('Biology');
  student2.display_courses();
}
