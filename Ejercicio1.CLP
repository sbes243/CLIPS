(defrule leer-nombres
    => 
    (open nombres.txt fichero)
    (bind ?nombre(read fichero))
    (while (neq ?nombre EOF)
        (assert (persona ?nombre (read fichero) (read fichero)))
        (bind ?nombre(read fichero))
    )
    (close fichero)
) 


