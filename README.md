Celestial Bodies Database

--------

Instructions

For this project, you need to log in to PostgreSQL with psql to create your database. Do that by entering <code>psql --username=freecodecamp --dbname=postgres</code> in the terminal. Make all the tests below pass to complete the project. Be sure to get creative, and have fun!

Don't forget to connect to your database after you create it 😄

Here's some ideas for other column and table names: <code>description</code>, <code>has_life</code>, <code>is_spherical</code>, <code>age_in_millions_of_years</code>, <code>planet_types</code>, <code>galaxy_types</code>, <code>distance_from_earth</code>.

Notes:
If you leave your virtual machine, your database may not be saved. You can make a dump of it by entering <code>pg_dump -cC --inserts -U freecodecamp universe > universe.sql</code> in a bash terminal (not the psql one). It will save the commands to rebuild your database in universe.sql. The file will be located where the command was entered. If it's anything inside the project folder, the file will be saved in the VM. You can rebuild the database by entering <code>psql -U postgres < universe.sql</code> in a terminal where the .sql file is.

If you are saving your progress on freeCodeCamp.org, after getting all the tests to pass, follow the instructions above to save a dump of your database. Save the <code>universe.sql</code> file in a public repository and submit the URL to it on freeCodeCamp.org.

--------

Complete the tasks below

You should create a database named universe

Be sure to connect to your database with <code>\c universe</code>. Then, you should add tables named galaxy, star, planet, and moon

Each table should have a primary key

Each primary key should automatically increment

Each table should have a <code>name</code> column

You should use the <code>INT</code> data type for at least two columns that are not a primary or foreign key

You should use the <code>NUMERIC</code> data type at least once

You should use the <code>TEXT</code> data type at least once

You should use the <code>BOOLEAN</code> data type on at least two columns

Each "star" should have a foreign key that references one of the rows in <code>galaxy</code>

Each "planet" should have a foreign key that references one of the rows in <code>star</code>

Each "moon" should have a foreign key that references one of the rows in <code>planet</code>

Your database should have at least five tables

Each table should have at least three rows

The <code>galaxy</code> and <code>star</code> tables should each have at least six rows

The <code>planet</code> table should have at least 12 rows

The <code>moon</code> table should have at least 20 rows

Each table should have at least three columns

The <code>galaxy</code>, <code>star</code>, <code>planet</code>, and <code>moon</code> tables should each have at least five columns

At least two columns per table should not accept <code>NULL</code> values

At least one column from each table should be required to be <code>UNIQUE</code>

All columns named name should be of type <code>VARCHAR</code>

Each primary key column should follow the naming convention <code>table_name_id</code>. For example, the <code>moon</code> table should have a primary key column named <code>moon_id</code>

Each foreign key column should have the same name as the column it is referencing
