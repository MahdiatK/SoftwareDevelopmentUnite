# Unity Chat App
A mobile chat application built using Flutter and Firebase (Cloud Firestore).

---

<p align="center">
  <img width="200" src="https://i.postimg.cc/GtXyJgkf/Unity-Logo.png">
</p>

<p align="center">
  <img width="400" height="150" alt="Daniel-Sayf-and-Mahdiat-13-12-2025 (2)" src="https://github.com/user-attachments/assets/9f72b764-22be-4db1-ab74-a14383d0f62e" />
</p>

---

## Project Overview
The unity chat app is a mobile friendly application that allows for real time messaging with friends and family. The app is devloped using flutter and firebase (cloud firestore) with a focus on simplicity, accessibility and reliable real time communication.
This project was developed as part of the software develpoment module assignment 2 and includes full documentation covering requirements analysis, UI/UX design, system risks and testing.

---

## Table of Contents
- [Reviewing Available Projects](#reviewing-available-projects)
- [Reviewing Target Audiences](#reviewing-target-audiences)
- [Overall Specification – Chat Application](#overall-specification--chat-application)
- [Features](#features)
- [Project Structure](#project-structure)
- [System Requirements](#system-requirements)
- [Game-Rules and Game-Mechanics Equivalent](#game-rules-and-game-mechanics-equivalent)
- [Potential Project Risks](#potential-project-risks)
- [Application Functions](#application-functions)
- [Aesthetics](#aesthetics)
- [Designing the Mock-ups](#designing-the-mock-ups)
- [basic pseudo code](#basic-pseudo-code)
- [Basic UML-Style Flowcharts](#basic-uml-style-flowcharts)
- [Establishing Game State](#establishing-game-state)
- [System Architecture Overview](#system-architecture-overview)
- [Testing](#testing)
- [Further Development](#further-development)
- [Contribution To The Project](#contriubtion-to-the-project)
- [Group Evaluation](#group-evaluation)
- [References](#references)

---

## Reviewing Available Projects

### Hangman
A simple, GUI multiplater game where players take turns guessing letters to reveal a hidden word, with ach incorrect guess adding to a 'hangman' drawing.

**Target audience**
- Students, casual gamers, group players  

**Considerations**
- Difficulty level, simple gameplay  
- Platform: desktop/mobile  
- Multiplayer syncing  

**Pros**
- Easy to implement  
- Suitable for all ages  

**Cons**
- Can become repetitive  
- Requires strong UI design  

---

### Hide and Seek
Players hide objects or avatars while others try to find them.

**Target audience**
- Younger players, casual groups  

**Considerations**
- Dynamic environments  
- Clear hiding areas  
- Multiplayer roles  

**Pros**
- Creative gameplay  
- Replayable  

**Cons**
- Complex development  
- Niche audience  

---

### Chat App
A simple real-time messaging app.

**Target audience**
- Social users, students, casual communication  

**Considerations**
- Security  
- User experience  
- Real-time performance  

**Pros**
- High demand  
- Many possible features  

**Cons**
- Data management complexity  
- Competitive market  

---

## Reviewing Target Audiences

### Family and Friends
Characteristics:
- Prefer a simple, friendly interface  
- Lightweight features  
- Mobile-first  

### Students
Characteristics:
- Use messaging daily  
- Need fast, simple communication  
- Prefer intuitive UI  

### Workforce Teams
Characteristics:
- Need reliability  
- Need secure messaging  
- Often require channels/permissions  

---

### Intended Primary Target Audience — Family & Friends
The project focuses on casual communication with simple UI, instant messaging, and an accessible layout.

---

### User Profile 1 — Emily
**Age:** 42  
**Occupation:** Teacher  
**Skill Level:** Basic-Moderate  

**Needs:**
- Simple interface  
- Reliable messaging  
- Notifications  
- Secure private chats  
- Small group chats  

---

### User Profile 2 — Liam
**Age:** 16  
**Occupation:** Student  
**Skill Level:** High  

**Needs:**
- Fast, responsive system  
- Modern UI  
- Reliable delivery  
- Mobile optimisation  

---

## Overall Specification – Chat Application

### Core User Requirements
- Account creation/login  
- Join global/private rooms  
- Real-time messaging  
- Online user list  
- Notifications  
- Chat history  

### Optional User Requirements
- Emojis/reactions  
- Edit/delete own messages  
- Block/mute  
- Profile customisation  

---

### Acceptance Criteria
The project succeeds if:
- Multiple users sign in simultaneously  
- Stable real-time messaging  
- Works with 100+ users  
- Loads chat history  
- Basic moderation works  

---

### High-Level Functional Specifications

### Minimum Hardware Requirements
- Android 5.0 / iOS 15  
- 1GB RAM  
- 300MB storage  
- Internet connection  

---

## Features
Includes running app screenshots with the features listed

Light/Dark mode feature:
- First identified in mock-ups
- Allows users to switch from light and dark mode through a brightness button on the settings page
- created the main feature using the following files and folders:
<img width="233" height="107" alt="image" src="https://github.com/user-attachments/assets/bf574ceb-50f5-4c42-a65d-d0a4c87a7b1d" />


---

## Project Structure

```text
lib/
├─ auth/                         # Old/legacy authentication folder (no longer used)
│                                # Kept for reference only
│
├─ brightness/                   # Handles app brightness setting (light/dark mode)
│  ├─ brightness_provider.dart   # State management for toggling brightness themes
│  ├─ dark_mode.dart             # Dark theme configuration
│  └─ light_mode.dart            # Light theme configuration
│
├─ components/                   # Reusable UI components used across the app
│  ├─ chat_bubble.dart           # UI widget for displaying chat messages
│  ├─ my_button.dart             # Custom reusable button widget
│  ├─ my_drawer.dart             # Navigation drawer widget
│  ├─ textfield.dart             # Custom text input field widget
│  └─ user_tile.dart             # Widget for displaying users in a list
│
├─ models/                       # Data models used throughout the app
│  └─ message.dart               # Message model (sender, text, timestamp, etc.)
│
├─ pages/                        # Main application screens (UI pages)
│  ├─ chat_page.dart             # Chat screen where messages are sent/received
│  ├─ home_page.dart             # Home screen after successful login
│  ├─ login_page.dart            # User login screen
│  ├─ register_page.dart         # User registration screen
│  └─ settings_page.dart         # Settings screen (brightness themes, user options)
│
├─ services/                     # Application logic and external services
│  ├─ auth_new/                  # Current authentication system (actively used)
│  │  ├─ auth_gate.dart          # Controls access based on authentication state
│  │  ├─ auth_service.dart       # Handles Firebase authentication logic
│  │  └─ login_or_register.dart  # Switches between login and register screens
│  │
│  └─ chat/                      # Chat-related backend services
│     └─ chat_service.dart       # Handles sending, receiving, and storing messages
│
├─ firebase_options.dart         # Firebase configuration (auto-generated)
│                                # Links the app to the Firebase project
│
└─ main.dart                     # Application entry point
                                 # Initializes app, theme, and authentication
```

---

## System Requirements

### Functional Requirements
- Store user accounts  
- Store messages with timestamps  
- Real-time updates  
- Multiple chat rooms  
- Track online users  
- Authentication required  

### Non-Functional Requirements
- Messages appear within 1 second  
- 99% uptime target  
- Supports 100+ users  
- Responsive UI  

---

### Human–Computer Interaction (HCI)
- Minimal UI  
- Message area centered  
- User list on side  
- Text box fixed at bottom  

### Usability
- Simple login flow  
- Clear chat bubbles  
- Different color for own vs others' messages  

### Accessibility
- Adjustable text  
- Keyboard navigation  
- High contrast mode  

### Error Handling
- Network error messages  
- Retry options  
- Offline warnings
---

## Game-Rules and Game-Mechanics Equivalent

### Game Rules
- A user must be logged in to send or receive messages
- Users can only delete their own messages
- A chat room must have at least one user to exist
- A user cannot see messages in rooms they are not part of
- Muted users’ messages will not be shown to the muting user

### System Mechanics
- Users are marked online when authenticated and connected; offline when disconnected
- Users may join or leave rooms; when joining, the last X messages are loaded from history

### Controls
- Press “Enter” to send  
- Click “Send” button  
- Join/leave room buttons  
- User settings panel  

### Non-Player Characters (NPCs Equivalent)
- “System: User123 has joined the room.”  
- “System: Message failed to send.”  
- “System: You were disconnected.”  

---

## Potential Project Risks

### Technical Architecture
The app may not be designed to handle multiple users simultaneously texting, leading to crashes, message delays, or loss of data.

### Real-Time Communication
Real-time messaging protocols may exceed the team's technical familiarity, requiring research. Poor implementation leads to unreliable communication.

### Testing and Quality Assurance
Lack of unit testing increases the number of bugs and slows development.

### Security Vulnerabilities
Weak authentication or unsafe message storage may compromise user trust and violate security standards.

### API Dependencies
Reliance on cloud services creates risks of outages, version conflicts, and performance issues.

### Integration Between Front-End and Back-End
Mismatched data formats or inconsistent API behaviour can break core functionality.

### Database Design Problems
Weak schema design can slow message retrieval or cause inconsistent data.

### Limited Deployment Knowledge
Server deployment issues may cause downtime or system instability.

---

## Application Functions

### User Account Management
- Register, login, logout  
- Profile management (username, avatar, status)

### Real-Time Messaging
- One-to-one chat  
- Group chats  
- Sending, receiving, editing, deleting messages  
- Typing indicators and read receipts  

### Chat Rooms Management
- Maintain multiple active rooms  
- Load recent chat history  

### User Presence and Online Status
- Track online users  
- Display user availability  

### Notifications
- Push notifications for new incoming messages  

### Message History
- Store and retrieve past messages  
- View previous conversations  

### Security and Access Control
- Users can only access rooms they are part of  
- Users can only edit or delete their own messages  

### User Interaction Controls
- Join or leave chat rooms  
- Manage profile and mute/block settings  

---

## Aesthetics

### Usability
The chat app includes intuitive navigation and clear visual cues, enabling users of all ages to understand how to access features and send messages.

### Feedback Style
Messages display a verification bar:
- Single bar → sent  
- Double bar → read  
If a user attempts to send an incomplete message, the app may suggest corrections.

### Basic Needs
- User avatars and usernames  
- Direct and group messages  
- Search functionality  
- Ability to view older messages  

---

## Designing the Mock-ups

### Mahdiat Drafts
<img width="363" height="197" src="https://github.com/user-attachments/assets/4dd141aa-3c17-4f51-b52b-1c7d3ee84f51" />
<img width="812" height="398" src="https://github.com/user-attachments/assets/bc8cb4a1-62c6-457a-9c26-306aeb798554" />
<img width="860" height="427" src="https://github.com/user-attachments/assets/7910fd55-b45f-48c3-afe1-534e879d2331" />
<img width="1185" height="580" src="https://github.com/user-attachments/assets/22307332-bd28-468c-9f11-761144d1b43e" />
<img width="1173" height="586" src="https://github.com/user-attachments/assets/f14a57ec-4fd9-47ae-bab2-4c135caf3d94" />
<img width="1179" height="577" src="https://github.com/user-attachments/assets/ddf4fec8-c728-458d-88ea-8b6dfee09db5" />
<img width="1183" height="574" src="https://github.com/user-attachments/assets/40890b6c-5bdf-49a7-baf7-0bef11b1c849" />
<img width="1513" height="433" src="https://github.com/user-attachments/assets/5a70f9fb-5dfa-47c4-9fa7-5174967ae46b" />

---

### Final Mockups from Mahdiat
<img width="408" height="775" src="https://github.com/user-attachments/assets/3d42b076-8bae-4080-9011-520fb1b74dcb" />
<img width="406" height="784" src="https://github.com/user-attachments/assets/60c4e149-a7c4-43dc-8497-ded3fcc581ef" />
<img width="981" height="701" src="https://github.com/user-attachments/assets/590036b4-2d7d-456b-9f6a-1ea8ccf7d7f0" />
<img width="983" height="714" src="https://github.com/user-attachments/assets/494e63ae-e7af-4db2-992a-6b0e4890b18b" />

---

### Daniel Drafts
<img width="409" height="248" src="https://github.com/user-attachments/assets/7b4e22fb-8e71-4621-a134-b5c3c60b9ad1" />
<img width="838" height="575" src="https://github.com/user-attachments/assets/dd8f488a-2fc7-4acf-b3d8-b9b6214f22ce" />
<img width="366" height="675" src="https://github.com/user-attachments/assets/9f68b7c8-9783-4e14-ae00-7af832c18621" />

---

### Final Mockups from Daniel / Storyboard
<img width="304" height="595" src="https://github.com/user-attachments/assets/09cd2323-b56a-4123-a0d3-be9508036ee4" />
<img width="299" height="588" src="https://github.com/user-attachments/assets/10306ed2-966d-41b0-a10f-e490306e58ee" />
<img width="857" height="621" src="https://github.com/user-attachments/assets/c0622307-1854-44d0-af0e-cda4774fb48a" />

---

### Sayf's Mock-ups

#### Settings Page
<img width="838" height="799" src="https://github.com/user-attachments/assets/05f09fe2-aa98-43fe-b74e-32a8611f48b9" />

#### Profile Page
<img width="794" height="747" src="https://github.com/user-attachments/assets/c44ad11e-e3f7-438d-b89c-6a5118dfa284" />

---

### Logo Link
- https://i.postimg.cc/GtXyJgkf/Unity-Logo.png  
<img width="555" height="121" src="https://github.com/user-attachments/assets/eef70440-68b2-4aa1-946a-a8ced6381c41" />

---

## basic pseudo code

### Login

function registerUser(username, password):  
&nbsp;&nbsp;&nbsp;&nbsp;if usernameExists(username):  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return "Username taken"  
&nbsp;&nbsp;&nbsp;&nbsp;hashedPassword = hash(password)  
&nbsp;&nbsp;&nbsp;&nbsp;saveToDatabase(username, hashedPassword)  
&nbsp;&nbsp;&nbsp;&nbsp;return "Registration successful"  

function loginUser(username, password):  
&nbsp;&nbsp;&nbsp;&nbsp;if !usernameExists(username):  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return "User not found"  
&nbsp;&nbsp;&nbsp;&nbsp;if compareHash(password, getStoredHash(username)):  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createSession(username)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return "Login successful"  
&nbsp;&nbsp;&nbsp;&nbsp;else:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return "Invalid credentials"  


### send messages

function sendMessage(senderID, receiverID, messageText):  
&nbsp;&nbsp;&nbsp;&nbsp;encryptedText = encrypt(messageText, receiverPublicKey)  
&nbsp;&nbsp;&nbsp;&nbsp;message = createMessageObject(senderID, receiverID, encryptedText)  
&nbsp;&nbsp;&nbsp;&nbsp;saveToDatabase(message)  
&nbsp;&nbsp;&nbsp;&nbsp;pushToReceiver(receiverID, message)  
&nbsp;&nbsp;&nbsp;&nbsp;return "Message Sent"  


### Create group chat

function createGroupChat(creatorID, memberList):  
&nbsp;&nbsp;&nbsp;&nbsp;groupID = generateGroupID()  
&nbsp;&nbsp;&nbsp;&nbsp;saveGroup(groupID, creatorID, memberList)  
&nbsp;&nbsp;&nbsp;&nbsp;notifyMembers(memberList)  
&nbsp;&nbsp;&nbsp;&nbsp;return groupID  

---

## Basic UML-Style Flowcharts

### App Logic Flowchart
<img width="2142" height="1018" src="https://github.com/user-attachments/assets/715f380e-361f-45ce-9289-089a44115f14" />

---

### Login Flow Chart
<img width="518" height="716" src="https://github.com/user-attachments/assets/79abbb37-6332-44cd-9aed-a98fb43dcecf" />

---

### Chat Screen State Flow Chart
<img width="359" height="489" src="https://github.com/user-attachments/assets/42df6081-9545-4bfb-903d-8dfd1fe338e2" />

---

### Message Sending Flow Chart
<img width="377" height="651" src="https://github.com/user-attachments/assets/454e6a0a-3633-49af-929f-6eb2da85054d" />

---

## Establishing Game State

### How states are detected
- Start state triggered when the app loads (AppDelegate / MainActivity)  
- Authentication state detected by checking if user token exists  
- Chat open state triggered by navigation (open chat ID)  
- Message events triggered by server socket/WebSocket/HTTP events  
- Error state triggered by network failure or invalid response  

### How states change
- Navigation (user taps chat → CHAT_OPEN)  
- User interactions (send message → MESSAGE_SENT)  
- Server events (incoming message → MESSAGE_RECEIVED)  
- Authentication success/failure  
- Errors and exception handling  

### State Logic
- state = "START"  
- if appOpened: state = "AUTH"  
- if loginSuccessful: state = "HOME"  
- if userSelectsChat: state = "CHAT_OPEN"  
- if userSendsMessage: state = "MESSAGE_SENT"  
- if receiveMessageEvent: state = "MESSAGE_RECEIVED"  
- if errorOccurs: state = "ERROR"  
- if userLogsOut: state = "LOGOUT"  

---

## System Architecture Overview

### Data Requirements
- UserID  
- Username  
- PasswordHash  
- Avatar (optional)  
- Status (online/offline)  

### Message Data Structure
- MessageID  
- RoomID  
- SenderID  
- Timestamp  
- MessageText  

### Constraints
- The system must support multiple active rooms  
- Only text messages (and optional emojis)  
- Must run efficiently on low-spec mobile devices  

---

## Testing
Detailed tests and results conducted in development can be found in [Testing.md](./Testing.md)

---

## Further Development
For future development we aim to complete and continue developing more of the features listed in the read me making the application more appealing and usable.

---

## Contribution To The Project
Daniel:
...
..

Sayf:
- Created Test Page on git
- Created settings and profile page mock-ups
- Created the App Logic Flowchart
- Started the programming and created the corresponding files:
- Coded the foundation (login page, light mode page, main file)
- Added image logo to login page
- Regularly Updated the read me and added new sections
- Created the project structure
- Developed and refined the unity chat UI
- Colour and styling changed for the chat bubbles
- Built theme/brightness logic
- Implemented light/dark mode feature
- Improved and fixed various UI components and providers
- Formatted read me making it more appealing and appropriate
- Completed tests and created test plan in [Testing.md](./Testing.md)
- added references and further development

Mahdiat:


--

## Group Evaluation

This was our first time working as a group together but it went very smoothly and everyone took a good portion of the workload, our communication was good as a team as we would message eachother in a unity groupchat. We was able to succesfully develop an app from mock-ups and all leaned on eachothers strengths in the group. Overall we all felt happy in our group and had fun developing the application together.

--

## References

To develop the app we chose to use Flutter framework (Dart) and Cloud Firestore (Firebase). The flutter framework is essential to build the mobile app’s interface and logic for both Android and iOS from a single codebase. Firestore is essential to store user data, messages, and real-time updates. Majority of our code is Dart with a small portion of it containing html for aesthetics
To use both of these we had to learn the basics and used the following websites:

- https://codelabs.developers.google.com/codelabs/flutter-codelab-first#1  
- https://firebase.google.com/docs/firestore  
- https://docs.flutter.dev/get-started/quick  

We also used the following YouTube channel for learning Dart via  Flutter:
- https://www.youtube.com/@createdbykoko  

