#|

This has only been tested to work in Android CL REPL.

https://play.google.com/store/apps/details?id=org.eql5.android.repl
https://gitlab.com/eql/EQL5-Android/find_file/master

Simply load in CL REPL and click on the menu's lambda symbol to run. 

I'll probably update this to match updates from the .lisp version
as they happen.

|#

(defvar bottle-size 0)
(defvar bottle-price 0)
(defvar abv 0)
(defvar bottle-return 0)
  
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

  (format t "That's $~3$ per mL of pure alcohol."
    (/ (- bottle-price bottle-return) (* bottle-size (/ abv 100))))


