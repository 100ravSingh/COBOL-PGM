//IGYWCLG PROC LNGPRFX='IGY630',LIBPRFX='CEE',SRC=COBOL
//*********************************************************************
//*  IBM Enterprise COBOL for z/OS                                    *
//*               Version 6 Release 3 Modification 0                  *
//*********************************************************************
//COBOL   EXEC PGM=IGYCRCTL,REGION=0M
//STEPLIB  DD  DSNAME=&LNGPRFX..SIGYCOMP,DISP=SHR
//         DD  DSNAME=&LIBPRFX..SCEERUN,DISP=SHR
//         DD  DSNAME=&LIBPRFX..SCEERUN2,DISP=SHR
//SYSIN    DD  DSNAME=&SYSUID..CBL(&SRC),DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSLIN   DD  DSNAME=&&LOADSET,UNIT=SYSALLDA,
//             DISP=(MOD,PASS),SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT1   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT2   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT3   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT4   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT5   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT6   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT7   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT8   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT9   DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT10  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT11  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT12  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT13  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT14  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSUT15  DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//SYSMDECK DD  UNIT=SYSALLDA,SPACE=(CYL,(1,1)),VOL=(,,,1)
//*********************************************************************
//SUCCESS IF RC < 8 THEN
//*********************************************************************
//LKED    EXEC PGM=IEWBLINK,REGION=0M
//SYSLIB   DD  DSNAME=&LIBPRFX..SCEELKEX,DISP=SHR
//         DD  DSNAME=&LIBPRFX..SCEELKED,DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSLIN   DD  DSNAME=&&LOADSET,DISP=(OLD,DELETE)
//         DD  DDNAME=SYSIN
//SYSLMOD  DD  DSNAME=&SYSUID..LOAD(&SRC),DISP=SHR
//        ENDIF
//*********************************************************************
//GOODMOD  IF RC < 8 THEN
//*********************************************************************
//GO      EXEC PGM=*.LKED.SYSLMOD,REGION=0M
//STEPLIB  DD  DSNAME=&LIBPRFX..SCEERUN,DISP=SHR
//         DD  DSNAME=&LIBPRFX..SCEERUN2,DISP=SHR
//SYSPRINT DD  SYSOUT=*
//CEEDUMP  DD  DUMMY
//SYSUDUMP DD  DUMMY
//        ENDIF
