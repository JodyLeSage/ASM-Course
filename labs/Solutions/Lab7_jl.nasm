bits 64

global first_func, second_func, third_func

first_func:
    push rbp
    mov rbp, rsp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Two values have been provided,
;  with the first stored in RDI,
;  and the second in RSI. If the 
;  first is greater than the second,
;  set RAX equal to 1, if the second
;  is greater than the first, set
;  RAX equal to -1. If they are
;  both equal, set RAX to 0.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  sub rdi, rsi
  jl less1
  jg greater1
  xor rax, rax
  jmp end1
less1:
  mov rax, -1
  jmp end1
greater1:
  mov rax, 1
end1:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    pop rbp
    ret

second_func:
    push rbp
    mov rbp, rsp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   You have been provided with
;  a pointer to the start of an
;  array of numbers in RDI, and
;  the number of elements in the
;  array in RSI. Loop through the
;  array, adding all the numbers
;  together, and store the result
;  in RAX.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  xor rax, rax
loop2:
  cmp rsi, 0
  je end2
  add eax, [rdi]
  dec rsi
  add rdi, 4
  jmp loop2
end2:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    pop rbp
    ret

third_func:
    push rbp
    mov rbp, rsp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Find the length of the
;  provided, NULL-terminated 
;  string (a pointer to the 
;  beginning of which is 
;  currently stored in RDI),
;  and store the result in RAX.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  xor rax, rax
  xor rcx, rcx
loop3:
  mov cl, [rdi]
  cmp rcx, 0
  je end3
  inc rax
  inc rdi
  jmp loop3
end3:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    pop rbp
    ret


