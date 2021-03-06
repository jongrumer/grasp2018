      MODULE dspevx_I   
      INTERFACE
!...Generated by Pacific-Sierra Research 77to90  4.3E  06:33:54  12/28/06  
!...Modified by Charlotte Froese Fischer 
!                     Gediminas Gaigalas  10/05/17
      SUBROUTINE dspevx (JOBZ, RANGE, UPLO, N, AP, VL, VU, IL, IU, ABSTOL, M, W&
         , Z, LDZ, WORK, IWORK, IFAIL, INFO) 
      USE vast_kind_param,ONLY: DOUBLE 
      CHARACTER (LEN = 1) :: JOBZ 
      CHARACTER (LEN = 1) :: RANGE 
      CHARACTER (LEN = 1) :: UPLO 
      INTEGER, INTENT(IN) :: N 
      REAL(DOUBLE), DIMENSION(*), INTENT(IN) :: AP 
      REAL(DOUBLE), INTENT(IN) :: VL 
      REAL(DOUBLE), INTENT(IN) :: VU 
      INTEGER, INTENT(IN) :: IL 
      INTEGER, INTENT(IN) :: IU 
      REAL(DOUBLE), INTENT(IN) :: ABSTOL 
      INTEGER, INTENT(OUT) :: M 
      REAL(DOUBLE), DIMENSION(*), INTENT(INOUT) :: W 
      REAL(DOUBLE), DIMENSION(LDZ,*), INTENT(OUT) :: Z 
      INTEGER, INTENT(IN) :: LDZ 
      REAL(DOUBLE), DIMENSION(*) :: WORK 
      INTEGER, DIMENSION(*), INTENT(INOUT) :: IWORK 
      INTEGER, DIMENSION(*), INTENT(INOUT) :: IFAIL 
      INTEGER, INTENT(OUT) :: INFO 
      END SUBROUTINE  
      END INTERFACE 
      END MODULE 
