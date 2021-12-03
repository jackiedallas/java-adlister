import java.lang.reflect.Array;
import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {

        ArrayList<Authors> club = new ArrayList<>();

        Authors author = new Authors();
        author.setFirstName("Ian");
        author.setLastName("McSomething");

        Authors author2 = new Authors();
        author2.setFirstName("Adamina");
        author2.setLastName("Flores");

        club.add(author);
        club.add(author2);

        for (Authors names : club) {
            System.out.println("names.getFirstName() = " + names.getFirstName());
            System.out.println("names.getLastName() = " + names.getLastName());
        }

        ArrayList<Quote> quotes = new ArrayList<>();
        Quote quote1 = new Quote();
        quote1.setAuthor(club.get(0).getFirstName());
        quote1.setContent("Hello from the other side");

        System.out.println("quote1.getAuthor() = " + quote1.getAuthor());
        System.out.println("quote1.getContent() = " + quote1.getContent());


    }
}
