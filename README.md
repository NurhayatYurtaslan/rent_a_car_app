# Rent a Car App
## About the Project

This project was developed as a part of my learning journey in Flutter development. I followed the tutorial available at [this YouTube link](https://www.youtube.com/watch?v=RKrWgdCUP1U) to build a Rent A Car application. Throughout the development process, I made several updates and improvements to enhance my skills and keep the project up-to-date with the latest technologies.

### Updates and Improvements

1. **Updated Map Package**:
   - I updated the map package to `flutter_map ^7.0.2` to utilize the latest features and improvements provided by the package. This helped me understand the integration and customization of maps in a Flutter application better.

2. **Asset Management with Flutter Gen**:
   - To manage assets efficiently, I used the `flutter_gen` package. This package automatically generates code for accessing assets, making the asset management process more streamlined and less error-prone. By using `flutter_gen`, I learned how to automate asset management and ensure that my project remains well-organized.

3. **Firebase and BLoC Learning**:
   - I chose this project to learn Firebase integration and the BLoC (Business Logic Component) pattern in Flutter. Integrating Firebase helped me understand real-time data management and authentication, while BLoC provided a structured way to manage state and business logic in the application.

### Project Features

- **Firebase CLI**: Utilized for managing Firebase services and deployments.
- **Onboarding**: Implemented to introduce users to the application.
- **Homepage**: Displays a list of available cars.
- **DetailsPage**: Provides detailed information about a selected car.
- **Maps Page**: Integrates maps to show car locations and navigation.
- **Animated Image**: Included for enhanced user experience.
- **Clean Architecture Layers**: Implemented to maintain separation of concerns and scalability.
- **BLoC**: Used for state management, ensuring a clear separation between UI and business logic.
- **Dependency Injection**: Implemented with packages like `get_it` to manage dependencies efficiently.

### Acknowledgements

I would like to express my gratitude to Fabrice SUMSA (Fabrice Fabio) for creating and sharing the tutorial that served as the foundation for this project. His guidance and insights were instrumental in my learning journey, helping me grasp essential concepts and techniques in Flutter development.

By working on this project, I have significantly enhanced my skills in mobile app development, Firebase integration, state management, and architectural patterns. It has provided me with practical experience and confidence to tackle more complex projects in the future.


### Updates and Improvements

1. **Updated Map Package**:
   - I updated the map package to `flutter_map ^7.0.2` to utilize the latest features and improvements provided by the package. This helped me understand the integration and customization of maps in a Flutter application better.

2. **Asset Management with Flutter Gen**:
   - To manage assets efficiently, I used the `flutter_gen` package. This package automatically generates code for accessing assets, making the asset management process more streamlined and less error-prone. By using `flutter_gen`, I learned how to automate asset management and ensure that my project remains well-organized.

## Screenshots

Onboarding Page            | List Cars Page            | Car Detail Page           | Maps Page
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
<img src="https://github.com/NurhayatYurtaslan/rent_a_car_app/blob/main/images/1.png?raw=true" width="200"/> | <img src="https://github.com/NurhayatYurtaslan/rent_a_car_app/blob/main/images/2.png?raw=true" width="200"/> | <img src="https://github.com/NurhayatYurtaslan/rent_a_car_app/blob/main/images/3.png?raw=true" width="200"/> | <img src="https://github.com/NurhayatYurtaslan/rent_a_car_app/blob/main/images/4.png?raw=true" width="200"/> 


Firestore Page                    
:-------------------------:
![](https://github.com/NurhayatYurtaslan/rent_a_car_app/blob/main/images/6.PNG?raw=true)



## Dependencies

| Package             | Version  | Description                                                                 |
|---------------------|----------|-----------------------------------------------------------------------------|
| **Firebase**        |          |                                                                             |
| `firebase_core`     | ^3.1.1   | Necessary for initializing Firebase in the Flutter app.                     |
| `cloud_firestore`   | ^5.0.2   | For interacting with Cloud Firestore, a NoSQL database by Firebase.         |
| **Maps**            |          |                                                                             |
| `flutter_map`       | ^7.0.2   | Provides map functionality using the Leaflet map engine.                    |
| `latlong2`          | ^0.9.1   | Offers geographical coordinate representations and utility functions.       |
| **State Management**|          |                                                                             |
| `bloc`              | ^8.1.4   | Implements the BLoC (Business Logic Component) pattern for state management.|
| `flutter_bloc`      | ^8.1.6   | Integrates the `bloc` package with Flutter.                                 |
| **Dependency Injection**|      |                                                                             |
| `get_it`            | ^7.7.0   | A simple service locator for dependency injection.                          |
| **Assets**          |          |                                                                             |
| `flutter_gen`       | ^5.6.0   | Automatically generates code for accessing assets.                          |


