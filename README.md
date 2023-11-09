# Application Overview

This application offers a comprehensive user interface for database management, enabling users to interact with different entities in a database. It provides functionality for searching, modifying, adding, and deleting records, with a dynamic user interface that adjusts according to the entity and attribute information retrieved directly from the database.

## Features

1. **Interactive Main Menu**: Navigate through options for searching/modifying entities, adding new entities, and exiting the application.

2. **Dynamic Entity and Attribute Loading**: Entities and their respective attributes are dynamically loaded from the database, ensuring up-to-date information.

3. **Search and Modification**: Users can select an entity, choose an attribute, and input a value for search or modification. Results are fetched and displayed in a formatted output.

4. **Add New Records**: Facilitates adding new records to the database by providing values for the entity's attributes.

5. **Delete Records**: Allows users to delete records from the database, with a confirmation step for safety.

6. **Formatted Display of Results**: Search results and entity information are displayed in a well-structured, readable format.

7. **Clear Console Feature**: Clears the console for a better user experience, particularly on Windows systems.

8. **Safe Exit with Quick Option**: Incorporates a feature to safely exit the application by entering 'q' at any prompt.

## Code Structure

1. **Main Loop**: Runs continuously, displaying the main menu and processing user inputs until exit.

2. **Utility Methods**:

   - `clearScreen()`: Clears the console screen, mainly for Windows.
   - `checkForQuit(String input)`: Checks for a 'q' input to exit the application.
   - `formatStrings(int size)`: Creates a format string for displaying results.
   - `displayResultsUI(...)`: Displays search results in a formatted table.
   - `delete(...)`: Handles the deletion of records from the database.
   - `sqlQuery(...)`: Executes SQL queries and handles result display.
   - `entListFromDB()`: Retrieves a list of entities from the database.
   - `attListFromDB(String tableName)`: Retrieves a list of attributes for a given table from the database.

3. **Database Integration**: Directly interacts with a database (e.g., SQLite) for fetching and modifying data.

## How to Run

1. Ensure you have a working Java environment and access to the database.
2. Compile the application with all its classes.
3. Run the `main` method of the application (`java App`).
4. Interact with the application using the console interface.

## Notes

- This application now interacts directly with a database, replacing previous placeholders for database operations.
- The clear console feature is optimized for Windows. Compatibility with other operating systems may require adjustments.
- Future updates might include more dynamic features and improved error handling.