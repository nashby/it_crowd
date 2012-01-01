.286
.model tiny
.data
  wbgH word 320
  wbgW word 200
  wbgH0 word 0
  wbgW0 word 0
  tmp word 0
  tmp1 word 0
  tmp2 word 0
  tmp3 word 0
  tmp4 word 0
  logo BYTE 'b',1Fh,'y',1Fh,' ',1Fh,'N',1Fh,'a',1Fh,'s',1Fh,'h',1Fh
  row BYTE 10
  column BYTE 20

.code
  .startup

  mov ah,0
  mov al,0Dh
  int 10h

  ;white background

  mov cx, 64000
  L1:
  push cx
  mov ah,0Ch
  mov al,7
  mov bh,0
  mov cx,wbgH0
  mov dx,wbgW0
  int 10h
  inc wbgH0
  cmp wbgH0, 320
  jne L2
  mov wbgH0,0
  inc wbgW0
  L2:
  pop cx
  loop L1

;hair

  mov cx,150
  mov dx,50
  mov ax,3
  mov bl,0
  call DHLP

  mov cx,149
  mov dx,51
  mov ax,6
  mov bl,0
  call DHLP

  mov cx,149
  mov dx,52
  mov ax,7
  mov bl,0
  call DHLP

  mov cx,149
  mov dx,53
  mov ax,8
  mov bl,0
  call DHLP

  mov cx,149
  mov dx,54
  mov ax,9
  mov bl,0
  call DHLP

  mov cx,149
  mov dx,55
  mov ax,9
  mov bl,0
  call DHLP

  mov cx,149
  mov dx,56
  mov ax,10
  mov bl,0
  call DHLP

  mov cx,144
  mov dx,57
  mov ax,16
  mov bl,0
  call DHLP

  mov cx,143
  mov dx,58
  mov ax,17
  mov bl,0
  call DHLP

  mov cx,143
  mov dx,59
  mov ax,17
  mov bl,0
  call DHLP

  mov cx,143
  mov dx,60
  mov ax,5
  mov bl,0
  call DHLP

  mov cx,148
  mov dx,60
  mov ax,5
  mov bl,6
  call DHLP

  mov cx,153
  mov dx,60
  mov ax,6
  mov bl,0
  call DHLP
;
  mov cx,144
  mov dx,61
  mov ax,4
  mov bl,0
  call DHLP

  mov cx,148
  mov dx,61
  mov ax,6
  mov bl,6
  call DHLP

  mov cx,154
  mov dx,61
  mov ax,4
  mov bl,0
  call DHLP
;
  mov cx,144
  mov dx,62
  mov ax,4
  mov bl,0
  call DHLP

  mov cx,148
  mov dx,62
  mov ax,7
  mov bl,6
  call DHLP

  mov cx,155
  mov dx,62
  mov ax,2
  mov bl,0
  call DHLP

;glass

  mov cx,146
  mov dx,63
  mov ax,10
  mov bl,0
  call DHLP
;
  mov cx,147
  mov dx,64
  mov ax,1
  mov bl,0
  call DHLP

  mov cx,148
  mov dx,64
  mov ax,3
  mov bl,15
  call DHLP

  mov cx,151
  mov dx,64
  mov ax,1
  mov bl,0
  call DHLP

  mov cx,152
  mov dx,64
  mov ax,3
  mov bl,15
  call DHLP

  mov cx,155
  mov dx,64
  mov ax,1
  mov bl,0
  call DHLP
;
  mov cx,147
  mov dx,65
  mov ax,4
  mov bl,0
  call DHLP

  mov cx,151
  mov dx,65
  mov ax,1
  mov bl,6
  call DHLP

  mov cx,152
  mov dx,65
  mov ax,4
  mov bl,0
  call DHLP
;
  mov cx,148
  mov dx,66
  mov ax,7
  mov bl,6
  call DHLP
;
  mov cx,148
  mov dx,67
  mov ax,7
  mov bl,6
  call DHLP
;
  mov cx,148
  mov dx,68
  mov ax,1
  mov bl,6
  call DHLP

  mov cx,149
  mov dx,68
  mov ax,5
  mov bl,15
  call DHLP

  mov cx,154
  mov dx,68
  mov ax,1
  mov bl,6
  call DHLP
;
  mov cx,148
  mov dx,69
  mov ax,7
  mov bl,6
  call DHLP
;
  mov cx,148
  mov dx,69
  mov ax,7
  mov bl,6
  call DHLP
;
  mov cx,149
  mov dx,70
  mov ax,5
  mov bl,6
  call DHLP
;
  mov cx,150
  mov dx,71
  mov ax,3
  mov bl,6
  call DHLP

;head end

;neck begin

  mov cx,150
  mov dx,72
  mov ax,3
  mov bl,15
  call DHLP

  mov cx,150
  mov dx,72
  mov ax,3
  mov bl,15
  call DHLP

  mov cx,151
  mov dx,72
  mov ax,1
  mov bl,4
  call DHLP

;neck end

;body begin

  mov cx,145
  mov dx,73
  mov ax,13
  mov bl,15
  call DHLP

;shirt begin

  mov cx,5
  mov tmp,74
  @@:
  push cx
  mov cx,144
  mov dx,tmp
  mov ax,15
  mov bl,15
  call DHLP
  pop cx
  inc tmp
  loop @b

  mov cx,3
  @@:
  push cx
  mov cx,147
  mov dx,tmp
  mov ax,9
  mov bl,15
  call DHLP
  pop cx
  inc tmp
  loop @b

;shirt end

;tie

  mov cx,151
  mov dx,74
  mov ax,8
  mov bl,4
  call DVLP

;first arm

  mov cx,2
  mov tmp,144
  @@:
  push cx
  mov cx,tmp
  mov dx,79
  mov ax,12
  mov bl,6
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,2
  mov tmp,145
  @@:
  push cx
  mov cx,tmp
  mov dx,90
  mov ax,3
  mov bl,6
  call DVLP
  inc tmp
  pop cx
  loop @b

;second arm

  mov cx,2
  mov tmp,157
  @@:
  push cx
  mov cx,tmp
  mov dx,79
  mov ax,12
  mov bl,6
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,2
  mov tmp,156
  @@:
  push cx
  mov cx,tmp
  mov dx,90
  mov ax,3
  mov bl,6
  call DVLP
  inc tmp
  pop cx
  loop @b

;arms end

;legs begin

  mov cx,9
  mov tmp,147
  @@:
  push cx
  mov cx,tmp
  mov dx,82
  mov ax,23
  mov bl,8
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,1
  mov tmp,151
  @@:
  push cx
  mov cx,tmp
  mov dx,92
  mov ax,14
  mov bl,7
  call DVLP
  inc tmp
  pop cx
  loop @b

;legs end

;socks begin

  mov cx,2
  mov tmp,148
  @@:
  push cx
  mov cx,tmp
  mov dx,105
  mov ax,4
  mov bl,15
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,2
  mov tmp,153
  @@:
  push cx
  mov cx,tmp
  mov dx,105
  mov ax,4
  mov bl,15
  call DVLP
  inc tmp
  pop cx
  loop @b

;socks end

;shoes begin

  mov cx,3
  mov tmp,109
  @@:
  push cx
  mov cx,144
  mov dx,tmp
  mov ax,6
  mov bl,0
  call DHLP
  inc tmp
  pop cx
  loop @b

  mov cx,3
  mov tmp,109
  @@:
  push cx
  mov cx,153
  mov dx,tmp
  mov ax,6
  mov bl,0
  call DHLP
  inc tmp
  pop cx
  loop @b
;shoes end

;Moss end

;====================================;
;========Jen=========================;

;hair

  mov cx,100
  mov dx,63
  mov ax,4
  mov bl,4
  call DHLP

  mov cx,99
  mov dx,64
  mov ax,6
  mov bl,4
  call DHLP

  ov cx,98
  mov dx,65
  mov ax,8
  mov bl,4
  call DHLP

  mov cx,98
  mov dx,66
  mov ax,9
  mov bl,4
  call DHLP

  mov cx,97
  mov dx,67
  mov ax,10
  mov bl,4
  call DHLP

  mov cx,97
  mov dx,68
  mov ax,10
  mov bl,4
  call DHLP

  mov cx,97
  mov dx,69
  mov ax,11
  mov bl,4
  call DHLP
;
  mov cx,7
  mov tmp,70
  @@:
  push cx
  mov cx,96
  mov dx,tmp
  mov ax,12
  mov bl,4
  call DHLP
  inc tmp
  pop cx
  loop @b

  mov cx,97
  mov dx,77
  mov ax,2
  mov bl,4
  call DHLP

  mov cx,105
  mov dx,77
  mov ax,2
  mov bl,4
  call DHLP

;hair end

;face

  mov cx,103
  mov dx,65
  mov ax,1
  mov bl,14
  call DHLP

  mov cx,102
  mov dx,66
  mov ax,2
  mov bl,14
  call DHLP

  mov cx,101
  mov dx,67
  mov ax,3
  mov bl,14
  call DHLP

  mov cx,100
  mov dx,68
  mov ax,4
  mov bl,14
  call DHLP

  mov cx,99
  mov dx,69
  mov ax,6
  mov bl,14
  call DHLP

  mov cx,5
  mov tmp,70
  @@:
  push cx
  mov cx,98
  mov dx,tmp
  mov ax,8
  mov bl,14
  call DHLP
  inc tmp
  pop cx
  loop @b

  mov cx,100
  mov dx,75
  mov ax,4
  mov bl,14
  call DHLP

;neck

  mov cx,101
  mov dx,76
  mov ax,2
  mov bl,14
  call DHLP

  mov cx,101
  mov dx,77
  mov ax,2
  mov bl,14
  call DHLP

;eyes

  mov cx,100
  mov dx,70
  mov ax,1
  mov bl,0
  call DHLP

  mov cx,103
  mov dx,70
  mov ax,1
  mov bl,0
  call DHLP

;lips

  mov cx,100
  mov dx,73
  mov ax,4
  mov bl,4
  call DHLP

;body

  mov cx,6
  mov tmp,78
  @@:
  push cx
  mov cx,95
  mov dx,tmp
  mov ax,14
  mov bl,0
  call DHLP
  inc tmp
  pop cx
  loop @b


;left arm

  mov cx,2
  mov tmp,95
  @@:
  push cx
  mov cx,tmp
  mov dx,84
  mov ax,10
  mov bl,0
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,2
  mov tmp,95
  @@:
  push cx
  mov cx,tmp
  mov dx,94
  mov ax,2
  mov bl,14
  call DVLP
  inc tmp
  pop cx
  loop @b

;right arm

  mov cx,2
  mov tmp,107
  @@:
  push cx
  mov cx,tmp
  mov dx,84
  mov ax,10
  mov bl,0
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,2
  mov tmp,107
  @@:
  push cx
  mov cx,tmp
  mov dx,94
  mov ax,2
  mov bl,14
  call DVLP
  inc tmp
  pop cx
  loop @b

;body next

  mov cx,98
  mov dx,84
  mov ax,8
  mov bl,0
  call DHLP

  mov cx,99
  mov dx,85
  mov ax,6
  mov bl,0
  call DHLP

  mov cx,4
  mov tmp,100
  @@:
  push cx
  mov cx,tmp
  mov dx,86
  mov ax,6
  mov bl,0
  call DVLP
  inc tmp
  pop cx
  loop @b

;skirt

  mov cx,8
  mov tmp,98
  @@:
  push cx
  mov cx,tmp
  mov dx,92
  mov ax,10
  mov bl,0
  call DVLP
  inc tmp
  pop cx
  loop @b

;left leg

  mov cx,2
  mov tmp,99
  @@:
  push cx
  mov cx,tmp
  mov dx,102
  mov ax,10
  mov bl,14
  call DVLP
  inc tmp
  pop cx
  loop @b

;right leg

  mov cx,2
  mov tmp,103
  @@:
  push cx
  mov cx,tmp
  mov dx,102
  mov ax,10
  mov bl,14
  call DVLP
  inc tmp
  pop cx
  loop @b

;shoes

  mov cx,101
  mov dx,110
  mov ax,1
  mov bl,0
  call DHLP

  mov cx,100
  mov dx,111
  mov ax,2
  mov bl,0
  call DHLP

  mov cx,99
  mov dx,112
  mov ax,3
  mov bl,0
  call DHLP

  mov cx,97
  mov dx,113
  mov ax,5
  mov bl,0
  call DHLP

  mov cx,100
  mov dx,113
  mov ax,1
  mov bl,7
  call DHLP

;right

  mov cx,105
  mov dx,110
  mov ax,1
  mov bl,0
  call DHLP

  mov cx,104
  mov dx,111
  mov ax,2
  mov bl,0
  call DHLP

  mov cx,103
  mov dx,112
  mov ax,3
  mov bl,0
  call DHLP

  mov cx,101
  mov dx,113
  mov ax,5
  mov bl,0
  call DHLP

  mov cx,104
  mov dx,113
  mov ax,1
  mov bl,7
  call DHLP

;=========================================;
;============Roy==========================;
;=========================================;

;hair

  mov cx,200
  mov dx,55
  mov ax,2
  mov bl,6
  call DHLP

  mov cx,198
  mov dx,56
  mov ax,6
  mov bl,6
  call DHLP

  mov cx,197
  mov dx,57
  mov ax,8
  mov bl,6
  call DHLP

  mov cx,196
  mov dx,58
  mov ax,11
  mov bl,6
  call DHLP

  mov cx,196
  mov dx,59
  mov ax,12
  mov bl,6
  call DHLP

  mov cx,195
  mov dx,60
  mov ax,12
  mov bl,6
  call DHLP

  mov cx,195
  mov dx,61
  mov ax,13
  mov bl,6
  call DHLP

  mov cx,196
  mov dx,62
  mov ax,11
  mov bl,6
  call DHLP

  mov cx,195
  mov dx,63
  mov ax,13
  mov bl,6
  call DHLP

  mov cx,197
  mov dx,64
  mov ax,3
  mov bl,6
  call DVLP

  mov cx,205
  mov dx,64
  mov ax,3
  mov bl,6
  call DVLP

;hair end

;shirt

;top

  mov cx,6
  mov tmp,71
  mov tmp3,199
  @@:
  push cx
  mov cx,tmp3
  mov dx,tmp
  add ax,2
  mov bl,0
  call DHLP
  inc tmp
  dec tmp3
  pop cx
  loop @b

;bottom

  mov cx,20
  mov tmp,77
  mov tmp3,194
  @@:
  push cx
  mov cx,tmp3
  mov dx,tmp
  mov ax,15
  mov bl,0
  call DHLP
  inc tmp
  pop cx
  loop @b

;left arm

  mov cx,3
  mov tmp,194
  @@:
  push cx
  mov cx,tmp
  mov dx,83
  mov ax,14
  mov bl,14
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,194
  mov dx,97
  mov ax,2
  mov bl,14
  call DHLP


;right arm

  mov cx,3
  mov tmp,206
  @@:
  push cx
  mov cx,tmp
  mov dx,83
  mov ax,14
  mov bl,14
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,206
  mov dx,97
  mov ax,2
  mov bl,14
  call DHLP

;legs

  mov cx,3
  mov tmp,198
  @@:
  push cx
  mov cx,tmp
  mov dx,97
  mov ax,14
  mov bl,9
  call DVLP
  inc tmp
  pop cx
  loop @b

  mov cx,3
  mov tmp,202
  @@:
  push cx
  mov cx,tmp
  mov dx,97
  mov ax,14
  mov bl,9
  call DVLP
  inc tmp
  pop cx
  loop @b

;shoes

  mov cx,198
  mov dx,109
  mov ax,3
  mov bl,0
  call DHLP

  mov cx,194
  mov dx,110
  mov ax,6
  mov bl,0
  call DHLP

  mov cx,194
  mov dx,111
  mov ax,7
  mov bl,0
  call DHLP

  mov cx,194
  mov dx,112
  mov ax,7
  mov bl,15
  call DHLP
;;
  mov cx,202
  mov dx,109
  mov ax,3
  mov bl,0
  call DHLP

  mov cx,203
  mov dx,110
  mov ax,6
  mov bl,0
  call DHLP

  mov cx,202
  mov dx,111
  mov ax,7
  mov bl,0
  call DHLP

  mov cx,202
  mov dx,112
  mov ax,7
  mov bl,15
  call DHLP

;face

  mov cx,199
  mov dx,63
  mov ax,5
  mov bl,14
  call DHLP


  mov cx,6
  mov tmp,64
  @@:
  push cx
  mov cx,198
  mov dx,tmp
  mov ax,7
  mov bl,14
  call DHLP
  inc tmp
  pop cx
  loop @b

  mov cx,199
  mov dx,70
  mov ax,5
  mov bl,14
  call DHLP

  mov cx,199
  mov dx,71
  mov ax,5
  mov bl,14
  call DHLP

;eyes

  mov cx,199
  mov dx,66
  mov ax,1
  mov bl,0
  call DHLP

;;todo

  mov cx,200
  mov dx,65
  mov ax,2
  mov bl,0
  call DHLP


  mov cx,203
  mov dx,66
  mov ax,1
  mov bl,0
  call DHLP

  mov cx,202
  mov dx,65
  mov ax,4
  mov bl,0
  call DVLP

;lips

  mov cx,201
  mov dx,70
  mov ax,2
  mov bl,0
  call DHLP

  mov   ah,0
  int   16h
  .exit

DHLP PROC

.data
  currX WORD ?
.code
  pusha
  mov currX,cx
  mov cx,ax

DHL1:
  push cx
  mov al,bl
  mov ah,0Ch
  mov bh,0
  mov cx,currX
  int 10h
  inc currX
  pop cx
  loop DHL1
  popa
  ret
DHLP ENDP

DVLP PROC
.data
  currY WORD ?
.code
  pusha
  mov currY,dx
  mov currX,cx
  mov cx,ax

DVL1:
  push cx
  mov al,bl
  mov ah,0Ch
  mov bh,0
  mov cx,currX
  mov dx,currY
  int 10h
  inc currY
  pop cx
  loop DVL1
  popa
  Ret
DVLP endp

end
