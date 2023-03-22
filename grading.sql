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
.read question-8.sql
.print "-------------"
.read question-9.sql
.print "-------------"
.read question-10.sql
.print "-------------"
