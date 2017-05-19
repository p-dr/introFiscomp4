program main
  real*8 x, y, v, vx, vy, teta
  real*8, parameter :: pi=4*datan(1.d0), dt=.01d0, g=9.80665d0
  
  do i=.05d0,.95d0,.1d0 
     call zerar()
     teta = i*pi
     print*, 'fasdfasdf',i, int((i*10-5)/5)
     open(10, file='a'//char(49+int((i*10-5)/5))//'.dat')
     do while (y .ge. 0)
        write(10,*) x,y
        x = x + vx*dt
        y = y + vy*dt
        !vx=vx !vx constante
        vy = vy - g*dt
        
     end do
     close(10)
end do

contains
  
subroutine zerar()
  x=0
  y=0
  v=700
  !teta = pi4
  vx=v*dcos(teta)
  vy=v*dsin(teta)
end subroutine zerar

end program main
