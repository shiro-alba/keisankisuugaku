program main 
real(4) SS, S, Sold
parameter(errmax=1.0d-10)
 
 
SS=((4*atan(1.0D0))**2)/6 
write(*,100) SS
100 format('exact value of S=', E14.7)
n=10**6
S=0.0

do i=1,n ,1
    Sold=S
    S=S+1/(real(i)**2)
    err=abs(S-Sold)
    if(err<errmax)exit
end do

write(*,*) err
write(*,*) SS/(real(i)**2)
write(*, 200) n, S, Sold
200 format('program ended at i=', I7,1X, 'S(i)=', E14.6, 1X, 'S(i-1)=', E14.6)
end 
