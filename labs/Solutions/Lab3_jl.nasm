bits 64

global first_func, second_func, third_func, fourth_func, fifth_func


first_func:
    mov rax, 10
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  For this test, you will
;  need to add 10 to the
;  value stored in rax.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
  add rax, 10
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
    ret

second_func:
    mov rax, 30
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  For this test you will
;  need to subtract 20
;  from the value in rax.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
  sub rax, 20
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
    ret



third_func:
    mov rax, 10
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  For this lab, you will
;  need to multiply rax by
;  10.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
  imul rax, 10
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
    ret

fourth_func:
    mov rax, 10
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  For this lab, you will
;  need to divide by 2,
;  and return the quotient.
;  hint: make sure you clear
;  the high bits!
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
  xor edx, edx
  mov ecx, 2
  idiv ecx
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
    ret

fifth_func:
    mov rax, 7
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  For this lab, you will
;  be required to divide
;  by 2, and move the
;  remainder into rax.
;  hint: make sure you
;  clear the high bits!
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
  xor edx, edx
  mov ecx, 2
  idiv ecx
  mov eax, edx
;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;
    ret
