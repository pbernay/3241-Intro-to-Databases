import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class App {
    // A flag to determine if the application should continue running
    public static boolean shouldRun = true;

    public static ArrayList<String> CommunityMemberExample = new ArrayList<>();
    public static ArrayList<String> EquipmentExample = new ArrayList<>();
    public static ArrayList<String> LocalWarehouseExample = new ArrayList<>();

    public static void main(String[] args) {
        // Create a Scanner object for reading user input
        Scanner scanner = new Scanner(System.in);

        // Keep displaying the menu and accepting user input until shouldRun is false
        while (shouldRun) {
            // Clears the terminal or console screen
            clearScreen();

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

    public static void add(Scanner scanner) {
        // Loop to keep the Search/Modify functionality until user enters 'q'
        while (shouldRun) {
            clearScreen();

            System.out.println("Add selected.");
            System.out.println("Available entities to search in include:");
            ArrayList listEntities = attListParse("listOfEntities.txt");
            System.out.println(listEntities);
            // The availible entities/attributes that are shown will be pulled from the
            // database hopefully
            System.out.println(
                    "------------------------------------------------------------------------------------------------------");

            String entityParam;
            while (true) {
                System.out.println("What type of entity would you like to add to?");
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

            ArrayList<String> attributesList = new ArrayList<>();
            StringBuilder entityToSearch = new StringBuilder();
            entityToSearch.append("attributeLists/att" + entityParam + ".txt");
            attributesList = attListParse(entityToSearch.toString());

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
                System.out.println("Successfully added!");
                // does not currently add anything because the database is not set up
            } else {
                System.out.println();
                System.out.println("No selected taking you back to the add screen");
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

    public static void SearchModify(Scanner scanner) {
        // Loop to keep the Search/Modify functionality until user enters 'q'
        while (shouldRun) {
            clearScreen();

            // Display options related to Search/Modify
            System.out.println("Search/Modify selected.");
            System.out.println("Available entities to search in include:");
            ArrayList listEntities = attListParse("listOfEntities.txt");
            System.out.println(listEntities);
            // The availible entities/attributes that are shown will be pulled from the
            // database hopefully
            System.out.println(
                    "------------------------------------------------------------------------------------------------------");

            String entityParam;
            while (true) {
                // Prompt the user to specify which entity they want to search within ex. Member
                System.out.println("What entity do you want to select to search in?");
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
            StringBuilder entityToSearch = new StringBuilder();
            entityToSearch.append("attributeLists/att" + entityParam + ".txt");

            System.out.println();
            System.out.println("Available attributes to search in include:");
            System.out.println(attListParse(entityToSearch.toString()));
            System.out.println(
                    "------------------------------------------------------------------------------------------------------");

            // Prompt the user for the attribute they want to search by ex. Last Name
            System.out.println("What attribute would you want to search for?");
            String attribute = scanner.nextLine();
            checkForQuit(attribute);
            if (!shouldRun)
                break; // Exit the loop if user entered 'q'

            // Get the specific value of the attribute the user wants to search for ex. Bob
            System.out.print("Enter " + attribute + ": ");
            String attributeParam = scanner.nextLine();
            checkForQuit(attributeParam);
            if (!shouldRun)
                break; // Exit the loop if user entered 'q'

            clearScreen();
            System.out.println("***Showing results for: " + entityParam + "***");
            displayResultsUI(entityParam, attribute, attributeParam);
            System.out.println();

            ArrayList<String> attributesList = new ArrayList<>();
            attributesList = attListParse(entityToSearch.toString());

            System.out.println("What " + entityParam + " (by " + attributesList.get(0)
                    + ") do you want to modify/delete(m/d) or type n to return to main menu (Ex. "
                    + attributesList.get(0) + ", m):");

            System.out.println("Currently waiting for data from the database to continue the program...");

            break; // Exit the loop after one search iteration
        }
    }

    public static void displayResultsUI(String entityParam, String attribute, String attributeParam) {
        ArrayList<String> attributesList = new ArrayList<>();
        StringBuilder entityToSearch = new StringBuilder();
        entityToSearch.append("attributeLists/att" + entityParam + ".txt");

        attributesList = attListParse(entityToSearch.toString());

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

    public static ArrayList<String> attListParse(String listName) { // parses lists of entities/attributes into an
                                                                    // arraylist
        ArrayList<String> categories = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new FileReader(listName))) {
            String line;
            while ((line = br.readLine()) != null) {
                // Remove quotes and trim spaces
                categories.add(line.replace("\"", "").trim());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return categories;
    }

    public static ArrayList<String> exListParse(String exName) {
        ArrayList<String> example = new ArrayList<>();

        

        return example;
    }
}
