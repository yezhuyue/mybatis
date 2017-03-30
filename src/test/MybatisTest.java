import controller.BlogController;
import dao.BlogMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.ModelMap;

/**
 * Created by tang on 2017/3/29.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mvc.xml","classpath:spring-mybatis.xml"})
public class MybatisTest {
    @Autowired
    private BlogController blogController;
    @Test
    public void test1(){
        ModelMap modelMap = new ModelMap();
        blogController.getBlogs(modelMap);
    }
}
