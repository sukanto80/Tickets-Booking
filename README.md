
# Ticket Manager App

A test Flutter project that demonstrates filterable ticket listings, a search screen for contacts, and a basic user profile — all built with clean code and simulated API responses.

## ✨ Features

### ✅ 1. Ticket Screen
- Displays a list of tickets using simulated data.
- Includes a **Filter** button on the top-right of the AppBar.
- Tapping the filter icon navigates to the **Filter Screen**.

### ✅ 2. Filter Screen
- Dynamically displays filter fields (like `Status`, `Priority`, `Tags`).
- Filter options are simulated as if retrieved from an API.
- Supports dynamic field rendering (some responses return 3 fields, others 5).
- UI adjusts automatically based on available filters.
- **Apply** button is only enabled when filters are selected.
- Navigates back to the **Ticket Screen** with filtered results.

### ✅ 3. Contact Screen
- A search input field to filter contacts from a simulated list.
- Dynamically updates results as the user types.
- Mimics an API search experience using local data.

### ✅ 4. Profile Screen
- Displays basic user info: **Name**, **Email**, and **Profile Picture**.
- UI layout follows a modern and clean design.


## 🛠️ Tech Stack
- **Flutter**
- Clean architecture and folder structure
- Modern UI with responsive design

## 📦 Requirements

- Flutter **3.10+**
- Dart **3+**
- Internet permission

## 💡 Notes

- This project was created for a developer test and focuses on UI/UX, basic logic, and clean structure.
- Easily extendable with real API integration and state management like **GetX**, **Provider**, or **Bloc**.

---

## 🧑‍💻 Author

**Sukanto Mukherjee**  
Flutter Developer  
Jahangirnagar University – IIT


## 📸 Screenshots

### 🏠 Home Screen
![Home Screen](assets/Screenshots/1.jpg)

### 📄 Product Detail Page
![Product Detail](assets/Screenshots/2.jpg)
### 📄 Search Page
![Product Detail](assets/Screenshots/3.jpg)
### 📄 Category Product Page
![Product Detail](assets/Screenshots/4.jpg)

