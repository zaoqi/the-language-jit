(define (writeln-and-eval x) (write x) (newline) (eval x))
(test-describe 'complex-parse
    (lambda ()
    (for-each
        (lambda (x) (writeln-and-eval `(test-check-equal? (complex-print (complex-parse ,x)) ,x)))
        '("&+式形"
          "[[_:構物]?]?"
          "[[[_:[_:構物]]?]?]@h"
          "#(化滅 (序甲) (序甲 序甲))"
          ":>構物"
          "#(式形 #(化滅 (:映表 參形 :構物) (&+化滅 :>構物 (&+式形 引用:式形 化滅) (&+化滅 :>連頸 參形 (&+化滅 :>連頸 (&+化滅 :>連頸 (&+式形 引用:式形 &+化滅) (&+化滅 :>連頸 (&+式形 引用:式形 解算:化滅) (&+化滅 :>連頸 (&+化滅 :>連頸 (&+式形 引用:式形 &+式形) (&+化滅 :>連頸 (&+式形 引用:式形 引用:式形) (&+化滅 :>連頸 :映表 ()))) (&+化滅 :>連頸 (&+化滅 :>連頸 (&+式形 引用:式形 &+式形) (&+化滅 :>連頸 (&+式形 引用:式形 引用:式形) (&+化滅 :>連頸 :構物 ()))) ())))) ())))))"
          "(&+化滅 :>連頸 (&+式形 引用:式形 &+式形) (&+化滅 :>連頸 (&+式形 引用:式形 引用:式形) (&+化滅 :>連頸 (&+式形 引用:式形 A) ())))"
          "#(化滅 (序甲:化滅) ((&+式形 引用:式形 #(化滅 (吾自:化滅 序甲:化滅) (序甲:化滅 (吾自:化滅 吾自:化滅 序甲:化滅)))) (&+式形 引用:式形 #(化滅 (吾自:化滅 序甲:化滅) (序甲:化滅 (吾自:化滅 吾自:化滅 序甲:化滅)))) 序甲:化滅))"
          ";(#(序乙) 序甲)"
          "a/b/c/d"
          "a/b"
          "a/[_:b]/[c/d]"))
    (for-each
        (lambda (x) (writeln-and-eval `(test-check-equal? (simple-print (complex-parse ,x)) ,x)))
        '("(A B)"
          "#(#(A B) . C)"
          "((A) . #(B C C))"
          "(k 0 9 8 . o)"
          "(() ((((())))) . k)"
          ";(#(序乙) 序甲)"
          "()"
          "(() ())"
          "(h K)"
          "#(h . a)"
          "#(s . #(a . #(i)))"))))
