package dao.factory;

import dao.TestDAO;
import dao.impl.testdaoimpl;

public class DaoFactory {
	public static TestDAO gettestdao() 
	{
		return new testdaoimpl();
	}
}
