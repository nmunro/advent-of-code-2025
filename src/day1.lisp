(defpackage advent-of-code-2025/day1
  (:use :cl)
  (:export #:part1
           #:part2))

(in-package advent-of-code-2025/day1)

(defparameter *combo* (loop :for x :from 0 :to 99 :collect x))
(defparameter *start* 50)

(defun parse-instruction (instruction position)
  (let ((direction (subseq instruction 0 1))
        (value (subseq instruction 1)))
    (if (string= direction "L")
        (- position (parse-integer value))
        (+ position (parse-integer value)))))

(defun test ()
  (with-open-file (input #p"~/dev/advent-of-code-2025/data/day1/test.txt" :direction :input :if-does-not-exist :error)
    (let ((current-position *start*))
      (dolist (line (uiop:read-file-lines input))
        (format t "~A~%" (parse-instruction line current-position))))))

(defun part1 ()
  (with-open-file (input #p"~/dev/advent-of-code-2025/data/day1/part1.txt" :direction :input :if-does-not-exist :error)
    (uiop:read-file-lines input))
  *combo*)

(defun part2 ()
  (format t "Hello world!~%"))

(test)
