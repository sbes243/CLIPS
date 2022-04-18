(defglobal
    ?*objetivo* = 32
)



(defrule encontrar
    => 
    (bind ?num -1)
    (while (<> ?num ?*objetivo*)
        (printout t "Ingrese numero:")
        (bind ?num (read))
        (if (> ?num ?*objetivo*) then (printout t "   Numero es mayor." crlf crlf))
        (if (< ?num ?*objetivo*) then (printout t "   Numero es menor." crlf crlf)) 
    )
    (printout t "Encontrado" crlf)
) 

