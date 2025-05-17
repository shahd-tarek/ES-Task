CLIPS> (deftemplate person
   (slot age
      (type INTEGER)
      (range 20 25))
   (multislot name
      (type SYMBOL STRING)
      (cardinality 2 4)))
CLIPS> (assert (person (age 22) (name Shahd "Tarek")))
<Fact-1>
CLIPS> (assert (person (age 19) (name "Ahmed" "Ali")))
[CSTRNCHK1] A literal slot value found in the 'assert' command does not fall in the allowed range 20 to 25 for slot 'age'.
CLIPS> (assert (person (age 24) (name "Ali" "Amr")))
<Fact-2>
CLIPS> 