# etiya_flutter_assignment

This repository contains a sample gRPC project developed for Etiya Assignment.

## Getting Started

To run the project, follow these steps:

1. Clone the project repository.
2. Fetch the project dependencies by running the following command:
  ```
  flutter pub get
  ```
3. **Run the Python gRPC server:**

- Navigate to the server directory:
  ```
  cd server
  ```

- Activate the virtual environment:
  ```
  source venv/bin/activate
  ```

- Run the Python gRPC server:
  ```
  python -u server.py
  ```

4. **Specify your local IP address:**

- **On macOS:**
  - Open Terminal and run the following command to get your local IP address:
    ```
    ipconfig getifaddr en0
    ```

- **On Windows:**
  - Open Command Prompt and run the following command to get your local IP address:
    ```
    ipconfig
    ```
    Look for the "IPv4 Address" under the network adapter you are using.

- **On Linux:**
  - Open Terminal and run the following command to get your local IP address:
    ```
    ifconfig
    ```
    Look for the "inet" address under the network adapter you are using.

- Update the 'constants.dart' file located in 'lib/core/constants' with your local IP address.

5. **Run the Flutter project:**

- Ensure that your development environment has Android SDK with a minimum version of 21 and Xcode for iOS.


