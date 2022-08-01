program cmd
  character(len=16) :: arg
  integer :: primeNumberCount = 100, number = 0, i, j

  if (command_argument_count() == 1) then
    CALL get_command_argument(1, arg)
    read (arg,'(I10)') primeNumberCount
  end if

  do while (primeNumberCount > 0)
    number = number + 1

    j = 0
    do i = 1, number
      if (modulo(number, i) == 0) then
        j = j + 1
      end if
    end do

    if (j == 2) then
      primeNumberCount = primeNumberCount - 1
    end if
  end do

  print *, 'The latest prime number: ', number
end program cmd
