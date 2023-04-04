# INFO330 Homework 1: Exploring Relations
Greetings!

Your job in this homework is to explore the SQLite database contained within this repository. There are a number of queries and actions we want you to execute, and capture the results from, against this database.

If you have not done so yet, fork this repository so you have your own copy in your GitHub profile. Then clone it (`git clone https://github.com/{yourusername}/INFO330-ExploringRelations1`) on your local machine.

If you are already familiar with SQLite, or just want to get to the homework directly, jump to the [Homework](#homework) section.

## Installing SQLite
SQLite is often already installed on many operating systems. www.sqlite.org has detailed instructions for how to obtain it for your operating system if you do not have it (or consult the slides).

## Exploring interactively
Before you get too deeply started, take a moment to fire up the SQLite command-line tool and make sure that all works:

```
$ sqlite3 people.db
```

This should bring back a command prompt similar to:

```
sqlite> 
```

This is the SQLite prompt, and you are in the SQLite database.

To run a SQL query, type the query at the SQLite prompt and make sure to end it with a semicolon, as in:

```
sqlite> SELECT * FROM persons;
```

If you forget the semicolon, SQLite will give you a continuation prompt:

```
sqlite> SELECT * FROM persons
   ...> 
```

... indicating it is still expecting more input. This allows you to spread a query out across multiple lines if you wish:

```
sqlite> SELECT * 
   ...> FROM persons
   ...>
```

If that makes it easier to write. It's up to you.

## Controlling SQLite
The easiest way to capture output from an interactive session like this is to issue a *SQLite command* at the SQLite prompt; these are commands to SQLite itself, rather than being a SQL query for SQLite to execute. One such command is to exit the SQLite tool: `.quit`. Another is `.help`, in case you forget some of these.

Before you do too much, it's always helpful to copy the database to a backup, just in case: `.clone backup.db`. This will create a copy of the `people.db` file into a new file, `backup.db`. That way, if you do something that completely tosses your database, you can always quit SQLite, delete `people.db`, copy `backup.db` to `people.db`, and start fresh. 

One command you may find useful is to change the way it displays results: `.mode`:

```
sqlite> .mode table
sqlite> select first_name, last_name from persons limit 10;
+------------+---------------+
| first_name |   last_name   |
+------------+---------------+
| Liza       | Lound         |
| Malorie    | Corthes       |
| Brant      | Sushams       |
| Luci       | McPhelimey    |
| Danette    | O'Carran      |
| Dyane      | Groundwater   |
| Norri      | Nuton         |
| Kahaleel   | Pershouse     |
| Fulton     | Klemensiewicz |
| Wilhelm    | Beall         |
+------------+---------------+
sqlite> 
```

By default it will be in "list" mode ("`.mode list`"), which displays all output rows in comma-separated format--it's shorter, but it's harder to see which data appears in which columns.

## Executing a script file
For this homework, you need to create a *script file* that contains the SQL statements to query or manipulate the data in the database. Generally this is a plain text file with a suffix of "sql", so use the `homework.sql` file to contain your commands. To execute the script from within SQLite, you can either run it from inside the SQLite database, like so:

```
sqlite> .read homework.sql
```

This is what the TA will do to execute your script and determine that it works correctly. Do not erase the lines above the line marked "-- DO NOT ERASE ABOVE THIS LINE". (We put a few SQLite commands there to make it easier for the TA to grade.)

## Homework
Your homework is to answer the following questions, and perform the actions that follow the questions. We will be running the script `grading.sql` to execute each of these queries in the same order as they appear--please don't edit that file. (You are, of course, welcome to look at it to see how we will be viewing the results.)

### Questions
Each question is a SELECT query, and is worth one point. For each question, you will need to write your SQL in a script file whose name is given at the start of the question. So the first question goes into question-1.sql, the second into question-2.sql, and so on.

Remember that for each of these, the grade is not for arriving at the correct answer, it's for writing the SQL that arrives at the correct answer! **Hint**: Each of these questions can be answered by a single SQL statement.

* (question-1.sql) What are the first names of all the people who live in the city of Omaha?
* (question-2.sql) What are the full name(s) (last and first, in sorted order by last name) who have an age less than 30 (meaning age 29 and down)?
* (question-3.sql) What are the full name(s) (last and first, in sorted order by last name) of all the female clergy in the database? (**Hint**: look at the "title" column and keep in mind that "Rev" is short for "Reverend".)
* (question-4.sql) What is/are the full name(s) of the youngest people in the database?
* (question-5.sql) What is the first name of everybody who has a last name similar to "Smith" (that is to say, their last name starts with "Smith")?
* (question-6.sql) What are all the email domains (just the domain, not the username) of all the people living in the city of Seattle? (**Hint**: Look at the SQLite documentation here: https://sqlite.org/lang_corefunc.html and at the functions `substr` and `instr`.)

### Manipulation
These two commands are to manipulate the data in the database; make sure you run this against a fresh copy of the database, or your answers might differ from what they should be!

* (question-7.sql) The United States has decided that Sacramento is a terrible place to live, and everybody has to leave. Write a SQL statement to change the city for all persons currently living in Sacramento to now live in the city of Tulsa.
* (question-8.sql) President Biden has issued an executive order that everyone who lives on a "Street" (as opposed to a "Trail", "Hill", "Drive" or other kind of address suffix) is actually 18 years old. Update the database accordingly.
* (question-9.sql) Your instructor has had some bad memories he'd like to purge from the data. Write a single SQL statement to remove anybody who lives in Kansas City (bad experience with BBQ), Pittsburgh (I dislike their football team), or Jacksonville (because Florida) from the database.
* (question-10.sql) Put your own information into the database. (You may used falsified information for anything you feel is too personal to share, just make sure your first and last name are the same as what we see in Canvas.)

### Extra credit

* (extra-1.sql) Is the female doctor from West Palm Beach, Florida the same age as the male reverend from Phoenix, Arizona? (1 pt)
* (extra-2.sql) How many different values are there for "Gender" in this database? (1 pt)
* (extra-3.sql) What is the maximum, minimum, and average age of the people in this database? (1 pt)