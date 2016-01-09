;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quaternion) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
;; ******************************
;;
;;         Noman Shahid 
;;
;; ******************************

(define-struct quaternion (cc ic jc kc))
;; A Quaternion is a (make-quaternion Num Num Num Num)


(define (quat-mult a b q1 q2)
  (make-quaternion (+ (* (quaternion-cc q1) (quaternion-cc q2))
                      (* (quaternion-ic q1) (quaternion-ic q2) a)
                      (* (quaternion-jc q1) (quaternion-jc q2) b)
                      (* (quaternion-kc q1) (quaternion-kc q2) -1 a b))
                   (+ (* (quaternion-cc q1) (quaternion-ic q2))
                      (* (quaternion-ic q1) (quaternion-cc q2))
                      (* (quaternion-jc q1) (quaternion-kc q2) -1 b)
                      (* (quaternion-kc q1) (quaternion-jc q2) b))
                   (+ (* (quaternion-cc q1) (quaternion-jc q2))
                      (* (quaternion-ic q1) (quaternion-kc q2) a)
                      (* (quaternion-jc q1) (quaternion-cc q2))
                      (* (quaternion-kc q1) (quaternion-ic q2) -1 a))              
                   (+ (* (quaternion-cc q1) (quaternion-kc q2))
                      (* (quaternion-ic q1) (quaternion-jc q2))
                      (* (quaternion-jc q1) (quaternion-ic q2) -1)
                      (* (quaternion-kc q1) (quaternion-cc q2)))))


(check-expect (quat-mult -1 -1 (make-quaternion 2 3 0 0) (make-quaternion 5 6 0 0))
              (make-quaternion -8 27 0 0))


