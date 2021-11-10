package lk.sliit.hotel.service.custom;

import lk.sliit.hotel.dto.manager.EmployeeDTO;
import lk.sliit.hotel.dto.manager.MailDTO;
import lk.sliit.hotel.dto.restaurant.restaurantOnlineOrder.RestaurantOnlineOrderDTO;

public interface MailSend {
    void sendMailToNewEmployee(EmployeeDTO employeeDTO);

    void sendMailToCustomer(MailDTO mailDTO);

    void sendMailToOnlineCustomer(RestaurantOnlineOrderDTO onlineOrderDTO);
}
