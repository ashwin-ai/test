package batch;

/**
 * Main application class.
 */
public class App {
    public static void main(String[] args) {
        String name = "Varnika";
        System.out.println("Hello, " + name + "!");
    }

    /**
     * Method to return a greeting message.
     * @param name - The name to be greeted.
     * @return Greeting message.
     */
    public String getGreeting(String name) {
        return "Hello, " + name + "!";
    }
}
