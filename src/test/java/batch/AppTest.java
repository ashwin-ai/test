package batch;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

/**
 * Unit test for the App class.
 */
public class AppTest {

    @Test
    public void testGreeting() {
        App app = new App();
        String greeting = app.getGreeting();
        assertEquals("Hello, Varnika!", greeting, "Greeting should be 'Hello, Varnika!'");
    }
}
