
# DigitalClockApp
A SwiftUI-based iOS application that serves as a digital clock, displaying the current time in hours, minutes, and seconds. The clock updates every second, breaking down time into individual, bold digits for a visually striking display.

## Features
- **Real-Time Clock**: Displays the current time in hours, minutes, and seconds, updating every second.
- **Individual Digit Display**: Each digit of the time is displayed in a large, bold format, enhancing readability.
- **Tick-Tock Indicator**: Alternates between "Tick" and "Tock" every second for a dynamic user experience.
- **Clean Design**: A minimalistic layout with bold typography and subtle animations.
- **Dark Mode Support**: Automatically adapts to the user's system settings for a seamless experience in both light and dark themes.

## Technologies Used
- **Language**: Swift
- **Framework**: SwiftUI
- **Timer**: Uses `Timer.publish` to update the time every second.

## Project Structure
- **Main View**: 
  - `ContentView`: The primary view that manages the digital clock display.
- **Custom Components**:
  - `timeView`: A reusable SwiftUI component for displaying individual digits with a bold and dynamic style.

## How It Works
1. **Real-Time Updates**:
   - A `Timer.publish` instance updates the displayed time every second using the `@State` property `currentTime`.
2. **Digit Breakdown**:
   - The `getTimeDigit` function formats the current time and extracts individual digits for hours, minutes, and seconds.
3. **Visual Feedback**:
   - Alternates between "Tick" and "Tock" every second, providing dynamic feedback to the user.
   - Smooth animations are applied to the updates for a polished user experience.

## Getting Started

### Prerequisites
- **Xcode**: Version 12.0 or higher
- **iOS**: Deployment target of iOS 14.0 or higher
- **macOS**: Version 10.15 or higher

### Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/emirokay/DigitalClockApp.git
2. Navigate to the Project Directory:
	```bash
	cd DigitalClockApp
3. Open in Xcode:
	```bash
	open DigitalClockApp.xcodeproj
4. Build and Run:
- Select a simulator or connect a physical device.
- Click the 'Run' button in Xcode to build and launch the app.

## Requirements
- Xcode: Version 12.0 or higher
- iOS: Deployment target of iOS 14.0 or higher

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your proposed changes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Screenshots
<img width="550" alt="Screenshot 2024-11-27 at 21 57 32" src="https://github.com/user-attachments/assets/6421d9e2-b79e-4222-85e9-df0d2ecd9139">
<img width="550" alt="Screenshot 2024-11-27 at 21 57 38" src="https://github.com/user-attachments/assets/4177048d-ada5-4bec-8262-6813aad73f1e">
<img width="550" alt="Screenshot 2024-11-27 at 21 57 45" src="https://github.com/user-attachments/assets/20ce1316-82c7-4019-a8cb-a99bd4d59989">
<img width="550" alt="Screenshot 2024-11-27 at 21 57 48" src="https://github.com/user-attachments/assets/80a51466-36f8-49f3-99a5-cf31a7bf2468">
