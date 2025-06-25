
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

## 🎫 Tickets
![Tickets](https://raw.githubusercontent.com/sukanto80/Tickets-Booking/main/assets/Screenshorts/1.jpg)

## 📄 Filter
![Filter](https://raw.githubusercontent.com/sukanto80/Tickets-Booking/main/assets/Screenshorts/2.jpg)

## 📇 Contacts
![Contacts](https://raw.githubusercontent.com/sukanto80/Tickets-Booking/main/assets/Screenshorts/3.jpg)

## 👤 Profile
![Profile](https://raw.githubusercontent.com/sukanto80/Tickets-Booking/main/assets/Screenshorts/4.jpg)
