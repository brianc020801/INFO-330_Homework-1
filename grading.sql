.mode list
.output homework.log

.print "-------------"
.read question-1.sql
.print "-------------"
.read question-2.sql
.print "-------------"
.read question-3.sql
.print "-------------"
.read question-4.sql
.print "-------------"
.read question-5.sql
.print "-------------"
.read question-6.sql
.print "-------------"
.changes on
SELECT COUNT(*) FROM persons WHERE city="Sacramento";
SELECT COUNT(*) FROM persons WHERE city="Tulsa";
.read question-7.sql
SELECT COUNT(*) FROM persons WHERE city="Sacramento";
SELECT COUNT(*) FROM persons WHERE city="Tulsa";
.print "-------------"
SELECT DISTINCT age FROM persons WHERE address LIKE "%Street";
.read question-8.sql
SELECT DISTINCT age FROM persons WHERE address LIKE "%Street";
.print "-------------"
.read question-9.sql
.print "-------------"
.read question-10.sql
.print "-------------"
