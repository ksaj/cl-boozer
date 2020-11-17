#|
Boozer for LispWorks
--------------------

Compare alcohol prices between different beverages of different sizes by
calculating the cost per mL of pure alcohol. 

Please Drink Responsibly. And cheaply!

|#

(defun lw-boozer ()
 "Asks a few questions, then tells you how much the alcohol content costs per mg."
  (let ((bottle-size    (capi:prompt-for-number "Enter bottle size in mL:"))
        (bottle-price   (capi:prompt-for-number "Enter price in dollars:"))
        (abv            (capi:prompt-for-number "Enter ABV:"))
        (bottle-return  (capi:prompt-for-number "Enter bottle return in cents:")))

  (capi:display-message "That's $~3$ per mL of pure alcohol."
    (/  (- bottle-price (/ bottle-return 100))  (* bottle-size (/ abv 100))))))

(lw-boozer)
