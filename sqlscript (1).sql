REM   Script: Session 06
REM   sql code 



CREATE TABLE branch(       
       Branch_ID Varchar(10) primary key,    
       Branch_Name VARCHAR2(15) ,      
       Branch_type varchar2(20)      
) ;

Insert into branch  values ('BB','Birmingham', 'Branch' );

Insert into branch  values ('BM','Manchester',  'Branch'  );

Insert into branch values ('HO','London',  'Head Office' );

CREATE TABLE city (    
      city_name Varchar2(30) primary key,   
      city_ID varchar2(24)       
);

Insert into city values ('London','L1');

Insert into city values ('Birmingham','B1');

Insert into city values ('Manchester','M1');

Insert into city values ('Bolton','BL1');

Insert into city values ('Liverpool','LI1');

Insert into city values ('Leicester','LE1');

CREATE TABLE agent(         
       Agent_Name VARCHAR2(15),        
       city_name Varchar(30),          
       Agent_ID VARCHAR2(40) PRIMARY KEY ,        
       Agent_Email VARCHAR2(40) check(Agent_Email LIKE '%___@___%.__%'),    
       Agent_level Varchar2(30),      
       FOREIGN KEY (city_name) REFERENCES city(city_name)      
)   ;

Insert into agent values ('Lennox Don', 'London', 'A1231','Lenox@gmail.com','Bronze');

Insert into agent values ('Riley Jones', 'London', 'A1242', 'Riley@gmail.com','Gold');

Insert into agent values ('Rowan Stein', 'Manchester', 'A1253', 'Roway@gmail.com','Silver');

Insert into agent values ('Zackary Horton', 'Manchester', 'A1265', ' Zackary@gmail.com','Bronze');

Insert into agent values ('Lara Knowles', 'Bolton', 'A1285', 'Lare@gmail.com','Silver');

Insert into agent values ('Emma Jackson', 'Bolton', 'A1291', 'Emma@gmail.com','Silver');

Insert into agent values ('Benjamin Dean', 'Liverpool', 'A1293', 'Benjamin@gmail.com','Bronze');

Insert into agent values ('Harun Elliott', 'Liverpool', 'A1331', 'Harun@gmail.com','Silver');

Insert into agent values ('Ray Chase', 'Leicester' , 'A1342', 'Ray@gmail.com','Silver');

Insert into agent values ('Laurie Bowman', 'Leicester' , 'A1345', 'Laurine@gmail.com','Silver');

Insert into agent values ('Wilson Gross', 'Birmingham', 'A1361', 'Wilson@gmail.com','Silver');

Insert into agent values ('Jed Mccann', 'Birmingham', 'A1321', 'Jed@gmail.com','Bronze');

CREATE TABLE staff(       
       staff_ID NUMBER(10) PRIMARY KEY ,     
       staff_name Varchar2(40),    
       Branch_ID Varchar(10),    
       Staff_Role VARCHAR2(25),     
        FOREIGN KEY (Branch_ID) REFERENCES branch(Branch_ID)   
) ;

Insert into staff values (2133, 'Lara','HO','Receptionist');

Insert into staff values (2134,'Lenn', 'HO','CTO');

Insert into staff values (2035, 'sam','HO', 'IT Practicitionar');

Insert into staff values (2036, 'ali','HO','Teachnical COnsultant');

Insert into staff values (2037, 'Mohammed','HO', 'CEO');

Insert into staff values (2043, 'keith','BM','Receptionist');

Insert into staff values (2144,'Alexander', 'BM', 'CTO');

Insert into staff values (2053, 'Sara','BB','Receptionist');

Insert into staff values (2154,'Andy', 'BB','CTO');

      CREATE TABLE customer(        
       Customer_ID VARCHAR2(30) PRIMARY KEY ,       
       Customer_Name VARCHAR2(40),       
       Customer_Email VARCHAR2(40) CHECK(Customer_Email LIKE '%___@___%.__%')       
             
) ;

Insert into customer values ( 'C1271',  'Kory Hull', 'Kory@gmail.com');

Insert into customer values ( 'C1285', 'Erwin Becker', 'Erwin@gmail.com');

Insert into customer values ( 'C1295', 'Oliva Mendez', 'Oliva@gmail.com');

Insert into customer values ( 'C1386', 'Elvis Johson', 'Elvis@gmail.com');

Insert into customer values ( 'C1455', 'Ben Ecler', 'Ben@gmail.com');

Insert into customer values ( 'C1470', 'Adam Dorsey', 'Adam@gmail.com');

Insert into customer values ( 'C1485', 'Isaac Sutton', 'Isaac@gmail.com');

Insert into customer values ( 'C1555', 'Teri Franco', 'unkown@gmail.com');

Insert into customer values ( 'C1689', 'Eleen Morgan ', 'unkown@gmail.com' );

Insert into customer values ( 'C1785', 'Suzie Terrel', 'Suzie@gmail.com');

Insert into customer values ( 'C1345','Jevon Buckner', 'Jevon@gmail.com');

Insert into customer values ( 'C1346','Jade', 'Jed@gmail.com');

Insert into customer values ( 'C1211',  'Wade Riley ', 'Wade@hotmail.com');

Insert into customer values ( 'C1212', 'Emily Becker', 'Emily@gmail.com');

Insert into customer values ( 'C1213', 'Georgi Meckenzie', 'Georgi@gmail.com');

Insert into customer values ( 'C1214', 'Carl Johson', 'Carl@gmail.com');

Insert into customer values ( 'C1215', 'bejamin Terry', 'bejamin@gmail.com');

Insert into customer values ( 'C1216', 'James Charlie', 'unkown@gmail.com');

Insert into customer values ( 'C1217', 'Mandy Isaac', 'Mandy@gmail.com');

Insert into customer values ( 'C1218', 'William Damian', 'William@gmail.com');

Insert into customer values ( 'C1219', 'Isla Bethany ', 'Isla@gmail.com' );

Insert into customer values ( 'C1300', 'Ava	Megan', 'unkown@gmail.com');

Insert into customer values ( 'C1311','Lily	Michelle', 'Lily@gmail.com');

Insert into customer values ( 'C1312','Taylor Smith', 'Taylor@gmail.com');

Insert into customer values ('C1313','claudiu oniga', 'claudiu@gmail.com');

Insert into customer values ('C1314','jaspreet', 'jass@gmail.com');

CREATE TABLE vehicles(        
       vehicle_ID Varchar(10) PRIMARY KEY ,      
       Branch_ID Varchar(10),    
       city_name Varchar(30),        
       Vehicle_Model VARCHAR2 (20),         
       Vehicle_Price NUMBER, 
       Price_Date Date, 
       FOREIGN KEY (city_name) REFERENCES city(city_name),    
       FOREIGN KEY (Branch_ID) REFERENCES branch(Branch_ID)     
) ;

Insert into vehicles values ( 'VLP1','BM', 'Liverpool',  'Coupe', 9000,'06-Dec-2022' );

Insert into vehicles values ('VLP2', 'BM','Liverpool', 'SUV', 90700 ,'06-Dec-2022');

Insert into vehicles values ('VLP3','BM','Liverpool', 'Sedan', 7000 ,'06-Dec-2022');

Insert into vehicles values ('VLP4','BM','Liverpool', 'Sedan', 2450 ,'06-Dec-2022');

Insert into vehicles values ('VLP5','BM','Liverpool', 'SUV', 4010 ,'06-Dec-2022');

Insert into vehicles values ('VBB1','BM','Bolton', 'Crossover', 6000 ,'06-Dec-2022');

Insert into vehicles values ('VBB2','BM','Bolton', 'Pickup Van', 7500,'06-Dec-2022');

Insert into vehicles values ('VBB3','BM','Bolton','sedan', 2000 ,'06-Dec-2022');

Insert into vehicles values ('VBB4','BM','Bolton','sedan', 54300 ,'06-Dec-2022');

Insert into vehicles values ('VBB5','BM','Bolton','sedan', 62900 ,'06-Dec-2022');

Insert into vehicles values('VB1','BB','Birmingham', 'Coupe',2006 ,'06-Dec-2022');

Insert into vehicles values ('VB2','BB','Birmingham', 'Crossover', 3822 ,'06-Dec-2022');

Insert into vehicles values ('VB3', 'BB','Birmingham', 'Hatchback', 3822 ,'06-Dec-2022');

Insert into vehicles values ('VB4', 'BB','Birmingham', 'Sedan', 2600 ,'06-Dec-2022');

Insert into vehicles values ('VB5', 'BB','Birmingham', 'Sedan', 1890 ,'06-Dec-2022');

Insert into vehicles values('VB6','BB','Birmingham', 'Coupe', 4194 ,'06-Dec-2022');

Insert into vehicles values ('VB7','BB','Birmingham', 'Crossover', 973 ,'06-Dec-2022');

Insert into vehicles values ('VB8', 'BB','Birmingham', 'Hatchback', 4119 ,'06-Dec-2022');

Insert into vehicles values ('VB9', 'BB','Birmingham', 'Sedan', 4627 ,'06-Dec-2022');

Insert into vehicles values('VB10','BB','Birmingham', 'Coupe',1409 ,'06-Dec-2022');

Insert into vehicles values ('VB11','BB','Birmingham', 'Crossover', 1144 ,'06-Dec-2022');

Insert into vehicles values ('VB12', 'BB','Birmingham', 'Hatchback', 3357 ,'06-Dec-2022');

Insert into vehicles values ('VB13', 'BB','Birmingham', 'Sedan', 2083,'06-Dec-2022');

Insert into vehicles values ('VB14', 'BB','Birmingham', 'Sedan', 4983 ,'06-Dec-2022');

Insert into vehicles values ('VB15', 'BB','Birmingham', 'Sedan', 1959 ,'06-Dec-2022');

Insert into vehicles values('VB16','BB','Birmingham', 'Coupe', 2475 ,'06-Dec-2022');

Insert into vehicles values ('VB17','BB','Birmingham', 'Crossover', 3712 ,'06-Dec-2022');

Insert into vehicles values ('VB18', 'BB','Birmingham', 'Hatchback', 4756 ,'06-Dec-2022');

Insert into vehicles values ('VB19', 'BB','Birmingham', 'Sedan', 2600 ,'06-Dec-2022');

Insert into vehicles values('VB20','BB','Birmingham', 'Coupe', 2462 ,'06-Dec-2022');

Insert into vehicles values ('VB21','BB','Birmingham', 'Crossover', 7000 ,'06-Dec-2022');

Insert into vehicles values ('VB23', 'BB','Birmingham', 'Hatchback', 4309 ,'06-Dec-2022');

Insert into vehicles values ('VB24', 'BB','Birmingham', 'Sedan', 1094 ,'06-Dec-2022');

Insert into vehicles values ('VB25', 'BB','Birmingham', 'Sedan', 2664,'06-Dec-2022');

Insert into vehicles values ('VB26', 'BB','Birmingham', 'Sedan', 1890 ,'06-Dec-2022');

Insert into vehicles values ('VL1', 'HO','London', 'Hatchback',50000,'06-Dec-2022');

Insert into vehicles values ('VL2', 'HO','London', 'SUV',  3500 ,'06-Dec-2022');

Insert into vehicles values ('VL3', 'HO','London', 'Coupe', 2500,'06-Dec-2022');

Insert into vehicles values ('VL4', 'HO','London', 'Sedan', 2000 ,'06-Dec-2022');

Insert into vehicles values ('Vl5', 'HO','London', 'Sedan',  3000,'06-Dec-2022');

Insert into vehicles values ('VL6', 'HO','London', 'Pickup Van',79000,'06-Dec-2022');

Insert into vehicles values ('VL7', 'HO','London', 'Hatchback', 5783,'06-Dec-2022');

Insert into vehicles values ('VL8', 'HO','London', 'Coupe', 2500,'06-Dec-2022');

Insert into vehicles values ('VL9', 'HO','London', 'Hatchback', 5783,'06-Dec-2022');

Insert into vehicles values ('VL10', 'HO','London', 'Coupe', 2500,'06-Dec-2022');

Insert into vehicles values ('VL11', 'HO','London', 'Hatchback', 5783,'06-Dec-2022');

Insert into vehicles values ('VL12', 'HO','London', 'Coupe', 2500,'06-Dec-2022');

Insert into vehicles values ('VL13', 'HO','London', 'Sedan', 2500,'06-Dec-2022');

Insert into vehicles values ('VL14', 'HO','London', 'Coupe', 2500,'06-Dec-2022');

Insert into vehicles values ('VL15', 'HO','London', 'Crossover', 25000,'06-Dec-2022');

Insert into vehicles values ('VLT1','BB','Leicester', 'Pickup Van',2300 ,'06-Dec-2022');

Insert into vehicles values ('VLT2','BB','Leicester', 'Coupe',42000,'06-Dec-2022');

Insert into vehicles values ('VLT3','BB','Leicester', 'Hatchback',80000 ,'06-Dec-2022');

Insert into vehicles values ('VLT4','BB','Leicester', 'Sedan',85000 ,'06-Dec-2022');

Insert into vehicles values ('VLT5','BB','Leicester', 'Sedan', 6900 ,'06-Dec-2022');

Insert into vehicles values ('VM1', 'BM','Manchester', 'Hatchback',3000,'06-Dec-2022');

Insert into vehicles values ('VM2', 'BM','Manchester', 'Coupe',15000,'06-Dec-2022');

Insert into vehicles values ('VM3', 'BM','Manchester', 'Hatchback',3000 ,'06-Dec-2022');

Insert into vehicles values ('VM4', 'BM','Manchester', 'Sedan',4700 ,'06-Dec-2022');

Insert into vehicles values ('VM5', 'BM','Manchester', 'Sedan', 4567 ,'06-Dec-2022');

Insert into vehicles values ('VM6', 'BM','Manchester', 'Sedan', 39000 ,'06-Dec-2022');

Insert into vehicles values ('VM7', 'BM','Manchester', 'Sedan', 39000 ,'06-Dec-2022');

Insert into vehicles values ('VM8', 'BM','Manchester', 'Sedan', 39000 ,'06-Dec-2022');

Insert into vehicles values ('VM9', 'BM','Manchester', 'Sedan', 3987 ,'06-Dec-2022');

CREATE TABLE bookings(         
       BOOKING_ID Number(30) PRIMARY KEY,         
       Customer_ID Varchar(30),        
       Booking_Type Varchar(20),     
       city_name Varchar(30),     
       Agent_ID VARCHAR2(40),     
       Branch_ID Varchar(10),         
       vehicle_ID Varchar(10),     
       Dateofbooking date check(Dateofbooking >'06-Dec-2022'),     
       timeslot Number(20),     
       FOREIGN KEY (Branch_ID) REFERENCES branch(Branch_ID),        
       FOREIGN KEY (Customer_ID) REFERENCES customer(Customer_ID),        
       FOREIGN KEY (Agent_ID) REFERENCES agent(Agent_ID),     
       FOREIGN KEY (city_name) REFERENCES city(city_name),     
      FOREIGN KEY (Vehicle_ID) REFERENCES vehicles (Vehicle_ID)     
);

Insert into bookings values (1, 'C1271', 'Hire',  'Liverpool', 'A1293','BM','VLP1' ,'08-Dec-22', 1);

Insert into bookings values (2, 'C1285',  'Hire', 'Liverpool','A1331','BM','VLP2' ,'23-Dec-22', 1);

Insert into bookings values (3, 'C1295',  'Buy', 'Liverpool','A1293','BM','VLP3' ,'29-Dec-22',1);

Insert into bookings values (4, 'C1386',  'Buy', 'Liverpool','A1293','BM','VLP4' ,'23-Dec-22',1);

Insert into bookings values (5, 'C1386',  'Buy', 'Liverpool','A1293','BM','VLP5' ,'23-Dec-22',1);

Insert into bookings values (6,  'C1455', 'Buy', 'London','A1231', 'HO','VL1','26-Dec-22',2);

Insert into bookings values (7,  'C1470', 'Buy','London','A1242','HO' ,'VL2','16-Dec-22',1);

Insert into bookings values (8,  'C1485', 'Buy', 'London','A1242', 'HO','VL3','19-Dec-22',1);

Insert into bookings values (9,  'C1555', 'Buy','London','A1242', 'HO','VL4','22-Dec-22',1);

Insert into bookings values (10, 'C1689', 'Buy','London','A1242', 'HO','VL6','27-Dec-22',2);

Insert into bookings values (11, 'C1455', 'Buy','London','A1242','HO','VL7','30-Dec-22' ,1);

Insert into bookings values (12, 'C1455', 'Buy','London','A1242','HO' ,'VL8','15-Dec-22',1);

Insert into bookings values (13, 'C1785', 'Hire','London','A1242','HO' ,'VL9','28-Dec-22',3);

Insert into bookings values (14, 'C1345', 'Hire','London','A1242','HO','VL10','30-Dec-22' ,1);

Insert into bookings values (15, 'C1346', 'Buy','London','A1242','HO','VL11','15-Dec-22',1);

Insert into bookings values (16, 'C1555', 'Buy','London','A1242','HO','VL12' ,'23-Dec-22',1);

Insert into bookings values (17, 'C1345', 'Hire','London','A1231','HO','VL13','27-Dec-22',1);

Insert into bookings values (18, 'C1346', 'Buy','London','A1231','HO','VL14' ,'30-Dec-22' ,2);

Insert into bookings values (19, 'C1211', 'Buy','Bolton','A1285','BM','VBB1','11-Dec-22',2);

Insert into bookings values (20, 'C1212', 'Buy','Bolton','A1291', 'BM','VBB2','14-Dec-22', 2);

Insert into bookings values (21, 'C1211', 'Hire','Bolton','A1285','BM','VBB3','11-Dec-22', 2);

Insert into bookings values (22, 'C1212', 'Buy','Bolton','A1291','BM','VBB4','14-Dec-22', 1);

Insert into bookings values (23, 'C1211', 'Hire','Bolton','A1285','BM','VBB5','11-Dec-22',1);

Insert into bookings values (24, 'C1213', 'Hire','Birmingham','A1361','BB','VB1','09-Dec-22',1);

Insert into bookings values (25, 'C1214', 'Hire','Birmingham','A1321','BB','VB2','11-Dec-22',1);

Insert into bookings values (26, 'C1215', 'Buy','Birmingham','A1321','BB','VB3','10-Dec-22',1);

Insert into bookings values (27, 'C1213', 'Buy','Birmingham','A1321','BB','VB4','13-Dec-22',1);

Insert into bookings values (28, 'C1216', 'Buy','Birmingham','A1321','BB','VB5','11-Dec-22',1);

Insert into bookings values (30, 'C1217', 'Hire','Leicester','A1345','BB','VLT1','11-Dec-22', 1);

Insert into bookings values (31, 'C1218', 'Hire','Leicester','A1342','BB','VLT2','09-Dec-22', 1);

Insert into bookings values (32, 'C1219', 'Buy','Leicester','A1342','BB','VLT3','07-Dec-22', 1);

Insert into bookings values (33, 'C1219', 'Buy','Leicester','A1242','BB','VLT4','09-Dec-22', 1);

Insert into bookings values (34, 'C1219', 'Buy','Leicester','A1345','BB','VLT5','09-Dec-22', 1);

Insert into bookings values (35, 'C1300', 'Buy','Leicester','A1253','BB','VM1','09-Dec-22', 1);

Insert into bookings values (36, 'C1311', 'Buy','Leicester','A1265','BB','VM2','09-Dec-22', 1);

Insert into bookings values (37, 'C1312', 'Hire','Leicester','A1253','BB','VM3','09-Dec-22', 1);

Insert into bookings values (38, 'C1313', 'Buy','Leicester','A1265','BB','VM4','09-Dec-22', 1);

Insert into bookings values (39, 'C1311', 'Buy','Leicester','A1253','BB','VM5','09-Dec-22', 1);

Insert into bookings values (40, 'C1312', 'Buy','Leicester','A1265','BB','VM6','09-Dec-22', 1);

Insert into bookings values (41, 'C1312', 'Hire','Leicester','A1265','BB','VM7','09-Dec-22', 1);

Insert into bookings values (42, 'C1311', 'Buy','Leicester','A1253','BB','VM8','09-Dec-22', 1);

Insert into bookings values (43, 'C1312', 'Buy','Leicester','A1265','BB','VM9','09-Dec-22', 1);

CREATE TABLE sales(    
              Sales_ID VARCHAR2(40)PRIMARY KEY,    
              Agent_ID VARCHAR2(40),    
              Customer_ID VARCHAR2(30),    
             BOOKING_ID Number(30),    
              vehicle_ID Varchar(10),    
                Sale_Price NUMBER,    
              FOREIGN KEY (vehicle_ID) REFERENCES Vehicles (vehicle_ID),    
              FOREIGN KEY(Agent_ID) REFERENCES Agent (Agent_ID),    
              FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),     
              FOREIGN KEY(Booking_ID) REFERENCES Bookings(Booking_ID)    
);

insert into sales values ('S1','A1265' ,'C1313',37,'VM3',3200);

Insert into sales values ('S2','A1253','C1311', 38,'VM4',4900);

Insert into sales values ('S3','A1265','C1312',39,'VM5',40000);

Insert into sales values ('S4', 'A1342','C1219',32,'VLT3',80000);

Insert into sales values ('S5', 'A1242','C1219',33,'VLT4',85000);

Insert into sales values ('S6', 'A1321','C1216',28,'VB5',20000);

Insert into sales values ('S7', 'A1321','C1215',26,'VB3',34000);

Insert into sales values ('S8', 'A1321','C1216',28,'VB5',20000);

Insert into sales values ('S9', 'A1242','C1219',33,'VLT4',85000);

Insert into sales values ('S10', 'A1291','C1212',20,'VBB2',8000);

Insert into sales values ('S11', 'A1291','C1212',22,'VBB5',65000);

Insert into sales values ('S12', 'A1293', 'C1295',3,'VLP3',7000);

Insert into sales values ('S13', 'A1293','C1386',4,'VLP4',2500);

Insert into sales values ('S14', 'A1293','C1386',5,'VLP5',4200);

Insert into sales values ('S15', 'A1231','C1455',6,'VL1',51000);

Insert into sales values ('S16', 'A1242','C1470',7,'VL2',3700);

Insert into sales values ('S17', 'A1242','C1485',8,'VL3',3000);

Insert into sales values ('S18', 'A1242','C1689',10,'VL6',79100);

Insert into sales values ('S19', 'A1242','C1455',12,'VL8',2700);

Insert into sales values ('S20', 'A1242','C1346',15,'VL11',5800);

Insert into sales values ('S21', 'A1242','C1555',16,'VL12',2700);

Insert into sales values ('S22','A1342','C1219',32,'VLT3',80000);

Insert into sales values ('S23', 'A1242','C1219',33,'VLT4',85000);

create view GB as 
select ai.agent_name,ai.agent_level,s.agent_id,s.Sale_price,v.vehicle_model 
from agent  ai 
 
join sales  s on ai.agent_id=s.agent_id 
join vehicles v on v.vehicle_id=s.vehicle_id;

select * from GB;

create view MaxPAL as  
select max(sale_price) as maxprice ,agent_id,agent_level,vehicle_model 
from GB  
where  agent_level='Gold' or agent_level='Bronze' 
group by  agent_id,agent_level,vehicle_model;

select * from MaxPAL;

create table delete_customers( 
customer_id varchar (30) primary key , 
customer_name varchar(40), 
customer_email varchar(40) 
);

create or replace trigger delete_trigger  
After delete on customer  
for each row  
begin 
insert into delete_customers values (:old.customer_id , :old.customer_name ,:old.customer_email); 
end;
/

delete from customer where customer_name='jaspreet';

select * from delete_customers;

