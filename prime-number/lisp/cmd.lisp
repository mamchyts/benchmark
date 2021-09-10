(defvar primeNumberCount 100)
(if (>= (length *args*) 1)
    (setq primeNumberCount (parse-integer (car *args*))))

(setq number 0)
(loop while (>  primeNumberCount 0)
    do (incf number)
    do (setq j 0)
    do
        (loop for i from 1 to number
            do
                (if (= (mod number i) 0)
                    (incf j))
        )
    do
        (if (= j 2)
            (decf primeNumberCount))
)

(format t "The latest prime number: ~d" number)
