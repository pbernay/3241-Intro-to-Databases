import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
    private static Connection con;
    private static Statement stmt;
    private static ResultSet rs;

    // main entry for the java app
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
            System.out.print("Pick an Option (1,2): ");

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

    // method for the add menu
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
    
    public static void insertRecord(ArrayList<String> columns, ArrayList<String> values, String table) {
        // opens database connection
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }

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

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
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

    // method for the functionality of both searching and modifying
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
                System.out.println("What attribute would you want to search for?(Case Sensitive)");
                attribute = scanner.nextLine();
                checkForQuit(attribute);
                if (!shouldRun)
                    break; // Exit the loop if user entered 'q'
                if (attributesList.contains(attribute)) {
                    break;
                } else {
                    System.out.println("Invalid attribute entered. Please try again. Remember it is Case Sensitive.");
                }
            }
            if (!shouldRun)
                break; // Exit the loop if user entered 'q'

            // Get the specific value of the attribute the user wants to search for ex. Bob
            System.out.print("Enter " + attribute + ": ");
            attributeParam = scanner.nextLine();
            checkForQuit(attributeParam);
            if (!shouldRun)
                break; // Exit the loop if user entered 'q'

            clearScreen();
            System.out.println("***Showing results for: " + entityParam + "***");
            displayResultsUI(entityParam, attribute, attributeParam);
            System.out.println();

            System.out.println("What " + entityParam + " (by " + attributesList.get(0)
                    + ") do you want to modify/delete(m/d) or type n to return to main menu (Ex. "
                    + attributesList.get(0) + ", m):");

            System.out.println("Currently waiting for data from the database to continue the program...");

            break; // Exit the loop after one search iteration
        }
    }

    public static void displayResultsUI(String entityParam, String attribute, String attributeParam) {
        // attributes pulled from database
        ArrayList<String> attributesList = attListFromDB(entityParam);

        String format = formatStrings(attributesList.size());
        System.out.format(format, attributesList.toArray());
        System.out.println(
                "-------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        System.out.println("**Data from database here**");
    }

    public static String formatStrings(int sizeEntity) {
        StringBuilder format = new StringBuilder();

        for (int i = 0; i < sizeEntity; i++) {
            format.append("%-20s");
        }
        format.append("%n");
        return format.toString();
    }

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

    public static void checkForQuit(String input) { // you need to check for quit after each user input
        // Check if the user input is 'q', and if so, set shouldRun to false
        if ("q".equals(input)) {
            shouldRun = false;
        }
    }

    public static ArrayList<String> entListFromDB() {
        ArrayList<String> tempList = new ArrayList<>();
        // Query to select all table names in the main database
        String query = "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'";

        try {
            // opens database connection
            con = DriverManager.getConnection(url, username, password);
            stmt = con.createStatement();

            // executes the query to get result
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                tempList.add(rs.getString("name"));
            }
        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
        } finally {
            // Close the connections
            try {
                if (rs != null)
                    rs.close();
                if (stmt != null)
                    stmt.close();
                if (con != null)
                    con.close();
            } catch (SQLException se) {
                // Handle the exception properly
                se.printStackTrace();
            }
        }

        return tempList;
    }

    public static ArrayList<String> attListFromDB(String tableName) {
        ArrayList<String> tempList = new ArrayList<>();
        String query = "PRAGMA table_info(" + tableName + ")";

        try {
            // opens database connection
            con = DriverManager.getConnection(url, username, password);
            stmt = con.createStatement();

            // executes the query and gets the result
            rs = stmt.executeQuery(query);

            // processing the result
            while (rs.next()) {
                tempList.add(rs.getString("name"));
            }

        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
        } finally {
            // closes the connections
            try {
                con.close();
            } catch (SQLException se) {
                /* can't do anything */ }
            try {
                stmt.close();
            } catch (SQLException se) {
                /* can't do anything */ }
            try {
                rs.close();
            } catch (SQLException se) {
                /* can't do anything */ }
        }
        return tempList;
    }

}
