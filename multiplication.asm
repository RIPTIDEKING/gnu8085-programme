mvi b,0ffh
mvi c,0ffh
mvi l,0h
mov a,l
sta 0fa0h
xra a
mov d,a
mov e,d
mov h,e
loopSta: mov a,e
add b
jnc caar
inr d
caar: mov e,a
mov a,c
dcr a
mov c,a
jnz loopSta
mov a,d
sta 1388h
mov a,e
sta 1389h
mov c,l
mvi l,00h
mov b,e
xra a
loopSta1: add b
jnc caar1
inr l
caar1: mov e,a
mov a,c
dcr a
mov c,a
mov a,e
jnz loopSta1
lda 0fa0h  
mov c,a
mov b,d
xra a
loopSta2: add b
jnc caar2
inr h
caar2: mov d,a
mov a,c
dcr a
mov c,a
mov a,d
jnz loopSta2
mov a,l
add d
mov d,a
jnc finaljmp
inr h
finaljmp: hlt



