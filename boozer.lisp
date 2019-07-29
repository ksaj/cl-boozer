#|

Under SBCL, this currently only works if you 
paste it into the repl or run it as a script:

> sbcl --script boozer.lisp

Other lisps like clisp don't care and load 
this up and run it just fine. SBCL doesn't
really like lazy old-style code.

There is a fasl version for those who might
want that format. It assumes sbcl is in
/usr/bin and is exqctly version 1.3.14 and
*probably* only on Debian.

I'll be rewriting this in the preferred format
that appeases sbcl, and making use of macros 
to greatly shorten the code.

|#

(defun boozer ()
  (princ "Enter bottle size in mL: " *query-io*)
  (force-output)
  (setq  bottle-size (read))

  (princ "Enter price in dollars: " *query-io*)
  (force-output)
  (setq  bottle-price (read))

  (princ "Enter abv: " *query-io*)
  (force-output)
  (setq  abv (read))

  (princ "Enter bottle return in cents: " *query-io*)
  (force-output)
  (setq  bottle-return (/ (read) 100))

  (format t "That's $~3$ per mL of pure alcohol.~%"
    (/ (- bottle-price bottle-return) (* bottle-size (/ abv 100)))))

(boozer)

; Done functionally in case I get around to extending this thing... w00t!
