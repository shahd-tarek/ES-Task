CLIPS> (deftemplate person
    (slot name)
    (slot hair-color))
CLIPS> (deffacts people
    (person (name Ali) (hair-color black))
    (person (name Sama) (hair-color brown))
    (person (name Shahd) (hair-color red))
    (person (name Ahmed) (hair-color blonde)))
CLIPS> (defrule check_color
    (person (name ?name) (hair-color ?color&~black&~brown))
    =>
    (printout t ?name " has " ?color " hair." crlf))
CLIPS> (reset)
CLIPS> (run)
Ahmed has blonde hair.
Shahd has red hair.
CLIPS>