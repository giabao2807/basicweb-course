package connection;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

public class DbProvider {
	public static String CONFIG_PATH ="/Users/dinhgiabao/Desktop/HK1-nam3/CNWeb/preExam/student_mvc/config.properties";

	public static Properties getProps() {
		Properties props = new Properties();
		try {
			props.load(new FileInputStream(new File(CONFIG_PATH)));
		} catch (Exception e) {
		}

		return props;
	}
}