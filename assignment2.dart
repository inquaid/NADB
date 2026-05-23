import 'dart:io';

void main() {
  final List<Map<String, dynamic>> students = [
    {'name': 'Shafiqur', 'score': 89},
    {'name': 'Nadia', 'score': 92},
  ];

  bool isRunning = true;

  while (isRunning) {
    print('\n=== STUDENT MANAGER ===');
    print('1. Add Student / Change Score');
    print('2. See All Students');
    print('3. Delete Student');
    print('4. Quit');
    stdout.write('Choose an option (1-4): ');
    
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter student name: ');
        String? name = stdin.readLineSync();
        if (name == null || name.trim().isEmpty) {
          print('Invalid name.');
          break;
        }

        stdout.write('Enter student score: ');
        String? scoreInput = stdin.readLineSync();
        int score = int.tryParse(scoreInput ?? '') ?? 0;

        bool found = false;
        for (var student in students) {
          if (student['name'].toString().toLowerCase() == name.toLowerCase()) {
            student['score'] = score; // Update score
            print('Updated $name\'s score to $score.');
            found = true;
            break;
          }
        }

        if (!found) {
          students.add({'name': name, 'score': score});
          print('Added new student: $name with score $score.');
        }
        break;

      case '2':
        if (students.isEmpty) {
          print('No student data available.');
        } else {
          print('\n--- Student Records ---');
          for (var student in students) {
            print('Name: ${student['name']}, Score: ${student['score']}');
          }
        }
        break;

      case '3':
        stdout.write('Enter the name of the student to delete: ');
        String? nameToDelete = stdin.readLineSync();

        int originalLength = students.length;
        students.removeWhere((student) => 
          student['name'].toString().toLowerCase() == nameToDelete?.toLowerCase().trim()
        );

        if (students.length < originalLength) {
          print('$nameToDelete has been deleted.');
        } else {
          print('Student not found.');
        }
        break;

      case '4':
        print('Exiting program. Goodbye!');
        isRunning = false; 
        break;

      default:
        print('Invalid option. Please enter a number between 1 and 4.');
    }
  }
}