DROP TABLE  student;

DROP TABLE  teacher;

DROP TABLE  course; 

DROP TABLE  studentcourse;

CREATE TABLE student (
  u_id number(9) NOT NULL,
  ssn varchar2(11) ,
  lastname varchar2(40)  NOT NULL,
  firstname varchar2(20)  NOT NULL,
  phone varchar2(12) ,
  address varchar2(40) ,
  city varchar2(20) ,
  state varchar2(2) ,
  zip varchar2(5) ,
  PRIMARY KEY (u_id)
) ;

CREATE TABLE  teacher (
  teacher_id number(9) NOT NULL,
  ssn varchar2(11) ,
  lastname varchar2(40)  NOT NULL,
  firstname varchar2(20)  NOT NULL,
  phone varchar2(12) ,
  office varchar2(7) ,
  address varchar2(40) ,
  city varchar2(20) ,
  state varchar2(2) ,
  zip varchar2(5) ,
  PRIMARY KEY (teacher_id)
) ;

CREATE TABLE  course (
  course_id varchar2(8) NOT NULL,
  title varchar2(80)  NOT NULL,
  credit_count number(1) ,
  category varchar2(4) ,
  semester varchar2(6) ,
  teacher_id number(9) NOT NULL,
  PRIMARY KEY (course_id)
) ;

CREATE TABLE  studentcourse (
  u_id number(9) NOT NULL,
  course_id varchar2(8)  NOT NULL,
  PRIMARY KEY (u_id,course_id)
) ;

insert into student values(1, '998-72-3567', 'Singer', 'Albert', '801 826-0752', '123 3rd Street', 'St. George', 'UT', '84152');
insert into student values(2, '722-51-5454', 'Thompson', 'Mike', '219 547-9982', '3 Bald Eagle Drive', 'Chicago', 'IL', '60631');
insert into student values(3, '893-72-1158', 'McCluck', 'Serge', '707 448-4982', '1 Fizzy Street', 'Anaheim', 'CA', '95688');
insert into student values(4, '724-80-9391', 'MacDouglas', 'Spencer', '415 354-7128', '47 Cumbre Ct.', 'Oakland', 'CA', '94612');
insert into student values(5, '427-17-2319', 'Dingy', 'Ann', '415 836-7128', '3410 RedWing St.', 'Santa Clara', 'CA', '94301');
insert into student values(6, '672-71-3249', 'Suko', 'Ahi', '415 935-4228', '3 Silver Ct.', 'Walnut Creek', 'CA', '94595');
insert into student values(7, '267-41-2394', 'Farhey', 'Michael', '408 286-2428', '44 Homestead Pkwy', 'San Jose', 'CA', '95128');
insert into student values(8, '472-27-2349', 'Dunhill', 'Curt', '707 938-6445', 'PO Box 792', 'Santa Clara', 'CA', '94301');
insert into student values(9, '527-72-3246', 'Blue', 'Robert', '615 297-2723', '22 Cowboy Rd.', 'Nashville', 'TN', '37215');
insert into student values(10, '172-32-1176', 'Black', 'John', '408 496-7223', '10932 Bigge Rd.', 'Menlo Park', 'CA', '94025');
insert into student values(11, '724-08-9931', 'Lingenfelter', 'Daniel', '308 843-2991', '752 Telescope Rd.', 'Marietta', 'GA', '94609');
insert into student values(12, '274-80-9391', 'Straight', 'Richard', '415 834-2919', '5420 University Av.', 'Oakland', 'CA', '94609');
insert into student values(13, '756-30-7391', 'Karsen', 'Lynda', '415 534-9219', '72 James St.', 'Oakland', 'CA', '94609');
insert into student values(14, '712-45-1867', 'Castillo', 'Jose', '615 996-8275', '28 Park Pl. #86', 'Ann Arbor', 'MI', '48105');
insert into student values(15, '846-92-7186', 'Hunter', 'Cindy', '415 836-7128', '41 Smart St.', 'Palo Alto', 'CA', '94301');

insert into teacher values(1, '807-91-6654', 'Steiner', 'Lance', '301 946-8853', 'VMH2557', '3525 Gilboa Dr', 'Mount Airy', 'MD', '21771');
insert into teacher values(2, '899-46-2035', 'Harmen', 'Anne', '801 826-0752', 'AVW3256', '2157 5th Street', 'St. George', 'UT', '84152');
insert into teacher values(3, '486-29-1786', 'Lockley', 'Sharon', '415 585-4620', 'ARC2303', '18 Brooklyn Av.', 'San Francisco', 'CA', '94130');
insert into teacher values(4, '648-92-1872', 'Hall', 'Mark', '512 745-6402', 'KNI3343', '407 Orchard Lake Rd', 'Dublin', 'GA', '31021');
insert into teacher values(5, '341-22-1782', 'Allen', 'Paul', '206 843-0462', 'AVW3521', '6451 W Mercer Way', 'Mercer Island', 'WA', '98040');
insert into teacher values(6, '409-56-7008', 'Adams', 'Abraham', '703 658-9932', 'MAT2511', '4062 Tolers Ferry Rd', 'Huddleston', 'VA', '24104');
insert into teacher values (7, '213-46-8915', 'Blue', 'Maggie', '305 986-7020', 'SPH2474', '3010 N Bay Rd', 'Miami', 'FL', '33140');
insert into teacher values(8, '238-95-7766', 'Carson', 'Honey', '415 548-7723', 'CSS4511', '89 MLK Blvd.', 'Berkeley', 'CA', '94705');
insert into teacher values(9, '420-69-1738', 'Trump', 'Donald', '202 100-1000', 'PLS2241', '1600 Pennsylvania Ave', 'Washington', 'DC', '20001');



INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('UMD101', 'About UMD', 1, 'UMD', 'fall', 9);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('BMGT423A', 'Stock Market Prediction', 3, 'BMGT', 'spring', 5);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('PSYC411', 'Analyzing the Obsessive', 4, 'PSYC', 'fall', 4);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('BMGT105', 'Break-Even Analysis', 3, 'BMGT', 'fall', 1);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('PUBH465A', 'Food Science', 3, 'PUBH', 'spring', 7);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('PUBH498I', 'Nutritional Physiology', 4, 'PUBH', 'fall', 7);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('NUTR150', 'Twenty Meals you can make in 20 minutes', 1, 'NUTR', 'fall', 7);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('CMSC322', 'Usability Testing', 3, 'CMSC', 'spring', 2);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('BMGT438A', 'Quantitative Analysis for Managerial Decision Making', 3, 'BMGT', 'spring', 5);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('ARCH798H', 'Bridge and Tunnel Design for the Hyperloop', 4, 'ARCH', 'spring', 3);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('MATH340', 'Vector/Multivariable Calculus', 3, 'MATH', 'fall', 6);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('MECH424', 'Advanced Fluid Dynamics', 4, 'MECH', 'fall', 8);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('MECH325', 'Vibrations', 3, 'MECH', 'spring', 8);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('MECH255', 'Internal Combusiton Engine Design', 3, 'MECH', 'fall', 8);
INSERT INTO course (course_id, title, credit_count, category, semester, teacher_id) VALUES('CMSC422', 'Machine Learning', 3, 'CMSC', 'spring', 2);

INSERT INTO studentcourse (u_id, course_id) VALUES(1, 'UMD101');
INSERT INTO studentcourse (u_id, course_id) VALUES(1, 'NUTR150');
INSERT INTO studentcourse (u_id, course_id) VALUES(1, 'BMGT105');
INSERT INTO studentcourse (u_id, course_id) VALUES(2, 'BMGT423A');
INSERT INTO studentcourse (u_id, course_id) VALUES(2, 'BMGT438A');
INSERT INTO studentcourse (u_id, course_id) VALUES(2, 'CMSC422');
INSERT INTO studentcourse (u_id, course_id) VALUES(2, 'CMSC322');
INSERT INTO studentcourse (u_id, course_id) VALUES(2, 'MATH340');
INSERT INTO studentcourse (u_id, course_id) VALUES(3, 'ARCH798H');
INSERT INTO studentcourse (u_id, course_id) VALUES(3, 'PUBH498I');
INSERT INTO studentcourse (u_id, course_id) VALUES(3, 'MECH424');
INSERT INTO studentcourse (u_id, course_id) VALUES(3, 'CMSC422');
INSERT INTO studentcourse (u_id, course_id) VALUES(3, 'BMGT438A');
INSERT INTO studentcourse (u_id, course_id) VALUES(4, 'MECH424');
INSERT INTO studentcourse (u_id, course_id) VALUES(4, 'MECH325');
INSERT INTO studentcourse (u_id, course_id) VALUES(4, 'MECH255');
INSERT INTO studentcourse (u_id, course_id) VALUES(4, 'PSYC411');
INSERT INTO studentcourse (u_id, course_id) VALUES(4, 'BMGT105');
INSERT INTO studentcourse (u_id, course_id) VALUES(5, 'CMSC422');
INSERT INTO studentcourse (u_id, course_id) VALUES(5, 'CMSC322');
INSERT INTO studentcourse (u_id, course_id) VALUES(5, 'BMGT105');
INSERT INTO studentcourse (u_id, course_id) VALUES(5, 'BMGT438A');
INSERT INTO studentcourse (u_id, course_id) VALUES(5, 'NUTR150');
INSERT INTO studentcourse (u_id, course_id) VALUES(6, 'BMGT105');
INSERT INTO studentcourse (u_id, course_id) VALUES(6, 'CMSC422');
INSERT INTO studentcourse (u_id, course_id) VALUES(6, 'PUBH498I');
INSERT INTO studentcourse (u_id, course_id) VALUES(6, 'MECH255');
INSERT INTO studentcourse (u_id, course_id) VALUES(6, 'CMSC322');
INSERT INTO studentcourse (u_id, course_id) VALUES(7, 'BMGT438A');
INSERT INTO studentcourse (u_id, course_id) VALUES(7, 'BMGT423A');
INSERT INTO studentcourse (u_id, course_id) VALUES(7, 'UMD101');
INSERT INTO studentcourse (u_id, course_id) VALUES(7, 'PSYC411');
INSERT INTO studentcourse (u_id, course_id) VALUES(7, 'PUBH465A');
INSERT INTO studentcourse (u_id, course_id) VALUES(8, 'ARCH798H');
INSERT INTO studentcourse (u_id, course_id) VALUES(8, 'NUTR150');
INSERT INTO studentcourse (u_id, course_id) VALUES(8, 'MECH424');
INSERT INTO studentcourse (u_id, course_id) VALUES(8, 'MECH325');
INSERT INTO studentcourse (u_id, course_id) VALUES(8, 'MATH340');
INSERT INTO studentcourse (u_id, course_id) VALUES(9, 'MECH255');
INSERT INTO studentcourse (u_id, course_id) VALUES(9, 'BMGT423A');
INSERT INTO studentcourse (u_id, course_id) VALUES(9, 'MECH325');
INSERT INTO studentcourse (u_id, course_id) VALUES(9, 'BMGT438A');
INSERT INTO studentcourse (u_id, course_id) VALUES(9, 'NUTR150');
INSERT INTO studentcourse (u_id, course_id) VALUES(10, 'MATH340');
INSERT INTO studentcourse (u_id, course_id) VALUES(10, 'BMGT105');
INSERT INTO studentcourse (u_id, course_id) VALUES(10, 'MECH424');
INSERT INTO studentcourse (u_id, course_id) VALUES(10, 'PSYC411');
INSERT INTO studentcourse (u_id, course_id) VALUES(10, 'CMSC422');
INSERT INTO studentcourse (u_id, course_id) VALUES(11, 'PUBH465A');
INSERT INTO studentcourse (u_id, course_id) VALUES(11, 'ARCH798H');
INSERT INTO studentcourse (u_id, course_id) VALUES(11, 'PUBH498I');
INSERT INTO studentcourse (u_id, course_id) VALUES(11, 'UMD101');
INSERT INTO studentcourse (u_id, course_id) VALUES(11, 'CMSC322');
INSERT INTO studentcourse (u_id, course_id) VALUES(12, 'BMGT105');
INSERT INTO studentcourse (u_id, course_id) VALUES(12, 'PUBH465A');
INSERT INTO studentcourse (u_id, course_id) VALUES(12, 'PUBH498I');
INSERT INTO studentcourse (u_id, course_id) VALUES(12, 'ARCH798H');
INSERT INTO studentcourse (u_id, course_id) VALUES(12, 'MECH424');
INSERT INTO studentcourse (u_id, course_id) VALUES(13, 'MATH340');
INSERT INTO studentcourse (u_id, course_id) VALUES(13, 'UMD101');
INSERT INTO studentcourse (u_id, course_id) VALUES(13, 'MECH325');
INSERT INTO studentcourse (u_id, course_id) VALUES(13, 'NUTR150');
INSERT INTO studentcourse (u_id, course_id) VALUES(13, 'BMGT438A');
INSERT INTO studentcourse (u_id, course_id) VALUES(14, 'BMGT423A');
INSERT INTO studentcourse (u_id, course_id) VALUES(14, 'CMSC422');
INSERT INTO studentcourse (u_id, course_id) VALUES(14, 'CMSC322');
INSERT INTO studentcourse (u_id, course_id) VALUES(14, 'PSYC411');
INSERT INTO studentcourse (u_id, course_id) VALUES(14, 'BMGT105');
INSERT INTO studentcourse (u_id, course_id) VALUES(15, 'CMSC322');
INSERT INTO studentcourse (u_id, course_id) VALUES(15, 'CMSC422');
INSERT INTO studentcourse (u_id, course_id) VALUES(15, 'BMGT438A');
INSERT INTO studentcourse (u_id, course_id) VALUES(15, 'MECH424');
INSERT INTO studentcourse (u_id, course_id) VALUES(15, 'NUTR150');