package www.HealthyShop2023.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSession;

@Service
public class sessionServices {
	@Autowired
	HttpSession session;
	
	/**
	* Đọc giá trị của attribute trong session
	* @param name tên attribute
	* @return giá trị đọc được hoặc null nếu không tồn tại
	*/
	public <T> T get(String name) {
		Object data = session.getAttribute(name);
		return data == null? null: (T) data;
	}
	/**
	* Thay đổi hoặc tạo mới attribute trong session
	* @param name tên attribute
	* @param value giá trị attribute
	*/
	public void set(String name, Object value) {
			session.setAttribute(name, value);
	
	}
	/**
	* Xóa attribute trong session
	* @param name tên attribute cần xóa
	*/
	public void remove(String name) {
		Object data = get(name);
		if(data != null) {
			session.removeAttribute(name);
		}
	}
	
	
}
