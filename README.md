**Movie Booking System**

**Overview** :

The Movie Booking System is a Java-based application using Swing UI that allows users to book movie tickets online. It provides a user-friendly interface for selecting movies, choosing showtimes, and purchasing tickets. The system also includes features for user authentication, seat selection, and viewing customer profiles.


**Problem Statement** :

In the current entertainment landscape, moviegoers often encounter several challenges that hinder their experience when booking tickets. These challenges include long queues at theaters, limited access to information about available movies, and difficulties in selecting preferred seats. Traditional ticket booking systems are often fragmented and inefficient, leading to frustration for users who seek a seamless and enjoyable experience.

To address these challenges, we propose a comprehensive Movie Booking System, built using Java and designed to streamline the ticket purchasing process.

With the rise of online ticketing, there’s a growing need for systems that:

- Provide a user-friendly interface for browsing and selecting movies with detailed descriptions and cast information.
- Allow users to easily choose showtimes and theaters while ensuring real-time seat availability.
- Offer an interactive seat selection feature that visually represents available and booked seats.
- Include options for viewing user profiles and managing bookings.


**Tech Stack**

Programming Language: Java
GUI Framework: Swing for user interface development
Database: MySQL for data storage
Database Connectivity: JDBC for connecting to the MySQL database


**Tech Stack Implementation** 

**Programming Language**

Java: The core programming language used to develop the application, leveraging its object-oriented features for modular design and maintainability.

**GUI Framework**

Swing: Utilized for building the graphical user interface, providing components for user interaction such as buttons, text fields, and panels.

**Database**

MySQL: Employed for persistent storage of user data, movie listings, and booking information, ensuring data integrity and accessibility.

**Database Connectivity**

JDBC: Used for connecting the Java application to the MySQL database, facilitating data retrieval and manipulation through SQL queries.


**Key Features and Implementation**

**User Module**

**User Authentication**: Users can log in as either Admin or Customer, with input validation for credentials.

**Movie Listings**

**Movies**: Users can view a list of available movies with descriptions, genres, and ratings.

**Movie Details**: Detailed information about the selected movie, including duration, language, and cast.

**Date and Theater Selection**

**Theater Options** : Display of available theaters with location details.

**Choose Date and Time slot** : Users can select a date and time for the movie screening.

**Seat Selection**
**Interactive Seat Map**: Visual representation of available and booked seats.
**Real-Time Availability**: Users can select their preferred seats based on availability.

**Booking Process**
**Total Cost Calculation**: Automatic calculation of total cost based on selected seats and showtimes.
**Booking Confirmation**: Users receive a confirmation of their booking details.

**Profile Management**
**View Profile**: Customers can view their profile information and booking history.


**Code Flow Summary**

User Initialization        →   Input username and password for authentication.

Movie Selection            →   Browse available movies and select one for details.

Date and Theater Selection →   Choose a screening date and theater.

Slot Selection             →   Select a time slot for the chosen movie.

Seat Selection             →   View interactive seat map and select preferred seats.

Booking Confirmation       →   Confirm booking details and receive a confirmation message.

Profile Management         →   View and manage user profile information.

End of Process             →   Conclude the session and allow for a new booking or exit.


**Output** : https://drive.google.com/file/d/1s93_Pgg3Zn5UgLCD9h7YGpgOoywyX4bd/view?usp=sharing


**Future Enhancements**

- User  Registration : Implement a registration feature for new customers.
- Payment Integration : Add payment gateway integration for online ticket purchases.
- Mobile Application : Develop a mobile version of the application for better accessibility.
- Enhanced Search : Implement advanced search filters for movies based on genre, rating, and release date.
- User  Reviews : Allow users to leave reviews and ratings for movies.


**Setup Instructions**
To run the Movie Booking System, follow these steps:

1. Prerequisites : Ensure you have Java Development Kit (JDK) and MySQL installed on your machine.
2. Clone the Repository : Download the source code from the repository or copy the code into your local development environment.
3. Create Database : Create a database named `mini2` and set up the required tables (movies, customers, bookings, etc.) as per the schema used in the application.
4. Open in IDE : Use an Integrated Development Environment (IDE) such as IntelliJ IDEA or Eclipse to open the project.
5. Configure Database Connection : Update the database connection details in the code as per your MySQL setup.
6. Compile the Code : Build the project to ensure there are no errors.
7. Run the Application : Execute the `Main` class to launch the Movie Booking System interface.


This Movie Booking System aims to provide a comprehensive solution for managing movie bookings efficiently, ensuring a smooth experience for both customers and administrators.

