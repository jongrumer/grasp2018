!***********************************************************************
      subroutine sys_mkdir (dir, lendir, ierr)
!
!   This routine makes a sub-dir under the current working directory.
!   lendir is the length of character string dir; 
!   ierr will be zero if successful, otherwise non-zero;
!   machine is an optional parameter specifying the name of the system
!
!   Xinghong He  98-08-21
!
!***********************************************************************
!...Translated by Pacific-Sierra Research 77to90  4.3E  14:04:58   1/ 3/07  
!...Modified by Charlotte Froese Fischer 
!                     Gediminas Gaigalas  10/05/17
!
!   function 'system' and execute_command_line commented out
!cjb                                             Jacek Bieron 2018 June 18
!
!-----------------------------------------------
!   M o d u l e s 
!-----------------------------------------------
!     use mpi_C
!-----------------------------------------------
!   D u m m y   A r g u m e n t s
!-----------------------------------------------
      implicit none
      character(len=*), intent(in):: dir
      integer, intent(in):: lendir
      integer, intent(out):: ierr
      character(len=255) mkdir_error_message
!      character(len=*), parameter::iam = 'SUN'  ! soly for machine
!      character(len=len_trim (iam)), optional, intent(out):: machine

!     integer system

      mkdir_error_message = " no message passed from the shell "
      ierr = -999

!cjb
!     print*, dir(1:lendir)
!     print*, dir(1:lendir)
! 
      ierr = system ('mkdir -p -m 775 ' // dir(1:lendir))
!cjb  use EXECUTE_COMMAND_LINE if function 'system' is not supported
!     call execute_command_line ('mkdir -p -m 775 ' // dir(1:lendir), &
!                         exitstat=ierr, cmdmsg=mkdir_error_message)
      if (ierr.ne.0) then
        print*, ' sys_mkdir error message = ', trim(mkdir_error_message)
!               ' myid = ', myid
      endif
      return
      end subroutine sys_mkdir
