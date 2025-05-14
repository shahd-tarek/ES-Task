(deftemplate person
   (slot age
      (type INTEGER)
      (range 20 25))
   (multislot name
      (type SYMBOL STRING)
      (cardinality 2 4)))