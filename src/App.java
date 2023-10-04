import java.util.Scanner;

public class App {
    public static boolean shouldRun = true;

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        while (shouldRun) {
            // Clear the screen
            clearScreen();

            // Display the main menu.
            System.out.println("MAIN MENU");
            System.out.println("------------------");
            System.out.println("1. Search/Modify");
            System.out.println("2. Add");
            System.out.println("3. Exit");
            System.out.print("Pick an Option (1,2): ");

            // Read user input.
            String choice = scanner.nextLine();
            checkForQuit(choice);
            int choiceInt = 4;
            if (shouldRun) {
                try {
                    choiceInt = Integer.parseInt(choice);
                } catch (Exception e) {
                    choiceInt = 4;
                }
            } else {
                choiceInt = 3;
            }

            switch (choiceInt) {
                case 1:
                    SearchModify(scanner);
                    break;
                case 2:
                    System.out.println("Add selected.");
                    break;
                case 3:
                    // Exit the program.
                    System.out.println("Exiting...");
                    scanner.close();
                    System.exit(0);
                default:
                    System.out.println("Invalid choice. Please try again.");
            }
            if (!shouldRun) {
                System.out.println("Exiting...");
                scanner.close();
                System.exit(0);
            }
            // Wait for user to press Enter to continue.
            System.out.print("Press Enter to continue...");
            scanner.nextLine(); // Consume the newline character.
        }
    }

    public static void SearchModify(Scanner scanner) {
        while (shouldRun) {
            clearScreen();
            System.out.println("Search/Modify selected.");
            System.out.println("Availible entities to search in include:");
            System.out.println(
                    "'Employee', 'Local Warehouse', 'Drone', 'Order', 'Equipment', 'Community Member', 'Payment', 'Reviews'");
            // ^^ add list of entities to make it better - possibly pull it from the
            // database - same with the attributes
            System.out.println(
                    "------------------------------------------------------------------------------------------------------");

            System.out.println("What entity do you want to select to search in?");
            String entityParam = scanner.nextLine();
            checkForQuit(entityParam);
            if (!shouldRun)
                break;

            System.out.println("What attribute would you want to search for?");
            String attribute = scanner.nextLine();
            checkForQuit(attribute);
            if (!shouldRun)
                break;

            System.out.print("Enter " + attribute + ": ");
            String attributeParam = scanner.nextLine();
            checkForQuit(attributeParam);
            if (!shouldRun)
                break;

            System.out.println("Result would be here for " + entityParam + ", " + attribute + ", " + attributeParam);
            System.out.println("Exiting...");
            break;
        }
    }

    private static void clearScreen() { // only works for windows I believe
        try {
            // Execute the "cls" command to clear the Windows console.
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception e) {
            System.err.println("Error clearing console: " + e.getMessage());
        }
    }

    public static void checkForQuit(String input) {
        if ("q".equals(input)) {
            shouldRun = false;
        }
    }
}