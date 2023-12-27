package ApiTestingUsingKarate.ApiTestingUsingKarate;





import org.junit.Test;
import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;






//public class TestRunner 
//{
//	@Test
//	public Karate runTest()
//{
//	return Karate.run("ApiCalls").relativeTo(getClass());//this comes under jnuit5.karate package (0.9.6 -> realative method is present) //relativeTo -> gets the path of the feature file
//}
//}
//can also run with classpath address of the feature file

@RunWith(Karate.class)// this comes under jnuit4.karate package
@KarateOptions(features = "classpath:ApiTestingUsingKarate/ApiTestingUsingKarate/ApiCalls.feature")
public class TestRunner 
{
	
}