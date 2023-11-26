# Flutter Developer Assignment

## Introduction

Welcome to the Flutter assignment! We're excited to evaluate your skills and expertise in building Flutter applications. This assignment will assess your ability to work with gRPC, state management using the BLoC package, apply Clean Architecture and Dependency Injection principles, and create reusable Flutter packages. Additionally, you have the option to implement unit, widget, and integration tests as a bonus.

Please follow the instructions carefully, and feel free to reach out if you have any questions. This assignment is expected to take approximately 4 to complete.

## Assignment Overview

You will be building a Flutter application that interacts with at least two gRPC APIs from a free service provider (if you can not find you can mock the APIs). The application should follow the Clean Architecture principles and use the BLoC package for state management. Additionally, you will create at least two features as separate Flutter packages, and the feature code files should not exist directly in the application's `lib/` folder.

## Tasks

### Task 1: Set Up the Project

1. Create a new Flutter project with a suitable name (e.g., `etiya_flutter_assignment`).
2. Set up the necessary dependencies in the `pubspec.yaml` file, including the BLoC package, gRPC client library, and any other dependencies you may require.

### Task 2: gRPC API Integration

1. Find a free gRPC service provider (e.g., a public gRPC API) or create a mock gRPC service for testing purposes.
2. Consume at least **two** gRPC APIs provided by the service provider. You should interact with these APIs to fetch data and display it in your Flutter application.

### Task 3: State Management with BLoC

1. Implement state management using the BLoC package. Create BLoC classes for managing the state of your application, ensuring proper separation of concerns.
2. Use the BLoC pattern to handle data flow and update UI components accordingly.

### Task 4: Clean Architecture

1. Apply Clean Architecture principles to structure your Flutter project. Organize your code into layers such as Data, Domain, and Presentation.
2. Ensure that business logic, data retrieval, and UI presentation are cleanly separated.

### Task 5: Dependency Injection

1. Implement Dependency Injection principles using a package like `get_it` or any other suitable DI framework.
2. Inject dependencies into your application layers to enable modular and testable code.

### Task 6: Create Flutter Packages

1. Implement at least **two** distinct features of your Flutter application as separate Flutter packages. (e.g. list_products, view_product_detail)
2. These packages should encapsulate specific functionality, and their code files should not reside in the main application's `lib/` folder.

### Task 7 (Bonus): Testing

You have the option to implement tests for your Flutter application. You can choose to implement any or all of the following types of tests:

- **Unit Tests**: Write unit tests to test individual functions and methods within your code.
- **Widget Tests**: Create widget tests to ensure that your UI components render correctly and behave as expected.
- **Integration Tests**: Implement integration tests to test the interaction between different parts of your application.

## Submission Guidelines

Please submit your assignment to a public GitHub repository. The repository should include the following:

1. Your Flutter project folder, including all code and configuration files.
2. Documentation or comments within your code to explain your design decisions and approach.
3. A README.md file providing instructions on how to build, run, and test your application.
4. If you have chosen to implement tests (bonus task), include the test files and instructions on how to run them.

## Evaluation Criteria

Your assignment will be evaluated based on the following criteria:

- Successful integration of at least two gRPC APIs.
- Effective use of the BLoC package for state management.
- Adherence to Clean Architecture and Dependency Injection principles.
- Creation of at least two separate Flutter packages for features.
- If tests are implemented (bonus task), they should be comprehensive and well-documented.
- Code quality, readability, and organization.
- Documentation and comments to explain your code and design choices.**

Good luck, and we look forward to reviewing your work! If you have any questions or need clarification on any task, please don't hesitate to reach out for assistance.