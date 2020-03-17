# DAT602

## Week1
 This week we looked into the course outline and were introduced to the main content of the course.
 
 The course is based around an assignment with SQL
 
 We are to make a SQL based game that uses tiles for movement. 
 My theme is crypto currency and the aim of the game is to collect the coins when they appear which also includes multiplier bonuses that randomly appear. 
 
 I have installed the required MYSQL community package and configured to run on localhost:3000
 

## Week2

 02/03/2020

Tuple is a group od information

The idea behind relational databases is to link information between records using foriegn keys and idetifiers which also is represented in UML diagrams nicley.

a flat file consists of only one set of data such as an excel spreedsheet

Data is these tables are thought of in terms of logical sets of records

logical sets - tables

Creating a table 
	CREATE TABLE tablename(col1 data_type,col2 datatype)

A student will have a student id, This id is likly to be used as a unique identifier

Creating a table that is a join table would link a table with the primary key courseid and student id

A composit key is a key that is made from a table that has 2 primary forign keys in a join table

DataTypes
	each platofrm has different types that are similar to other platforms but the do vary

EXAMPLES

create table tblStudent(StudentID INTEGER NOT NULL PRIMARY KEY , StudentName VARCHAR(10))

create table tblCourse(CourseID INTEGER NOT NULL PRIMARY KEY, CourseName VARCHAR(10))

  INSERT INTO tblStudent (StudentName) VALUES ("Brad")

    INSERT INTO Student (StudentName,Age) VALUES ("Brad", 32)

  SELECT col1, col2 FROM tableName Where col1 == col2

 SUM(PROD_STOCK*PROD_UNIT) AS TOTAL_STOCKWORTH FROM TBL_PRODUCT

CROSS PRODUCT is two tables being manipulated into a view

## Week2 
  04/03/2020

  delimiter creates a procedure to store to use later


DELIMITER $$
 
CREATE PROCEDURE sp_name()
BEGIN
  -- statements
END $$
 
DELIMITER ;

call sp_name();

Test sub routines outside of the routine to check that it is working before commiting it to the procedure

Using releational databases CREATE DELETE UPDATE

Br

THE CRUD

THE STORY BOARDS

HOMEWORK -- practice common mysql queries
still working on the brief

draw a storyboard of what happens in the game
highscores must be created aswell
Logged in status 
  as someone else is needed to be seen online to try play against someone
  
  ## Week 3 ##
  09/03/2020

  Today CRUD is being discussed for our project milestone Create Update and Delete tables

  Logical ERD and Storyboards for the game needs to be completed
  The logical erd diagram is located in the sessions 4-5 which includes the UML diagram that was discussed last class. Pictures of the brainstorming were taken and are stored on phone.

  Currently looking at logic of the UML and the specific characters abilities ( or what can this class do!) The Player

  Does the character have a ascore or the player have a score

  What is the UML going to look like when moved over to the storyboard?

  STORYBOARD

  Literally drawing story of what happens when you run the game, brainistorm about what fields from what classes are used on each storyboard

  Storyboard requires detailed statements underneath the image, 1 2 3 4 steps etc for the code logic

  Sometimes in order to pass the correct information into the login you may need to post the entire object as the majority of the fields or properties of the player class that has been instatiated are required. This is mainly just neat code ethics

  Register UML "sorry the email does not exsit" "try again" 

  Where is the update class being called from and what is it doing
  does it just update the screen or does it handle manipulation on the fields and properties themselves.

  Character may have a tileID where the character is currently positioned on the map. Do the players keep track of where they are posistioned?
  I think yes as having a central coordinator keeping track of multiple locations and players could get messy

  LAYOUT

  CRUD Table NEEDS ATTENTION

  Login
    retrieve all the required fields like name and password from the database where the login and password matches the login and password of the user.
    A method to delete a player must be implemented
    Creation of the character class. Instantiation

    PRODUCE a CRUD table for the game design

    ERD diagram with notation

## Week 3 Class 2 10/02/2020

  Talking about transactional sql which is a little bit more primitive than other languages as you can use things like the goto statement
  Flow control sstatements let you repeat certain areas of the code.

  flow control statements
    case
    if
    iterate
    leave
    loop
    repeat
    return
    while

    mysql dev docs dev.mysql.com/doc/refman.8.0/
---------------------------------------------------------------------------------------
    if search then statement

    DELIMITER //
      CREATE FUNCTION SimpleComparer(n INT, m INT)
        RETURNS VARCHAR(20)
          BEGIN
            DECLARE s varchar(20);
            if n > m THEN SET s = m;
              ELSE IF n < m THEN SET s = n;
                ELSE
                  SET n = m
            END IF

          END


    DELIMITER;

---------------------------------------------------------------------------------------

CASE value
  WHEN when_value THEN statement_list
   WHEN when_value THEN statement_list
    WHEN when_value THEN statement_list
     WHEN when_value THEN statement_list

     END CASE

---------------------------------------------------------------------------------------


     CREATE PROCEDURE p()
     BEGIN
      DECLARE v INT DEFAULT 1;
      CASE
        WHEN 2 THEN SELECT *;
      END CASE

---------------------------------------------------------------------------------------

CREATE PROCEDURE brad(p1 INT)
  BEGIN
    label1 LOOP

    END LOOP label1

    END



---------------------------------------------------------------------------------------

    REPEAT UNTIL

    END REPEAT
---------------------------------------------------------------------------------------

   WHILE v1 > 0 do
    SET v1 = v1 - 1;
   END WHILE
  END

    

    END REPEAT

---------------------------------------------------------------------------------------
DELIMITER //

     CREATE PROCEDURE verifyCredentials(pEmail VARCHAR(50) ,pPassword VARCHAR(50))
     BEGIN
      SELECT * FROM LOGINTABLE WHERE email == pEmail && password == pPassword
     END

     //DELIMITER


HOMEWORK

Do stored procedures for homework in the class 4-5 session notes


## Week 4 15-03-2020

----Update----
UPDATE [LOW_PRIORITY] [IGNORE] table_reference
    SET assignment_list
    [WHERE where_condition]
    [ORDER BY ...]
    [LIMIT row_count]

value:
    {expr | DEFAULT}

assignment:
    col_name = value

assignment_list:
    assignment [, assignment] ...

    update employee
      set age = age + 1
        where first_name = "mary" AND last_name = "williams";

----Delete----- 

Delete from table where condition

Delete from employees <-- this will delete the entire table>

delete from employees where officeCode = 4;

delete from table_name order by coloum1, coloumn2 limit row_count

delete from customers order by sutomerName limit 10; <-- un likly query to run>

decending is the default order by statement

delete from customers where country = "france" order by creaditLimit LIMIT 5;

You must define the parent before the child

foriegn keys must be set with an add constraint statement



-----Milestone One Due: Wednesday-----

select insert update delete for each of the tables just to show that the tables and working and thier corrosponding joins work, inseret some data that is relevaint to the tables to get some kind of results returned he wants it put into a seperate sql files in a folder and he should be able to run it easily on his system.

Not required to do any joins at this point

Uniory table is a one to many connecting to itself

story board crud table diagram uml


## Week 5 17/03/2020

The report will contain a graphical design for the game

Screen design 
Storyboarding descriptions and usage snarios

-----DESIGN FOR-----
live game play
player registeration
player selection
comfirmation for a game
game administration functions

Draw a crud table
list every table and atrribute that gets afffected in storyboards

Logical entity realiationship diagram using crows foot notation

write a test all ddl and sql required to create the tables and realtiation between table that suppirt you game

He wants them in one procedure that makes all the tables

write and test a set of querier that update insert deletet select for each and every table

Game character

excel spreadsheet crud table
report and 
any sql in a text file a single one that runs and makes everything in one go 

a crud table
___________________________________________________________
Document inside google docs has been structured for the required milestone one tasks

https://docs.google.com/document/d/10myzSAzZMGGTVLX8kt1rtllw6zPfMU2g4cI_2FG-pyo/edit#

Due date is wednesday 25th march
____________________________________________________________