program main
parameter (eps0=1.0d-9)
parameter (nmax=100)
real*8 x, xold, func, dfunc, dx
real*8 eps,i 
real x1
real :: p1(nmax)
real :: error(nmax)
i=0
x0=2.0
x = x0

do n=1,10
    write(*,*)n
    dx=(10)**(i-10)
    write(*,*) dx
    func = sqrt(x)
    dfunc = ((sqrt(x+dx))-func)/dx
    precise_dfunc = 1/(2*sqrt(x))
    diferrence = abs(precise_dfunc-dfunc)
    write(*,*) diferrence
    p1(n)=dx
    error(n)=diferrence
    
    i = i+1
end do

open (18, file='report2_1_1.csv', status='replace')
do i = 1, 10
    write (18, *) p1(i) ,',', error(i)
end do

end