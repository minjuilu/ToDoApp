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

### 1. Registration View  
![simulator_screenshot_617839C3-E6F1-4C31-A750-37D0982E6F35](https://github.com/user-attachments/assets/e9192c6c-7ddb-46f7-9d87-a4193ff87d42)

### 2. Login View
![simulator_screenshot_A2200556-0265-44C7-88E1-5F4CB2A40E3E](https://github.com/user-attachments/assets/ecd6112a-9fb0-4e48-9378-24bddb889973)

### 3. Todo List View 
![simulator_screenshot_E19D25C0-89C4-414B-9238-35B8ABE03128](https://github.com/user-attachments/assets/82cbffd1-34c7-4b5f-9e1d-a6683db259cf)

### 4. Add New Todo  
![simulator_screenshot_9BB69304-34E2-4FF2-A7D8-089D1C2780D6](https://github.com/user-attachments/assets/09ba0ad0-61f6-4454-86cc-4257c5ee503b)

### 5. Profile View
![simulator_screenshot_3B6833B3-D287-4C2F-995D-4855351E62C6](https://github.com/user-attachments/assets/75f6f5d3-25b6-46c9-ab20-79b9a10e24dd)

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
