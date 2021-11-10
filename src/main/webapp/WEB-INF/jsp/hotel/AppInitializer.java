package lk.sliit.hotel;

import lk.sliit.hotel.dao.manageSystemDAO.EmployeeDAO;
import lk.sliit.hotel.entity.hr.Department;
import lk.sliit.hotel.entity.manager.Employee;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.sql.Date;
import java.util.Arrays;
import java.util.List;

@SpringBootApplication
@EnableJpaRepositories
@ServletComponentScan
public class AppInitializer {
    public static void main(String[] args) {
        SpringApplication.run(AppInitializer.class,args);
    }


//    String str="2020-05-11";
//    Date date= Date.valueOf(str);
//
//    @Bean //Add Demo System User To the System
//    CommandLineRunner init2(EmployeeDAO manageDAO) {
//        return args -> {
//            List<String> names = Arrays.asList ( "1");
//            names.forEach ( name -> manageDAO.save ( new Employee(

//                            "ABC",
//                            "0223123456",
//                            "someOne@gmail.com",
//                            "Colombo",
//                            "Admin",
//                            "1",
//                            date,
//                            "Female",
//                            2112122,
//                            date,
//                            "https://res.cloudinary.com/dwdv5hhga/image/upload/v1600203476/oyt7fspuxa2crzakssl5.jpg",
//                            new Department(1,"Manage")
//                    )
//                    )
//            );
//        };

//}//End Class


//  String str="2020-05-11";
//   Date date= Date.valueOf(str);
//
//    @Bean //Add Demo System User To the System
//  CommandLineRunner init2(EmployeeDAO manageDAO) {
//       return args -> {
//           List<String> names = Arrays.asList ( "1");
//           names.forEach ( name -> manageDAO.save ( new Employee(
//                            1,
//                         "ABC",
//                          "0223123456",
//                           "someOne@gmail.com",
//                         "Colombo",
//                           "Admin",
//                           "1",
//                           date,
//                          "Female",
//                          2112122,
//                           date,
//                         "https://res.cloudinary.com/dwdv5hhga/image/upload/v1600203476/oyt7fspuxa2crzakssl5.jpg",
//                            new Department(1,"Manage")
//                   )
//                   )
//            );
//      };
//   }
//}//End Class


//  String str="2020-05-11";
//   Date date= Date.valueOf(str);
//
//    @Bean //Add Demo System User To the System
//  CommandLineRunner init2(EmployeeDAO manageDAO) {
//       return args -> {
//           List<String> names = Arrays.asList ( "1");
//           names.forEach ( name -> manageDAO.save ( new Employee(
//                            1,
//                         "ABC",
//                          "0223123456",
//                           "someOne@gmail.com",
//                         "Colombo",
//                           "Admin",
//                           "1",
//                           date,
//                          "Female",
//                          2112122,
//                           date,
//                         "https://res.cloudinary.com/dwdv5hhga/image/upload/v1600203476/oyt7fspuxa2crzakssl5.jpg",
//                            new Department(1,"Manage")
//                   )
//                   )
//            );
//      };
//   }
//}//End Class



    String str="2020-05-11";
    Date date= Date.valueOf(str);

    @Bean //Add Demo System User To the System
    CommandLineRunner init2(EmployeeDAO manageDAO) {
        return args -> {
            List<String> names = Arrays.asList ( "1");
            names.forEach ( name -> manageDAO.save ( new Employee(
                            1,
                            "Janani Madushika",
                            "0223123456",
                            "someOne@gmail.com",
                            "Colombo",
                            "Admin",
                            "1",
                            date,
                            "Female",
                            2112122,
                            date,
                            "https://res.cloudinary.com/dwdv5hhga/image/upload/v1600203476/oyt7fspuxa2crzakssl5.jpg",
                            new Department(1,"Manage")
                    )
                    )
            );
        };
    }


}//End Class



