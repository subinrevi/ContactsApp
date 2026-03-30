# ContactsApp

A native iOS application for managing contacts, built with Swift using the VIPER architectural pattern.

## Features

- View a list of contacts in a scrollable table view
- Add new contacts via a modal interface with a parallax header
- Styled contact cards with shadow effects and icons
- CoreData integration for persistent storage

## Architecture

This app follows the **VIPER** pattern (View, Interactor, Presenter, Entity, Router) for clean separation of concerns and testability.

```
ContactsModule/
├── Entity/       # Data models (Contact)
├── View/         # UIViewControllers and UI logic
├── Presenter/    # Business logic bridge between View and Interactor
├── Interactor/   # Data fetching and saving logic
├── Router/       # Navigation and module wiring
└── Protocols/    # Interface definitions for each VIPER layer
```

## Requirements

- Xcode 13+
- iOS 13+
- Swift 5+

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/subinrevi/contactsapp.git
   cd contactsapp
   ```

2. Open the Xcode project:
   ```bash
   open ContactsApp/ContactsApp.xcodeproj
   ```

3. Select a simulator or connected device in Xcode.

4. Build and run with `Cmd+R` or **Product > Run**.

## Project Structure

```
ContactsApp/
├── AppSettings/          # AppDelegate & SceneDelegate
├── ContactsModule/       # VIPER module for contacts feature
├── CustomCells/          # Reusable UITableViewCell (XIB-based)
├── CustomViews/          # Custom header view with parallax effect
├── CoreData/             # CoreData model
├── Storyboard/           # Main & Launch storyboards
└── AppIcons/             # Asset catalog
```

## Data Model

```swift
struct Contact {
    var name: String
    var mobileNumber: Int
}
```

## License

This project is licensed under the terms found in the [LICENSE](LICENSE) file.
