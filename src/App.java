import java.util.Scanner;

public class App {
    // A flag to determine if the application should continue running
    public static boolean shouldRun = true;

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
                    System.out.println("Add selected.");
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

    public static void SearchModify(Scanner scanner) {
        // Loop to keep the Search/Modify functionality until user enters 'q'
        while (shouldRun) {
            clearScreen();

            // Display options related to Search/Modify
            System.out.println("Search/Modify selected.");
            System.out.println("Available entities to search in include:");
            System.out.println(
                    "'Employee', 'Local Warehouse', 'Drone', 'Order', 'Equipment', 'Community Member', 'Payment', 'Reviews'");
            // The availible entities/attributes that are shown will be pulled from the
            // database hopefully
            System.out.println(
                    "------------------------------------------------------------------------------------------------------");

            // Prompt the user to specify which entity they want to search within ex. Member
            System.out.println("What entity do you want to select to search in?");
            String entityParam = scanner.nextLine();
            checkForQuit(entityParam);
            if (!shouldRun)
                break; // Exit the loop if user entered 'q'

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

            // Placeholder for where you would display search results
            // These results will come later when we link the database
            System.out.println("Result would be here for " + entityParam + ", " + attribute + ", " + attributeParam);
            System.out.println("Exiting...");

            break; // Exit the loop after one search iteration
        }
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
}
