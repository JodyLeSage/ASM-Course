bits 64

global first_func, second_func, third_func

first_func:
    push rbp
    mov rbp, rsp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Two values have been provided,
;  a value (consisting of a single
;  byte), which is stored in RSI,
;  a buffer to initialize, a
;  pointer to which is in RDI,
;  and a number of bytes to set,
;  which is stored in RDX.
;  Implement a function that will
;  set the buffer pointed to by RDI
;  to the value stored in RSI.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
loop1:
  dec rdx
  cmp rdx, -1
  je end1
  mov byte [rdi+rdx], sil
  jmp loop1
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
;  pointers to two buffers, one
;  being the "source" (in RSI),
;  and the other, in RDI, being
;  the destination. Copy the values
;  from source to destination.
;  The size of both buffers is
;  stored in RCX.
; 
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
loop2:
  dec rdx
  cmp rdx, -1
  je end2
  mov byte al, [rsi+rdx]
  mov byte [rdi+rdx], al
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
;  and store the result in RAX,
;  using only string instructions.
;
;  BEGIN student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  xor rax, rax                    ; scasb compares the bytes to AL, so we put null in AL
  cld                             ; unset the direction flag to scan left-to-right
  mov rcx, 0xFFFFFFFFFFFFFFFF     ; a reverse counter for scasb
  mov rsi, rdi                    ; scasb wants the pointer in rsi
  repnz scasb                     ; scan and decrement ecx until you hit a null character or rcx reaches zero
  not rcx                         ; flipping the bits tells you how many characters you scanned
  mov rax, rcx                    ; put the answer in the right register
  sub rax, 1                      ; subtract one for the string length (not counting the null character)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  END student code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    pop rbp
    ret


