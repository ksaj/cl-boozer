(defun booze ()
  (princ "Enter bottle size in mL: ")
  (force-output)
  (setq  bottle-size (read))

  (princ "Enter price in dollars: ")
  (force-output)
  (setq  bottle-price (read))

  (princ "Enter abv: ")
  (force-output)
  (setq  abv (read))

  (princ "Enter bottle return in cents: ")
  (force-output)
  (setq  bottle-return (/ (read) 100))

  (format t "That's $~3$ per mL of pure alcohol."
    (/ (- bottle-price bottle-return) (* bottle-size (/ abv 100)))))

(booze)

; Done functionally in case I get around to extending this thing... w00t!
