package utils;

public class SqlUtils {
	public SqlUtils() {
		// TODO Auto-generated constructor stub
	}
	public static void close(AutoCloseable... closeables) {
		try {
			for(AutoCloseable closeable: closeables) {
				if(closeable!=null) {
					closeable.close();
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
