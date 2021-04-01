import com.ssm.service.BooksService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    @Test
    public void test(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        BooksService bookService = applicationContext.getBean("booksService", BooksService.class);
        System.out.println(bookService.selectAll());
    }
}
