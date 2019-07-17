; animated recusive spiral
; by @local_guru
(
 (def start (get ronin "animate"))
 (clear)
 (defn rec
  (v)
  (if (gt v 0)
   ((stroke 
     (circle 
      (add 300 
       (mul (cos (add  (div v 17) (div (time) 2000))) 
        (div v 2)
       )
      )
      (add 300 
       (mul (sin (div v 11)) 
        (div v 2)
       )
      )
      (div v 2))
     1 "rgba(255,255,255,0.1")
    (rec (sub v 0.3))
   )
  )
 )
(start)
(rec 300)
)