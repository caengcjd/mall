package mystruts;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

/**
 * 得到FROM数据和跳转网页的数据
 * 
 * @author liuyong
 * 
 */
public class Configuration {
	private Map<String, String> formBeans = new HashMap<String, String>();
	private Map<String, ActionMapping> actions = new HashMap<String, ActionMapping>();

	public Configuration(File file) {
		// dom4j读取配置文件
		SAXReader reader = new SAXReader();
		Document doc;
		try {
			doc = reader.read(file);
			readFormsBeans(doc);
			readActions(doc);
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 读取表单数据
	 * 
	 * @param doc
	 */
	public void readFormsBeans(Document doc) {
		// 得到节点
		List<Element> nodes = doc
				.selectNodes("/mystruts-config/form-beans/form-bean");
		for (Element node : nodes) {
			// 循环取出属性的值
			String name = node.attributeValue("name");
			String type = node.attributeValue("type");
			formBeans.put(name, type);
		}
		// System.out.println(formBeans);

	}

	/**
	 * 读取配置文件中的跳转信息
	 * 
	 * @param doc
	 */
	public void readActions(Document doc) {
		// 得到节点
		List<Element> nodes = doc
				.selectNodes("/mystruts-config/action-mapping/action");
		for (Element node : nodes) {
			ActionMapping mapping = new ActionMapping();
			String name = node.attributeValue("name");
			String path = node.attributeValue("path");
			String type = node.attributeValue("type");
			String input = node.attributeValue("input");
			mapping.setName(name);
			mapping.setPath(path);
			mapping.setInput(input);
			mapping.setType(type);
			// 取出所有的forward节点
			List<Element> fnodes = node.elements("forward");
			for (Element element : fnodes) {
				String fname = element.attributeValue("name");
				String fpath = element.attributeValue("path");
				ActionForward forward = new ActionForward(fname, fpath);
				mapping.getForwards().put(fname, forward);
			}
			actions.put(path, mapping);
		}
		// System.out.println(actions);

	}

	public String getFormBean(String path) {

		return formBeans.get(path);
	}

	public ActionMapping getAction(String path) {

		return actions.get(path);
	}
}
