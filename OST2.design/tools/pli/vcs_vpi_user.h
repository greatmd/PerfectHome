/*
 *  FileName: vcs_vpi_user.h
 *  
 *  Facility: Verilog Compiled Simulator (VCS)
 *  
 *  Functional Description:
 *      Defines vpi types and  routines that are not part of the OVI standard.
 *      
 *  Notes:
 *      "vpi_user.h" is included here (to get type definitions.)
 *      
 *  Copyright (c) 1997-98 by Synopsys, Inc. All rights reserved.
 */

#ifndef VCS_VPI_USER_H
#define VCS_VPI_USER_H

#include "vpi_user.h"
#ifdef __cplusplus
extern "C" {
#endif

/************** Objects added for System Verilog **********/

#define vpiChar              140 /* char data type */
#define vpiCharBit           141 /* bit of char data type */
#define vpiShortInt          142 /* shortint data type */
#define vpiShortIntBit       143 /* bit of shortint data type */
#define vpiLongInt           144 /* longint data type */
#define vpiLongIntBit        145 /* bit of longint data type */
#define vpiByte              146 /* byte data type */
#define vpiByteBit           147 /* bit of byte data type */
#define vpiBitType           148 /* scalar or vector bit */
#define vpiBitTypeBit        149 /* bit of vector bit type */
#define vpiLogic             150 /* scalar or vector logic */
#define vpiLogicBit          151 /* bit of vector logic */
#define vpiInt               152 /* int variable */
#define vpiIntBit            153 /* bit of int variable */
#define vpiStructure         154 /* structure */
#define vpiUnion             155 /* union */
#define vpiStringVar         156 /* string variable */
#define vpiEnum              157 /* enum */
#define vpiEnumConstant      158 /* enum constant */
#define vpiInterface         159 /* interface */
#define vpiPortRefObj        162
#define vpiModPort           163
#define vpiMpPort            164
#define vpiTfDecl            165
#define vpiAccessType        166
#define vpiEnumType	     167
#define vpiInterfacePort     168
#define vpiModPortPort       169
#define vpiPortType          170
#define vpiInterfaceConn     172
#define vpiRefObj            173
#define vpiRefObjType        174
#define vpiRealWire 	     130
#define vpiClass 	     175
#define vpiThread 	     176
#define vpiOrigin 	     177
#define vpiClassDefn	     178
#define vpiBase		     179
#define vpiInstances	     180
#define vpiDerived	     181
#define vpiMailbox	     182
#define vpiSemaphore	     183
#define vpiReturnStmt	     184

/*********************** properties added with System Verilog**************/
#define vpiPacked              72   /* packed or unpacked aggregate */
#define vpiMultiPacArray       73   /* multiple packed dimensions */
#define vpiImport              74   /* import task or function */
#define vpiExport              75   /* export task or function */
#define vpiExtern              76   /* extern task or function */
#define vpiExternForkJoin      77   /* extern fork join task or function */
#define vpiPacArray            78   /* packed dimensions */
#define vpiVirtual	       79
#define vpiLifeTime	       80
#define vpiStatic	       81
#define vpiMethod	       82
#define vpiMember              83
#define vpiId                  84   /* thread/mailbox/semaphore id */
#define vpiThreadState         85   /* thread state subtypes: */
#define vpiWaitingProcess      86   /* blocked processes on mailbox/semaphore */
#define vpiMessage             87   /* messages in mailbox */
#define vpiDynamicArray	       88
#define vpiAssociativeArray    89	
#define vpiCurrent               1  /* currently executing */
#define vpiReady                 2  /* ready to execute at current time */
#define vpiBlocked               3  /* blocked due to mailbox/semaphore/event */
#define vpiWaiting               4  /* waiting for child(ren) to finish */

/************** Always Objects added for System Verilog **********/
#define vpiAlwaysComb              71   /* always_comb */
#define vpiAlwaysLatch             72   /* always_latch */
#define vpiAlwaysFf                73   /* always_Ff */

/************** Callback reasons added for System Verilog **********/
#define cbStartOfThread        31
#define cbEndOfThread          32
#define cbEnterThread          33
#define cbStartOfFrame         34
#define cbEndOfFrame           35

#define vpiSignalDriver	      74 
#define vpiSignalLoad         75 
#define vpiReaderExpr	      76 
#define vpiWriterExpr	      77 

#ifdef VCS_ARGS_DEFINED_HERE
#undef VCS_ARGS_DEFINED_HERE
#undef VCS_ARGS
#endif

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* VCS_VPI_USER_H */
