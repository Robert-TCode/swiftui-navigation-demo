# SwiftUINavigation Demo

A modular and scalable navigation architecture for SwiftUI, using protocol-based coordinators and strongly typed screen stacks.

## ✨ Features

- Protocol-oriented navigation with `AppScreen` enums
- `Coordinator` pattern for managing feature-based flows
- Type-safe navigation using `NavigationStack` and screen-specific view builders
- Supports passing dependencies (e.g., navigators) to screen views and view models

## 🧱 Structure

- `AppScreen`: Protocol for screen enums used in navigation
- `Coordinator`: Protocol for managing the navigation path per feature
- `AppScreenBuildable`: Protocol for enums to construct views with the right navigator
- Feature modules like `Auth`, `Live`, `Crew`, and `Profile`, each with their own screens and coordinator

## 🧭 Example Usage

```swift
enum LiveScreen: AppScreenBuildable {
    case dashboard
    case timeTracker

    func buildView(navigator: LiveNavigationHandling) -> some View {
        switch self {
        case .dashboard:
            DashboardView(viewModel: DashboardViewModel(navigator: navigator))
        case .timeTracker:
            TimeTrackerView()
        }
    }
}
