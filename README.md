# Flutter Buttons & Navigation Assignment

A multi-screen Flutter application built to demonstrate Material Design 3 button variants, custom styling, and navigation stack management using Flutter's `Navigator`.

---

## 📌 Project Overview

This project satisfies the practical requirements for the Flutter Buttons & Navigation assignment. It showcases a structured application flow starting from an authentication screen, leading to a comprehensive Button Gallery, and demonstrating various screen navigation methods across multiple distinct views.

---

## ✨ Features & Capabilities

### 1. Material 3 Button Variants
- **Elevated Button**: Default elevated Material button.
- **Filled Button**: Primary filled container button.
- **Filled Tonal Button**: Secondary tonal fill variant.
- **Outlined Button**: Bordered action button.
- **Text Button**: Borderless text variant for low-emphasis actions.
- **Icon Button**: Standalone clickable icon with touch feedback.
- **Compound Button**: Button with leading icon (`ElevatedButton.icon`).
- **Floating Action Button**: Extended FAB positioned on the Scaffold.
- **Custom Styled Button**: Decorated container with custom linear gradients, border radius, and box shadows.

### 2. Navigation Techniques
- **`Navigator.push()`**: Direct route transition to `ProfileScreen`.
- **`Navigator.pop()`**: Pops the top route from the stack to return to the previous screen.
- **`Navigator.pushReplacementNamed()`**: Replaces the `LoginScreen` in the navigation stack with `ButtonGalleryScreen` upon authentication, preventing users from navigating back to login via the system back button.
- **Named Routes**: Centralized route registry configured inside `MaterialApp` (`'/'`, `'/buttons'`, `'/profile'`, `'/details'`, `'/settings'`).

---

## 📱 Screen Flow & Architecture

```text
               LOGIN SCREEN ('/')
                       │
             (pushReplacementNamed)
                       │
                       ▼
            BUTTON GALLERY ('/buttons')
            ┌──────────┼──────────┐
            │          │          │
         (push)   (pushNamed) (pushNamed)
            │          │          │
            ▼          ▼          ▼
         PROFILE    DETAILS    SETTINGS
         (pop)      (pop)      (pop)
            │          │          │
            └──────────┴──────────┘
                       │
                       ▼
            BUTTON GALLERY ('/buttons')