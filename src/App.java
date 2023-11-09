import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.sql.SQLException;

public class App {
    // Static variables that the class uses
    public static boolean shouldRun = true; // A flag to determine if the application should continue running
    public static ArrayList<String> CommunityMemberExample = new ArrayList<>();
    public static ArrayList<String> EquipmentExample = new ArrayList<>();
    public static ArrayList<String> LocalWarehouseExample = new ArrayList<>();

    // JDBC URL and username/pass of SQLite
    private static final String url = "jdbc:sqlite:3241Project.db";
    private static final String username = "username";
    private static final String password = "password";

    // JDBC variables for opening and managing connections
    private static Statement stmt;
    private static ResultSet rs;

    /**
     * Entry point for the application. This method initiates the main loop which
     * displays a menu for the user to interact with. The menu allows the user to
     * search/modify existing records, add new records, or exit the application.
     * User choices are read from the standard input and actions are performed
     * accordingly. The loop continues until the user decides to exit the
     * application.
     *
     * @param args The command-line arguments, not used in this application.
     */
    public static void main(String[] args) {
        // Create a Scanner object for reading user input
        Scanner scanner = new Scanner(System.in);

        while (shouldRun) { // Keep displaying the menu and accepting user input until shouldRun is false
            clearScreen(); // Clears the terminal or console screen

            // Display the options available in the main menu
            System.out.println("MAIN MENU");
            System.out.println("------------------");
            System.out.println("1. Search/Modify");
            System.out.println("2. Add");
            System.out.println("3. Exit");
            System.out.print("Pick an Option (1,2,3): ");

            String choice = scanner.nextLine(); // Capture the user's menu choice as a string
            checkForQuit(choice); // Check if the user wants to quit the application
            int choiceInt = 4; // Default value for choiceInt, assuming it's an invalid input

            if (shouldRun) { // Attempt to convert the string choice to an integer if should run is true
                try {
                    choiceInt = Integer.parseInt(choice);
                } catch (Exception e) {
                    choiceInt = 4; // If conversion fails, choiceInt remains 4 (invalid option)
                }
            } else {
                // If shouldRun is false (user entered 'q'), set choiceInt to 3 (Exit)
                choiceInt = 3;
            }

            // Perform an action based on the user's choice
            switch (choiceInt) {
                case 1: // Search and Modify
                    SearchModify(scanner);
                    break;
                case 2: // Add something
                    add(scanner);
                    break;
                case 3: // Exit
                    // Close the scanner and terminate the program
                    System.out.println("Exiting...");
                    scanner.close();
                    System.exit(0);
                default:
                    // Inform the user if they entered an invalid choice
                    System.out.println("Invalid choice. Please try again.");
            }

            // If user entered 'q', close the scanner and terminate the program
            if (!shouldRun) { // This is only neccesary if the user tries to quit when in a case
                System.out.println("Exiting...");
                scanner.close();
                System.exit(0);
            }

            // Prompt the user to press Enter to return to the menu
            System.out.print("Press Enter to continue...");
            scanner.nextLine(); // Consume the newline character to wait for Enter press
        }
    }

    /**
     * Adds a new record to a specified entity in the database.
     * This method guides the user through the process of adding a new record by:
     * - Displaying a list of available entities to which a record can be added.
     * - Allowing the user to select an entity.
     * - Prompting for input for each attribute of the chosen entity.
     * - Asking for confirmation before adding the record.
     * 
     * The process involves:
     * - Displaying available entities retrieved from the database.
     * - Validating user input against available entities.
     * - Collecting attribute values for the new record.
     * - Inserting the record into the database after confirmation.
     *
     * The method uses a Scanner object for user input and handles various user
     * input scenarios,
     * including validation checks and options to quit at different stages.
     * 
     * @param scanner The Scanner object used for obtaining user input from the
     *                console.
     *                It should be initialized before calling this method.
     * 
     *                Usage Example:
     * 
     *                <pre>
     *                Scanner scanner = new Scanner(System.in);
     *                add(scanner);
     *                </pre>
     */
    public static void add(Scanner scanner) {
        // Loop to keep the Search/Modify functionality until user enters 'q'
        while (shouldRun) {
            clearScreen();

            // displays the Add menu options
            System.out.println("Add selected.");
            System.out.println("Available entities to search in include:");

            ArrayList<String> listEntities = entListFromDB();
            System.out.println(listEntities); // entities pulled from Database

            System.out.println(
                    "------------------------------------------------------------------------------------------------------");

            // where the user selects what entity to add
            String entityParam;
            while (true) {
                System.out.println("What type of entity would you like to add to?(Case Sensitive)");
                entityParam = scanner.nextLine(); // user input

                checkForQuit(entityParam); // debug quit
                if (!shouldRun)
                    return; // exit if the user entered debug quit

                // validates the input against entities
                if (listEntities.contains(entityParam)) {
                    break; // if valid
                } else {
                    System.out.println("Invalid entity entered. Please try again.");
                }
            }

            // attributes pulled from database
            ArrayList<String> attributesList = attListFromDB(entityParam);

            clearScreen();
            System.out.println(attributesList.toString());
            System.out.println(
                    "------------------------------------------------------------------------------------------------------");
            System.out.println(
                    "Enter each attribute (in the order above) with commas between (Ex. " + attributesList.get(0)
                            + ", " + attributesList.get(1) + ", ...):");

            String recordString = scanner.nextLine();
            checkForQuit(recordString);
            if (!shouldRun)
                return;

            clearScreen();

            ArrayList<String> record = new ArrayList<>(Arrays.asList(recordString.split(", ")));

            if (attributesList.size() != record.size()) {
                System.out.println("The number of columns and values do not match. Try Again. Restarting...");
                try {
                    Thread.sleep(3000);
                } catch (InterruptedException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                add(scanner);
            }
            System.out.println(attributesList.toString());
            System.out.println(
                    "------------------------------------------------------------------------------------------------------");
            System.out.println(record);

            System.out.println();
            System.out.println("Is the above the correct information (y/n)?");

            String confirm = scanner.nextLine().toLowerCase().trim();
            checkForQuit(confirm);
            if (!shouldRun)
                return;

            while (!confirm.equals("y") && !confirm.equals("n")) {
                System.out.println("Invalid input. Please enter 'y' for yes or 'n' for no.");
                confirm = scanner.nextLine().toLowerCase().trim();
            }
            if (confirm.equals("y")) {
                System.out.println();
                insertRecord(attributesList, record, entityParam);
            } else {
                System.out.println();
                System.out.println("'No' selected taking you back to the add screen");
                try {
                    Thread.sleep(3000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                add(scanner);
            }

            break;
        }
    }

    /**
     * Inserts a new record into a specified table in the database.
     * This method constructs a SQL insert statement dynamically based on the
     * provided column names and values.
     * It handles different data types (such as integers, doubles, booleans, and
     * strings) when preparing the statement.
     * The method also manages the database connection and execution of the prepared
     * statement.
     *
     * The process involves:
     * - Building a SQL insert statement using provided column names and
     * placeholders for values.
     * - Setting the values in the prepared statement with appropriate data types.
     * - Executing the insert statement and reporting the outcome.
     *
     * This method assumes that the database connection details (url, username,
     * password) are available to it.
     * 
     * @param columns An ArrayList of Strings representing the column names for the
     *                insert statement.
     * @param values  An ArrayList of Strings representing the values to be
     *                inserted, corresponding to the columns.
     *                Values should be in the same order as the columns. The method
     *                attempts to parse
     *                different data types based on the content of each value.
     * @param table   The name of the table into which the record should be
     *                inserted.
     * 
     *                Note:
     *                - This method does not return the status of the insertion
     *                operation but prints the outcome to the console.
     *                - It is important that the order of columns matches the order
     *                of values provided.
     * 
     *                Usage Example:
     * 
     *                <pre>
     *                ArrayList<String> columns = new ArrayList<>(Arrays.asList("name", "age", "salary"));
     *                ArrayList<String> values = new ArrayList<>(Arrays.asList("John Doe", "30", "45000.00"));
     *                insertRecord(columns, values, "employees");
     *                </pre>
     */
    public static void insertRecord(ArrayList<String> columns, ArrayList<String> values, String table) {
        StringBuilder columnNames = new StringBuilder("(");
        StringBuilder placeholders = new StringBuilder("(");
        for (int i = 0; i < columns.size(); i++) {
            columnNames.append(columns.get(i).trim());
            placeholders.append("?");
            if (i < columns.size() - 1) {
                columnNames.append(", ");
                placeholders.append(", ");
            }
        }
        columnNames.append(")");
        placeholders.append(")");

        String sql = "INSERT INTO " + table + " " + columnNames.toString() + " VALUES " + placeholders.toString();

        try (Connection con = DriverManager.getConnection(url, username, password);
                PreparedStatement pstmt = con.prepareStatement(sql)) {
            for (int i = 0; i < values.size(); i++) {
                String value = values.get(i).trim();

                if (Character.isDigit(value.charAt(0)) && Character.isDigit(value.charAt(value.length() - 1))) {
                    try {
                        if (value.contains(".")) {
                            pstmt.setDouble(i + 1, Double.parseDouble(value));
                        } else {
                            pstmt.setInt(i + 1, Integer.parseInt(value));
                        }
                    } catch (NumberFormatException e) {
                        pstmt.setString(i + 1, value);
                    }
                } else if (value.equals("true") || value.equals("false")) {
                    pstmt.setBoolean(i + 1, Boolean.parseBoolean(value));
                } else {
                    pstmt.setString(i + 1, value);
                }
            }

            int affectedRows = pstmt.executeUpdate();
            if (affectedRows > 0) {
                System.out.println("Record inserted successfully.");
            } else {
                System.out.println("No record was inserted.");
            }

        } catch (SQLException e) {
            System.out.println("Error occurred(trying to insert): " + e.getMessage());
        }
    }

    /**
     * Handles the Search and Modify operations for entities in a database.
     * The method allows users to select an entity and an attribute to search within
     * that entity.
     * It then displays search results and provides options to modify or delete the
     * retrieved records.
     *
     * Steps involved in the method:
     * 1. User selects an entity from the available options.
     * 2. User specifies an attribute and its value for the search criteria.
     * 3. The method retrieves and displays matching records.
     * 4. The user is then given the option to modify or delete a record based on
     * its primary key.
     *
     * The process includes:
     * - Connecting to the database.
     * - Dynamically generating SQL queries based on user input.
     * - Handling SQL exceptions and ensuring proper closing of resources.
     *
     * @param scanner A Scanner object to capture user input.
     *
     *                Note:
     *                - The method assumes that database connection details (url,
     *                username, password) are accessible.
     *                - This method utilizes other helper methods for specific tasks
     *                (like 'modify', 'delete', etc.).
     *                - The user interface is primarily text-based, using the
     *                console for both input and output.
     *
     *                Usage Example:
     * 
     *                <pre>
     *                Scanner scanner = new Scanner(System.in);
     *                SearchModify(scanner);
     *                </pre>
     */
    public static void SearchModify(Scanner scanner) {
        // Loop to keep the Search/Modify functionality until user enters 'q'
        while (shouldRun) {
            clearScreen();

            // Display options related to Search/Modify
            System.out.println("Search/Modify selected.");
            System.out.println("Available entities to search in include:");

            ArrayList<String> listEntities = entListFromDB();
            System.out.println(listEntities); // entities pulled from Database

            System.out.println(
                    "------------------------------------------------------------------------------------------------------");

            String entityParam;
            while (true) {
                // Prompt the user to specify which entity they want to search within ex. Member
                System.out.println("What entity do you want to select to search in?(Case Sensitive)");
                entityParam = scanner.nextLine();
                checkForQuit(entityParam);
                if (!shouldRun)
                    return;

                if (listEntities.contains(entityParam)) {
                    break;
                } else {
                    System.out.println("Invalid entity entered. Please try again.");
                }
            }

            ArrayList<String> primaryKeyColumns = new ArrayList<>();
            try (Connection con = DriverManager.getConnection(url, username, password);
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("PRAGMA table_info(" + entityParam + ")")) {

                // attributes pulled from database
                ArrayList<String> attributesList = attListFromDB(entityParam);

                System.out.println();
                System.out.println("Available attributes to search in include:");
                System.out.println(attributesList);
                System.out.println(
                        "------------------------------------------------------------------------------------------------------");

                String attribute;
                String attributeParam = null;
                // Prompt the user for the attribute they want to search by ex. Last Name
                while (true) {
                    System.out.println(
                            "What attribute would you want to search for?(If you want all just type '*')(Case Sensitive)");
                    attribute = scanner.nextLine();
                    checkForQuit(attribute);
                    if (!shouldRun)
                        break; // Exit the loop if user entered 'q'
                    if (attributesList.contains(attribute) || attribute.equals("*")) {
                        break;
                    } else {
                        System.out
                                .println("Invalid attribute entered. Please try again. Remember it is Case Sensitive.");
                    }
                }
                if (!shouldRun)
                    break; // Exit the loop if user entered 'q'
                String[] attributeParamArray = null;
                if (attribute.charAt(0) != '*' && attribute.length() != 1) {
                    // Get the specific value of the attribute the user wants to search for ex. Bob
                    System.out.println("Enter " + attribute + " and operator (EX. " + attribute + ", >): ");
                    attributeParam = scanner.nextLine();
                    attributeParamArray = attributeParam.split(", ");
                    checkForQuit(attributeParam);
                    if (isString(attributeParamArray[0]) == true) {
                        StringBuilder tBld = new StringBuilder("'");
                        tBld.append(attributeParamArray[0] + "'");
                        attributeParamArray[0] = tBld.toString();
                    }
                    if (!shouldRun)
                        break; // Exit the loop if user entered 'q'
                }

                System.out.println(
                        "Enter the column name(s) you want to select (If you want all just type '*')(comma separated):");
                String columns = scanner.nextLine();

                clearScreen();
                System.out.println("***Showing results for: " + entityParam + "***");
                displayResultsUI(entityParam, attribute, attributeParamArray, columns, con);
                System.out.println();

                while (rs.next()) {
                    int isPrimaryKey = rs.getInt("pk");
                    if (isPrimaryKey == 1) {
                        String columnName = rs.getString("name");
                        primaryKeyColumns.add(columnName);
                    }
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("What " + entityParam + " (by " + primaryKeyColumns.get(0)
                    + ") do you want to modify/delete(m/d) or type n to return to main menu (Ex. "
                    + primaryKeyColumns.get(0) + ", m):");

            String tChoice = scanner.nextLine();
            checkForQuit(tChoice);
            if (!shouldRun)
                break; // Exit the loop if user entered 'q'

            String action = null;
            String pkChoice = null;
            if (tChoice.contains(",")) {
                String[] choices = tChoice.split(",");
                pkChoice = choices[0];
                action = choices[1].trim().toLowerCase();
            } else if (tChoice.equalsIgnoreCase("n")) {
                action = "n";
            } else {
                System.out.println(
                        "Please make sure you have the right format. EX: " + primaryKeyColumns.get(0) + ", m");
            }
            try (Connection con = DriverManager.getConnection(url, username, password)) {
                switch (action) {
                    case "m":
                        modify(con, pkChoice, primaryKeyColumns.get(0), entityParam, scanner);
                        break;
                    case "d":
                        delete(con, pkChoice, primaryKeyColumns.get(0), entityParam, scanner);
                        break;
                    case "n":
                        System.out.println("Returning to main menu...");
                        break;
                    default:
                        System.out.println("Invalid choice. Please enter 'm', 'd', or 'n'.");
                }
            } catch (Exception e) {
                // TODO: handle exception
            }
            break; // Exit the loop after one search iteration
        }
    }

    /**
     * Modifies a record in the database for a specified entity and primary key.
     * The method allows the user to choose an attribute of the entity to modify and
     * input a new value for it.
     *
     * Steps involved in the method:
     * 1. Displays the current record based on the primary key provided.
     * 2. Prompts the user to choose which attribute to modify.
     * 3. Accepts a new value for the chosen attribute.
     * 4. Updates the database with the new value.
     * 5. Shows the updated record and asks the user to confirm (commit or rollback)
     * the changes.
     *
     * The method ensures transactional integrity by using SQL transactions. In case
     * of an error, it rolls back any changes made during the transaction.
     * The user can continue modifying other attributes or exit the loop based on
     * their input.
     *
     * @param con         The Connection object to connect to the database.
     * @param pkChoice    The primary key value of the record to be modified.
     * @param pkColumn    The primary key column of the entity.
     * @param entityParam The name of the entity (table) in the database where the
     *                    record is located.
     * @param scanner     A Scanner object to capture user input.
     *
     *                    Note:
     *                    - It is assumed that the method 'displayResultsUI' is used
     *                    for displaying the records.
     *                    - The user input is taken using the provided Scanner
     *                    object.
     *                    - The method handles SQL exceptions and ensures the
     *                    database state is consistent in case of an error.
     *
     *                    Usage Example:
     * 
     *                    <pre>
     *                    Connection con = DriverManager.getConnection(url, username, password);
     *                    Scanner scanner = new Scanner(System.in);
     *                    modify(con, "123", "id", "Employee", scanner);
     *                    </pre>
     */
    public static void modify(Connection con, String pkChoice, String pkColumn, String entityParam, Scanner scanner) {
        clearScreen();
        try {
            con.setAutoCommit(false);

            while (shouldRun) {
                // Display the current record before modification
                String[] attributeParam = { pkChoice, "=" };
                displayResultsUI(entityParam, pkColumn, attributeParam, "*", con);

                System.out.println("What attribute would you like to modify?");
                String attToEdit = scanner.nextLine().trim();
                checkForQuit(attToEdit);
                if (!shouldRun)
                    break; // Exit the loop if user entered 'q'

                System.out.println("Enter a new value for " + attToEdit + ":");
                String updatedAtt = scanner.nextLine().trim();
                checkForQuit(updatedAtt);
                if (!shouldRun)
                    break; // Exit the loop if user entered 'q'

                // Update the database
                String updateSQL = "UPDATE " + entityParam + " SET " + attToEdit + " = ? WHERE " + pkColumn + " = ?";
                PreparedStatement pstmt = con.prepareStatement(updateSQL);

                pstmt.setString(1, updatedAtt);
                pstmt.setString(2, pkChoice);

                // Execute the update and get count of affected rows
                int affectedRows = pstmt.executeUpdate();

                if (affectedRows > 0) {
                    // Show the updated record
                    clearScreen();
                    System.out.println("Modification successful. Showing updated " + entityParam + ":");
                    displayResultsUI(entityParam, pkColumn, attributeParam, "*", con);

                    // Confirm the update
                    System.out.println("Commit changes? (y/n):");
                    String confirmation = scanner.nextLine().trim();
                    checkForQuit(confirmation);
                    if (!shouldRun)
                        break; // Exit the loop if user entered 'q'
                    if ("y".equalsIgnoreCase(confirmation)) {
                        con.commit();
                        System.out.println("Changes committed to the database.");
                    } else {
                        con.rollback();
                        System.out.println("Changes rolled back. No update has been made.");
                    }
                } else {
                    System.out.println("No records were updated.");
                }

                System.out.println("Would you like to make more modifcations? (y/n):");
                String choice = scanner.nextLine().trim();
                checkForQuit(choice);

                if ("n".equalsIgnoreCase(choice)) {
                    break;
                }
            }
        } catch (SQLException e) {
            System.out.println("A database error occurred: " + e.getMessage());
            try {
                if (con != null) {
                    con.rollback(); // Rollback in case of exception during the transaction
                    con.setAutoCommit(true); // Reset to the default mode
                }
            } catch (SQLException e2) {
                System.out.println("Another database error occurred while rolling back: " + e2.getMessage());
            }
        } finally {
            try {
                // Reset auto-commit mode outside of while loop to ensure it is always reset at
                // the end
                if (con != null)
                    con.setAutoCommit(true);
            } catch (SQLException e3) {
                System.out.println("Error resetting auto-commit mode: " + e3.getMessage());
            }
        }
    }

    /**
     * Deletes a record from the database based on the provided primary key.
     * The method first displays the record that is to be deleted and then prompts
     * the user for confirmation.
     *
     * Steps involved in the method:
     * 1. Display the current record that matches the provided primary key.
     * 2. Ask the user for confirmation to delete the record ('y' for yes, 'n' for
     * no).
     * 3. If confirmed, execute the DELETE statement to remove the record from the
     * database.
     * 4. If deletion is successful, a confirmation message is shown; otherwise, a
     * message is displayed if no record was found.
     * 5. In case of no confirmation ('n'), the user is redirected back to the
     * Search/Modify screen.
     *
     * The method uses a PreparedStatement for executing the DELETE query to ensure
     * safe parameter insertion.
     * It also handles SQLExceptions that might occur during database operations.
     *
     * @param con         The Connection object to connect to the database.
     * @param pkChoice    The value of the primary key for the record to be deleted.
     * @param pkColumn    The name of the primary key column.
     * @param entityParam The name of the entity (table) where the deletion is to be
     *                    performed.
     * @param scanner     A Scanner object to capture user input.
     *
     *                    Note:
     *                    - The method assumes the existence of 'displayResultsUI'
     *                    method for displaying database records.
     *                    - User choice is captured using the Scanner object.
     *                    - In case the user chooses not to delete ('n'), it calls
     *                    'SearchModify' method to return to the previous menu.
     *
     *                    Usage Example:
     * 
     *                    <pre>
     *                    Connection con = DriverManager.getConnection(url, username, password);
     *                    Scanner scanner = new Scanner(System.in);
     *                    delete(con, "123", "id", "Employee", scanner);
     *                    </pre>
     */
    public static void delete(Connection con, String pkChoice, String pkColumn, String entityParam, Scanner scanner) {
        clearScreen();

        String[] attributeParam = { pkChoice, "=" };
        displayResultsUI(entityParam, pkColumn, attributeParam, "*", con);

        System.out.println("Are you sure you want to delete this record (y,n)?");
        String choice = scanner.nextLine();
        checkForQuit(choice);

        if (shouldRun) {
            switch (choice) {
                case "y":
                    String sql = "DELETE FROM " + entityParam + " WHERE " + pkColumn + " = ?";
                    try (PreparedStatement pstmt = con.prepareStatement(sql)) {

                        pstmt.setString(1, pkChoice);

                        int affectedRows = pstmt.executeUpdate();
                        if (affectedRows > 0) {
                            System.out.println("A record was deleted successfully.");
                        } else {
                            System.out.println("No record was found with the provided PK.");
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    break;
                case "n":
                    System.out.println("Did not delete record, 'n' was selected.");
                    System.out.println("Sending you back to the Search/Modify screen...");
                    try {
                        Thread.sleep(3000);
                    } catch (InterruptedException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                    SearchModify(scanner);
                default:
                    System.out.println("Invalid choice. Please enter 'y' or 'n'.");
            }
        }
    }

    /**
     * Displays query results in a formatted output for the specified columns of an
     * entity from the database.
     * The method can either display all records or filter based on an attribute and
     * its corresponding parameter.
     *
     * Steps involved in the method:
     * 1. Parses and prepares the column names for display. If the user selects all
     * columns ('*'), it fetches all attributes from the database.
     * 2. Prints column names in a formatted manner.
     * 3. Constructs an SQL query based on the provided parameters. It supports
     * basic comparison operators (>, <, =).
     * 4. Executes the SQL query and delegates the responsibility of displaying
     * results to the 'sqlQuery' method.
     *
     * Parameters Explanation:
     * 
     * @param entityParam    The name of the entity (table) in the database.
     * @param attribute      The attribute (column) to filter the results on. Can be
     *                       null for no filtering.
     * @param attributeParam A String array containing the value for the filter and
     *                       the operator (e.g., '>', '<', '=').
     * @param columns        A String representing the columns to be displayed. '*'
     *                       for all columns.
     * @param con            The Connection object to connect to the database.
     *
     *                       Exception Handling:
     *                       - Throws IllegalArgumentException if the operator in
     *                       'attributeParam' is not supported (i.e., not '>', '<',
     *                       or '=').
     *
     *                       Usage Example:
     * 
     *                       <pre>
     *                       Connection con = DriverManager.getConnection(url, username, password);
     *                       displayResultsUI("Employee", "Age", new String[] { "30", ">" }, "Name, Age", con);
     *                       </pre>
     *
     *                       Note:
     *                       - The method assumes the existence of 'attListFromDB'
     *                       and 'sqlQuery' methods for fetching attribute names
     *                       from the database and executing SQL queries
     *                       respectively.
     *                       - The method is designed to handle variable number of
     *                       columns and provides formatted output.
     */
    public static void displayResultsUI(String entityParam, String attribute, String[] attributeParam, String columns,
            Connection con) {
        String[] columnsArray = columns.split(", ");
        ArrayList<String> columnsList = new ArrayList<>(Arrays.asList(columnsArray));

        if (columnsList.get(0).equals("*")) {
            columnsList = attListFromDB(entityParam);
        }
        String format = formatStrings(columnsList.size());
        System.out.format(format, columnsList.toArray());
        for (int i = 0; i < columnsList.size() * 30; i++) {
            System.out.print("-");
            if (i == 223) {
                break;
            }
        }
        System.out.println();
        String sql;
        ArrayList<String> parameters = new ArrayList<>();
        if (attributeParam != null) {
            String operator = attributeParam[1].trim();
            if (!operator.equals(">") && !operator.equals("<") && !operator.equals("=")) {
                throw new IllegalArgumentException("Operator has not been coded yet.");
            }
            parameters.add(attributeParam[0]);
            sql = "SELECT " + columns + " FROM " + entityParam + " WHERE " + attribute + " " + operator + " ?";
        } else {
            sql = "SELECT " + columns + " FROM " + entityParam;
        }
        sqlQuery(sql, parameters, con);
    }

    /**
     * Executes an SQL query with the specified parameters and displays the results.
     * This method uses a {@link PreparedStatement} to set the query parameters and
     * then executes the query.
     * The results are fetched from the {@link ResultSet} and displayed in a
     * formatted manner.
     *
     * Steps involved in the method:
     * 1. Prepares the SQL query using a {@link PreparedStatement}.
     * 2. Sets the parameters of the query, if any.
     * 3. Executes the query and retrieves a {@link ResultSet}.
     * 4. Fetches metadata from the {@link ResultSet} to determine column count.
     * 5. Iterates over the {@link ResultSet}, fetching and displaying each row's
     * values.
     *
     * Parameters Explanation:
     * 
     * @param sql    The SQL query string to be executed. It can include
     *               placeholders for parameters.
     * @param params A list of strings representing the parameters to be set in the
     *               SQL query.
     * @param con    The Connection object to connect to the database.
     *
     *               Exception Handling:
     *               - Catches {@link SQLException} and prints the SQL error
     *               message.
     *
     *               Usage Example:
     * 
     *               <pre>
     *               Connection con = DriverManager.getConnection(url, username, password);
     *               String sql = "SELECT * FROM Employee WHERE Age > ?";
     *               ArrayList<String> params = new ArrayList<>();
     *               params.add("30");
     *               sqlQuery(sql, params, con);
     *               </pre>
     *
     *               Note:
     *               - The method assumes the existence of a 'formatStrings' method
     *               for formatting the output.
     *               - Suitable for use with both parameterized and
     *               non-parameterized queries.
     *               - It is important to ensure that the query and the number of
     *               parameters in 'params' are correctly aligned.
     */
    public static void sqlQuery(String sql, ArrayList<String> params, Connection con) {
        try {
            PreparedStatement pstmt = con.prepareStatement(sql);
            for (int i = 0; i < params.size(); i++) {
                pstmt.setString(i + 1, params.get(i));
            }
            ResultSet rs = pstmt.executeQuery();

            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();

            while (rs.next()) {
                ArrayList<String> columnValues = new ArrayList<>();

                for (int i = 1; i <= columnCount; i++) {
                    String columnValue = rs.getString(i);
                    columnValues.add(columnValue);
                }
                String format = formatStrings(columnValues.size());
                System.out.format(format, columnValues.toArray());

                System.out.print("\n");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Creates a format string for printing table-like data in a consistent,
     * columnar format.
     * Each column is formatted to have a fixed width of 30 characters and is
     * left-aligned.
     *
     * @param sizeEntity The number of columns to format.
     * @return A format string where each column is left-aligned within a
     *         30-character width,
     *         followed by a newline character at the end.
     */
    public static String formatStrings(int sizeEntity) {
        StringBuilder format = new StringBuilder();

        for (int i = 0; i < sizeEntity; i++) {
            format.append("%-30s");
        }
        format.append("%n");
        return format.toString();
    }

    /**
     * Determines whether a given string represents a string literal or not.
     * The method checks if the input starts and ends with a digit,
     * or if it is equal to "true" or "false", to conclude if it's not a string
     * literal.
     *
     * @param str The string to be checked.
     * @return {@code true} if the input is considered a string literal,
     *         {@code false} otherwise. A string is not considered a literal
     *         if it starts and ends with digits or equals "true" or "false".
     */
    public static boolean isString(String str) {
        boolean isStr = true;
        if (Character.isDigit(str.charAt(0)) && Character.isDigit(str.charAt(str.length() - 1))) {
            isStr = false;
        } else if (str.equals("true") || str.equals("false")) {
            isStr = false;
        }
        return isStr;
    }

    /**
     * Clears the console screen. This method is specific to Windows systems.
     * It executes the "cls" command to clear the Windows console. If the method
     * is run on a non-Windows system or an error occurs, it will catch and
     * display the exception.
     *
     * Note: This method may not work in some IDEs' integrated consoles.
     */
    private static void clearScreen() {
        // Clear the console screen (specific to Windows)
        try {
            // Execute the "cls" command to clear the Windows console.
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception e) {
            // Handle and display any exceptions that occur
            System.err.println("Error clearing console: " + e.getMessage());
        }
    }

    /**
     * Checks if the provided input string is 'q'. If it is, sets a flag (shouldRun)
     * to false.
     * This method is typically used after each user input to determine if the user
     * wants
     * to exit or terminate the current operation.
     *
     * @param input The user input string to check for the quit command.
     */
    public static void checkForQuit(String input) { // you need to check for quit after each user input
        // Check if the user input is 'q', and if so, set shouldRun to false
        if ("q".equals(input)) {
            shouldRun = false;
        }
    }

    /**
     * Retrieves a list of all table names from the database, excluding SQLite
     * internal tables.
     * This method connects to the database, executes a query to fetch table names,
     * and returns them in an ArrayList.
     *
     * @return An ArrayList of String, each representing a table name in the
     *         database.
     *         Returns an empty list if there are no tables or if an error occurs.
     */
    public static ArrayList<String> entListFromDB() {
        ArrayList<String> tempList = new ArrayList<>();
        // Query to select all table names in the main database
        String query = "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'";

        try (Connection con = DriverManager.getConnection(url, username, password)) {
            stmt = con.createStatement();

            // executes the query to get result
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                tempList.add(rs.getString("name"));
            }
        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
        }

        return tempList;
    }

    /**
     * Retrieves a list of attribute names for a given table in the database.
     * This method connects to the database and uses the SQLite PRAGMA table_info
     * command
     * to fetch the column names of the specified table.
     *
     * @param tableName The name of the table for which attribute names are to be
     *                  retrieved.
     * @return An ArrayList of String, each representing an attribute (column) name
     *         of the specified table.
     *         Returns an empty list if the table does not exist or if an error
     *         occurs.
     */
    public static ArrayList<String> attListFromDB(String tableName) {
        ArrayList<String> tempList = new ArrayList<>();
        String query = "PRAGMA table_info(" + tableName + ")";

        try (Connection con = DriverManager.getConnection(url, username, password)) {
            stmt = con.createStatement();

            // executes the query and gets the result
            rs = stmt.executeQuery(query);

            // processing the result
            while (rs.next()) {
                tempList.add(rs.getString("name"));
            }

        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
        }
        return tempList;
    }

}
