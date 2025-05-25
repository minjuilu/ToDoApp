# ToDoApp 📆

A simple and practical iOS To-Do List application built with Swift and Firebase.  
Users can register, log in, and manage their personal tasks by creating, viewing, editing, and deleting to-dos easily.

---

## Features

- **User Registration & Authentication**  
  Secure account creation and login using Firebase Authentication with email and password.
  
- **Input Validation**  
  Basic validation on user input fields such as name, email format, and password length.
  
- **Task Management**  
  Create, view, update, and delete personal to-do tasks stored in Firebase Firestore.
  
- **Error Handling**  
  User-friendly error messages for registration and login issues (e.g., duplicate emails, invalid inputs).
  
- **Cloud Database Integration**  
  Firestore is used for real-time and persistent storage of user data.

---

## Project First Look


---

## Technology Stack

- Swift 5+  
- Firebase Authentication  
- Firebase Firestore  
- Xcode 14+  
- iOS 14+ compatible

---

## Getting Started

### Prerequisites

- Xcode installed on macOS  
- Firebase project setup with Authentication and Firestore enabled  
- `GoogleService-Info.plist` downloaded from Firebase Console  

### Installation & Running

1. Clone the repository:
   ```
   git clone https://github.com/minjuilu/ToDoApp.git
   cd ToDoApp

2. Open the project in Xcode:
```
open ToDoApp.xcodeproj
```

3. Add the GoogleService-Info.plist file to the project.

4. Build and run the app on the simulator or a physical iOS device.

## Future Improvements
- Add task categorization and tagging
- Implement push notifications and reminders
- Enhance UI/UX design for better user engagement
- Support social logins (Google, Facebook, etc.)
