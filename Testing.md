## Testing
This section documents key issues encountered during development and explains how they were resolved.

---

### File Naming Issue

An issue occurred where the application failed to run correctly due to incorrect file naming. The login page file was not being recognised properly by Flutter.

<p align="center">
  <img src="https://github.com/user-attachments/assets/49e76994-876c-43fa-bf1a-8f48889f929c" width="90%">
</p>

**Resolution:**  
The issue was resolved by renaming the login page file to use the `.dart` extension. Once corrected, the file was properly understood by Flutter and the application ran successfully.

---

### Emulator Testing (Android Studio)

Development and testing were carried out using **Android Studio** alongside an **Android phone emulator**, allowing real-time testing as features were implemented.

<p align="center">
  <img src="https://github.com/user-attachments/assets/767c0a7d-b08c-4efb-a107-e80d8f3e2004" width="90%">
</p>

This image shows the emulator setup and the current state of the application at that stage of development.

---

### Indentation & Parenthesis Errors

During development, several common syntax errors were encountered, particularly related to **incorrect indentation** and **misplaced parenthesis**, which caused the application to fail at runtime.

<p align="center">
  <img src="https://github.com/user-attachments/assets/74ddc3a8-a159-429d-9547-272c4b4b1c05" width="60%">
</p>

**Resolution:**  
- The parenthesis was repositioned so it appeared on the same line as the `colorScheme.primary` code  
- Code indentation was corrected to follow Dart conventions  
- Overall formatting was improved to make the code more readable  

The corrected version is shown below:

<p align="center">
  <img src="https://github.com/user-attachments/assets/1b8e303a-2a34-4c80-aa5d-c6a11bfe7a9a" width="60%">
</p>

---

### Username vs Email Authentication Limitation

Originally, the application aimed to allow users to log in using **usernames**. However, during testing it became clear that **Firebase Authentication** only supports **email-based authentication** by default.

<p align="center">
  <img src="https://github.com/user-attachments/assets/f71ad544-66ae-4a78-b06a-0d678a6b6bad" width="70%">
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/d97e2fe1-1a45-4d27-95f6-60569b73475a" width="45%">
  <img src="https://github.com/user-attachments/assets/9f535920-1434-4f2b-a0eb-095801926b10" width="45%">
</p>

**Outcome:**  
To ensure full functionality:
- Email addresses were used for authentication

---

## Test Plan
