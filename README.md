# Application Overview

This application provides a user interface for managing and interacting with entities. It offers options for searching, modifying, deleting, and adding entities. The available entities and their attributes are loaded from external text files.

## Features

1. **Interactive Main Menu**: The main menu provides options for:
   - Searching or modifying entities.
   - Adding new entities.
   - Exiting the application.
2. **Dynamic Loading of Entities and Attributes**: The application loads available entities and their attributes dynamically from external text files.

3. **User-Friendly Search and Modification Interface**: Users can select an entity, specify an attribute, and provide a value to search for. The results would be fetched from the database and displayed in a formatted manner.

4. **Add New Records**: Users can add new records to an entity by providing values for its attributes.

5. **Clear Console Feature**: The application clears the console screen for a cleaner user experience. Note: This feature is specific to Windows.

6. **Debug Quick Exit**: Users can quickly exit the application by entering 'q' at any prompt.

## Code Structure

1. **Main Loop**: The application continuously runs and presents the main menu to the user until they decide to exit.
2. **Search/Modify**: Allows the user to select an entity, specify an attribute to search by, and provide a value to search for.
3. **Add**: Lets the user add a new record by selecting an entity and providing values for its attributes.
4. **Utility Methods**:
   - `clearScreen()`: Clears the console screen.
   - `checkForQuit(String input)`: Checks if the user entered 'q' to exit the application.
   - `listParse(String listName)`: Parses lists of entities or attributes from a text file into an `ArrayList`.
   - `formatStrings(int sizeEntity)`: Dynamically creates a format string based on the number of attributes.
   - `displayResultsUI(String entityParam)`: Displays a formatted table header based on the selected entity's attributes.

## How to Run

1. Ensure that the required text files (`listOfEntities.txt` and any `att<EntityName>.txt` files) are present in the project directory or the specified path.
2. Compile the `App` class.
3. Run the `App` class's `main` method (`java App.java`).
4. Interact with the application using the console.

## Notes

- The application currently provides placeholders for database integration. In the future, database operations will replace these placeholders to fetch, display, and modify real data.
- The clear console feature works specifically on Windows. For other operating systems, this feature may need adjustments.
