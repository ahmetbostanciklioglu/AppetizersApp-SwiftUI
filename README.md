<div align="center">

# 🍿 Appetizers

**A SwiftUI food-ordering app with a browsable menu, cart, and account profile.**

[![Platform](https://img.shields.io/badge/Platform-iOS-000000?style=flat-square&logo=apple)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5.0-FA7343?style=flat-square&logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-0071e3?style=flat-square&logo=swift&logoColor=white)](https://developer.apple.com/xcode/swiftui/)
[![Xcode](https://img.shields.io/badge/Xcode-16-1575F9?style=flat-square&logo=xcode&logoColor=white)](https://developer.apple.com/xcode/)
[![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/AppetizersApp-SwiftUI?style=flat-square&color=6E48AA)](https://github.com/ahmetbostanciklioglu/AppetizersApp-SwiftUI/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/AppetizersApp-SwiftUI?style=flat-square&color=4776E6)](https://github.com/ahmetbostanciklioglu/AppetizersApp-SwiftUI/commits)

</div>

## 📖 Overview

Appetizers is an iOS app built entirely with SwiftUI that lets users browse a menu of appetizers, view item details, and build an order. Appetizers are fetched from a remote REST API using Swift's modern `async/await` concurrency, and images are downloaded on demand with in-memory caching. The app follows the MVVM pattern with a tab-based interface for the menu, the current order, and a persisted account profile.

## ✨ Features

- **Menu list** — fetches appetizers from a remote API with `async/await` and displays them in a scrollable list.
- **Item detail** — tap an appetizer for a blurred-background detail card showing description, calories, protein, and carbs.
- **Order & cart** — add items to an order, swipe to delete, and see a running total price plus a tab-bar badge with the item count.
- **Account profile** — a validated form (name, email, birthday, preference toggles) persisted locally via `@AppStorage`.
- **Custom UI kit** — reusable buttons, list cells, empty-state view, remote image loader, and a UIKit-backed loading spinner.
- **Robust networking** — typed error handling (`APError`) surfaced through SwiftUI alerts, with an `NSCache`-based image cache.

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/AppetizersApp-SwiftUI.git
cd AppetizersApp-SwiftUI
open Appetizers.xcodeproj
```

Then select a simulator (or your device) in Xcode and press **⌘R** to build and run.

## 📋 Requirements

- iOS 18.1 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
