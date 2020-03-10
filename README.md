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

  