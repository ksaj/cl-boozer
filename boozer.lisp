(defun booze ()
  (princ "Enter bottle size in mL: ")
  (setq  bottle-size (read))

  (princ "Enter price in dollars: ")
  (setq  bottle-price (read))

  (princ "Enter abv: ")
  (setq  abv (read))

  (princ "Enter bottle return in cents: ")
  (setq  bottle-return (/ (read) 100))

  (format t "That's $~3$ per mL of pure alcohol."
    (/ (- bottle-price bottle-return) (* bottle-size (/ abv 100)))))

(booze)

; Done functionally in case I get around to extending this thing... w00t!
