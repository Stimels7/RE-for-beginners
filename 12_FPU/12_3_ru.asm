CONST    SEGMENT
__real@40400147ae147ae1 DQ 040400147ae147ae1r    ; 32.01
__real@3ff8a3d70a3d70a4 DQ 03ff8a3d70a3d70a4r    ; 1.54
CONST    ENDS

_main    PROC
    push   ebp
    mov    ebp, esp
    sub    esp, 8  ; �������� ����� ��� ������ ����������
    fld    QWORD PTR __real@3ff8a3d70a3d70a4
    fstp   QWORD PTR [esp]
    sub    esp, 8  ; �������� ����� ��� ������ ����������
    fld    QWORD PTR __real@40400147ae147ae1
    fstp   QWORD PTR [esp]
    call   _pow
    add    esp, 8  ; "�������" ����� �� ����� ����������. 

; � ��������� ����� ������ ��� ��� ��������������� 8 ���� ��� ���. 
; ��������� ������ � ST(0)

    fstp   QWORD PTR [esp] ; ����������� ��������� �� ST(0) � ��������� ���� ��� printf()
    push   OFFSET $SG2651
    call   _printf
    add    esp, 12
    xor    eax, eax
    pop    ebp
    ret    0
_main    ENDP
