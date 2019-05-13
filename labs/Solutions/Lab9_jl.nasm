bits 64

global first_func, second_func, third_func

extern printf
mystr  db "Success!", 0xa, 0x00

first_func:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  The function printf has been
;  externed in (above). Call it,
;  passing mystr (also defined
;  above), as its only argument.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  push rbp
  mov rbp, rsp

  mov edi, mystr
  mov esi, 1
  mov eax, 0
  call printf

  pop rbp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ret

extern strlen

second_func:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   Your function will be called
;  with two arguments: a function
;  pointer (the first parameter),
;  and a string (the second). The
;  function pointer takes two
;  arguments: a string, and a length.
;  You will need to call strlen
;  (above), passing in the string,
;  and pass the results to the
;  function pointer (along with the
;  string). Return the string you get
;  back from the function. 
; 
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  push rbp
  mov rbp, rsp

  push rdi
  push rsi
  mov rdi, rsi
  call strlen
  
  pop rdi
  pop rcx
  mov rsi, rax
  call rcx

  pop rbp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ret

third_func:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   Calculate the Nth fibonacci
;  number (where N is the value
;  passed to your method as the
;  only parameter).
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  push rbp
  mov rbp, rsp

; base cases
  cmp rdi, 0
  jz base_cases
  cmp rdi, 1
  jz base_cases

recurse3:
  push rdi
  ; call third_func for n-1
  dec rdi
  call third_func
  pop rdi
  push rax ; store the value on the stack

  ; call third_func for n-2
  sub rdi, 2
  call third_func
  pop rdi ; recall the answer for n-1
  add rax, rdi
  jmp restore_stack3

base_cases:
  mov rax, rdi

restore_stack3:
  pop rbp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ret


