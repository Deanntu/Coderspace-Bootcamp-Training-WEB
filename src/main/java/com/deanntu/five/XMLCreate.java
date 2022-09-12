package com.deanntu.five;

import static com.deanntu.five.XMLUtilities.*;

import org.w3c.dom.*;

public class XMLCreate {
	public static void main(String[] args) throws Exception {
		Document document = create("student");
		Element student = document.getDocumentElement();
		student.setAttribute("id", "601");
		addSingleElementText(document, student, "name", "Yildirim Gurses");
		addSingleElementText(document, student, "mark", 2.7);

		long id = getAttribute(student, "id", 0);
		String name = getSingleElementText(student, "name", "");
		double salary = getSingleElementText(student, "salary", 0);
		System.out.println(id + " " + name + " " + salary);

		String path = "C:\\Users\\TUGRADEMIREL19\\Desktop\\workspace\\Student.xml";
		dump(document, path);
	}
}