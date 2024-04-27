-- ADT-Team 25 Final Project Part-2

-- Author: Ayantika Nandi 
 
CREATE TABLE travel_type (
    travel_id INT AUTO_INCREMENT PRIMARY KEY,
    travel_name VARCHAR(255) NOT NULL
);



-- Author: Ayantika Nandi  

CREATE TABLE class (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(255) NOT NULL UNIQUE
);


-- Author: Megha Nagabhushana Reddy

CREATE TABLE customer_type (
    customer_type_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_type_name VARCHAR(255) NOT NULL
);

-- Author: Shahrukh Quraishi


CREATE TABLE ⁠ ratings ⁠ (
  ⁠ rating_id ⁠ int NOT NULL AUTO_INCREMENT,
  ⁠ is_satisfied ⁠ tinyint(1) NOT NULL,
  ⁠ gender ⁠ tinyint(1) NOT NULL,
  ⁠ Customer_type_id ⁠ int DEFAULT NULL,
  ⁠ age ⁠ int DEFAULT NULL,
  ⁠ type_of_travel_id ⁠ int DEFAULT NULL,
  ⁠ class_id ⁠ int DEFAULT NULL,
  ⁠ Flight ⁠ varchar(255) DEFAULT NULL,
  ⁠ Distance ⁠ int DEFAULT NULL,
  ⁠ Seat_comfort ⁠ int DEFAULT NULL,
  ⁠ Departure_Arrival_time ⁠ int DEFAULT NULL,
  ⁠ convenient ⁠ int DEFAULT NULL,
  ⁠ Food_and_drink ⁠ int DEFAULT NULL,
  ⁠ Gate ⁠ int DEFAULT NULL,
  ⁠ location ⁠ int DEFAULT NULL,
  ⁠ Inflight_wifi_service ⁠ int DEFAULT NULL,
  ⁠ Inflight_entertainment ⁠ int DEFAULT NULL,
  ⁠ Online_support ⁠ int DEFAULT NULL,
  ⁠ Ease_of_Online_booking ⁠ int DEFAULT NULL,
  ⁠ On_board_service ⁠ int DEFAULT NULL,
  ⁠ Leg_room_service ⁠ int DEFAULT NULL,
  ⁠ Baggage_handling ⁠ int DEFAULT NULL,
  ⁠ Checkin_service ⁠ int DEFAULT NULL,
  ⁠ Cleanliness ⁠ int DEFAULT NULL,
  ⁠ Online_boarding ⁠ int DEFAULT NULL,
  ⁠ Departure_Delay_in_Minutes ⁠ int DEFAULT NULL,
  ⁠ Arrival_Delay_in_Minutes ⁠ int DEFAULT NULL,
  PRIMARY KEY (⁠ rating_id ⁠)
) ENGINE=InnoDB AUTO_INCREMENT=130319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO travel_type (travel_name) VALUES ('Personal Travel');
INSERT INTO travel_type (travel_name) VALUES ('Business travel');

INSERT INTO class (class_name) VALUES ('Eco');
INSERT INTO class (class_name) VALUES ('Business');
INSERT INTO class (class_name) VALUES ('Eco Plus');

INSERT INTO customer_type(customer_type_name) VALUES ('Loyal Customer');
INSERT INTO customer_type(customer_type_name) VALUES ('disloyal Customer');


-- Author: Megha Nagabhushana Reddy

#Foreign key constraint for Customer_type_id column:
ALTER TABLE ratings
ADD CONSTRAINT fk_customer_type_id
FOREIGN KEY (Customer_type_id)
REFERENCES customer_type(customer_type_id)
ON DELETE CASCADE;


#Foreign key constraint for type_of_travel_id column:
ALTER TABLE ratings
ADD CONSTRAINT fk_type_of_travel_id
FOREIGN KEY (type_of_travel_id)
REFERENCES travel_type(travel_id)
ON DELETE CASCADE;


#Foreign key constraint for class_id column:
ALTER TABLE ratings
ADD CONSTRAINT fk_class_id
FOREIGN KEY (class_id)
REFERENCES class(class_id)
ON DELETE CASCADE;