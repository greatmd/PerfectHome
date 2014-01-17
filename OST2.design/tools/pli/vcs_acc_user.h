/*
 *  FileName: vcs_acc_user.h
 *  
 *  Facility: Verilog Compiled Simulator (VCS)
 *  
 *  Functional Description:
 *      Defines acc-type routines that are not part of the OVI standard.
 *      
 *  Notes:
 *      Include "acc_user.h" before this file (to get type definitions.)
 *      
 *  Copyright (c) 1997-98 by Synopsys, Inc. All rights reserved.
 */

#ifndef VCS_ACC_USER_H
#define VCS_ACC_USER_H

#ifdef __cplusplus
extern "C" {
#endif

/*------------------------------- object types ------------------------------*/
#define accPath                   206
#define accPrimPath               232
#define accTermPath               238
#define accModTermPath            240
#define accTermModPath            242
#define accCollapsedNet           304
#define accVlogSimPath            310
#define accExpandedPath           312
#define accSwXlInvisibleNet       314
#define accAcceleratedNet         316
#define accRemoval                378
#define accRecrem                 379
#define accAssignmentStat         526
#define accContAssignStat         527
#define accNullStat               528
#define accDelayStat              530
#define accAssignDelayStat        532
#define accRtlDelayStat           534
#define accAssignEventStat        536
#define accAssignMultiStat        537
#define accRtlEventStat           538
#define accRtlMultiStat           539
#define accGenEventStat           540
#define accDisableStat            542
#define accAssignStat             544
#define accDeassignStat           546
#define accForceStat              548
#define accReleaseStat            550
#define accInitialStat            552
#define accAlwaysStat             554
#define accAtEventStat            556
#define accUnnamedBeginStat       558
#define accNamedBeginStat         560
#define accUnnamedForkStat        562
#define accNamedForkStat          564
#define accIfStat                 566
#define accCaseStat               568
#define accCaseZStat              570
#define accCaseXStat              572
#define accForeverStat            574
#define accRepeatStat             576
#define accWhileStat              578
#define accForStat                580
#define accWaitStat               582
#define accStringVar		  647
#define	accChar			  650
#define	accInt			  652
#define	accBitType		  654
#define	accByte			  656
#define	accShortInt		  658
#define	accLongInt		  660
#define	accLogic		  662
#define accModPathHasIfnone       715
#define accRealWire		  697
#define accOvaUnit		  698
#define accAutomatic		  802

/*------------------ parameter values for acc_configure() -------------------*/
#define accSpecitemScope            7
#define accWarnNestedLoconn         9
#define accWarnNestedHiconn        10
#define accMinMultiplier           12
#define accTypMultiplier           13
#define accMaxMultiplier           14
#define accAttrDelimStr            15
#define accDelayCount              16
#define accDelayArrays             18
#define accUserErrorString         20

/*------------------------------ product types ------------------------------*/
#define accVerilog                  5


/*** this structure is provided to allow compilation of pli applications ***/
/*** containing s_tfcell arrays; these arrays are not used by VCS ***/
typedef struct t_tfcell {
    short type;
    short data;
    int (*checktf)();
    int (*sizetf)();
    int (*calltf)();
    int (*misctf)();
    char *tfname;
    char *fill1;
    char *fill2;
    int fill3;
    struct t_tfcell *fill4;
    struct t_tfcell *fill5;
    char *fill6;
    int fill7;
} s_tfcell;

#define usertask         1
#define userfunction     2
#define userrealfunction 3

#define accMemory	700           /* array of registers */
#define accMda		701           /* array of registers */
#define accTimeMda	702           /* array of registers */
#define accIntegerMda   703           /* array of registers */
#define accRealMda	704           /* array of registers */
#define accRegMda	705           /* array of registers */
#define accMdaWor	706
#define accMdaWand	707
#define accMdaTri	708
#define accMdaTri0	709
#define accMdaTri1	710
#define accMdaTriand    711
#define accMdaTrior	712
#define accMdaTrireg    713
#define accMdaSupply0   714
#define accMdaSupply1   715
#define accMdaWire	716
#define accCharMda	717
#define accByteMda	718
#define accBitMda	719
#define accIntMda	720
#define accLongIntMda	721
#define accShortIntMda	722
#define accLogicMda	723

/* Added for Veralite and System Verilog */

#define accEnum			724
#define accRegEnum		725
#define accCharEnum		726
#define accByteEnum		727
#define accBitEnum		728
#define accIntEnum		729
#define accIntegerEnum		730
#define accShortIntEnum		731
#define accLongIntEnum		732
#define accLogicEnum		733
#define accEnumMda		734
#define accUnion		735
#define accStructure		736
#define accUnionMda		737
#define accStructureMda		738
#define accInterface		739
#define accInterfaceInstance	740
#define accMemoryWord		741
#define accMdaWord		742
#define accAggregateWord	743
#define accClass		744
#define accStringMda		745
#define accClassMda		746

/* System Science requires that acc_next_driver() return
   behavioral drivers if this configuration parameter is true */
#define accBehavDrivers 701


/* Extended Location Structure */
typedef struct t_location2 {
  int line_no;
  char *filename;
  int tag;
} s_location2, *p_location2;

/* Source File Info Structure */
typedef struct vcs_srcfile_info_t {
  char *SourceFileName;
  int SourceFileTag;
  int StartLineNum;
  int EndLineNum;
} vcs_srcfile_info_s, *vcs_srcfile_info_p;


/* this structure is needed to support memory callback, needed by INTEL */

/*--------------- structure passed to callback routine for VCL --------------*/
typedef struct t_mem_vc_record
{
    int vc_reason;
    int vc_hightime;
    int vc_lowtime;
    char *user_data;
    char* p_mem_value;
    int   mem_word_index;
} s_mem_vc_record, *p_mem_vc_record;

#define memory_value_change 6



#ifndef VCS_ARGS
#define VCS_ARGS_DEFINED_HERE

#if defined(__STDC__) || defined(__cplusplus) || defined(_AIX)
# define VCS_ARGS(p) p
#else
# define VCS_ARGS(p) ()
#endif

#endif /* VCS_ARGS */


/* Source File Info Routines */
extern vcs_srcfile_info_p acc_mod_sfi_fetch VCS_ARGS ((handle handleModule));

/* Next Routines */
extern handle acc_next_signal_driver VCS_ARGS ((handle handleObj, handle handleDriver));
extern handle acc_next_signal_driver_i VCS_ARGS ((handle handleObj, handle handleDriver));
extern handle acc_next_vpddriver VCS_ARGS ((handle handleObj, handle handleDriver));

extern int acc_is_active_driver VCS_ARGS ((handle handleDriver));

/* Line Callback Routines */
extern int acc_mod_lcb_enabled VCS_ARGS((void));
extern void acc_mod_lcb_add VCS_ARGS ((handle handleModule, void (*consumer)(), char *user_data));
extern void acc_mod_lcb_del VCS_ARGS ((handle handleModule, void (*consumer)(), char *user_data));
extern p_location acc_mod_lcb_fetch VCS_ARGS ((handle handleModule));
extern p_location2 acc_mod_lcb_fetch2 VCS_ARGS ((handle handleModule));

/* Interface to $lsi_dumpports() tasks */
typedef enum { USE_DUMPPORTS_FORMAT_LSI, USE_DUMPPORTS_FORMAT_IEEE } lsi_dumpports_format_type;
extern int acc_lsi_dumpports_call VCS_ARGS ((handle instance, char *filename));
extern int acc_lsi_dumpports_close VCS_ARGS ((handle instance, char *filename));
extern void acc_lsi_dumpports_misc VCS_ARGS ((int data, int reason));
extern int acc_lsi_dumpports_setformat VCS_ARGS ((lsi_dumpports_format_type format));
extern int acc_lsi_dumpports_off VCS_ARGS ((char *fname));
extern int acc_lsi_dumpports_on VCS_ARGS ((char *fname));
extern int acc_lsi_dumpports_limit VCS_ARGS ((unsigned long filesize, char *fname));
extern int acc_lsi_dumpports_flush VCS_ARGS ((char *fname));
extern int acc_lsi_dumpports_all VCS_ARGS ((char *fname));

/* Co-simulation */
extern int acci_getnextlongtime VCS_ARGS ((unsigned *lotime, unsigned *hitime));
extern int acc_is_vhdl_scope(handle handleModule);
extern int acc_has_vhdl_parent(handle handleModule);
extern void* acc_fetch_vhpi_handle(handle handleModule);

extern int acc_stability  VCS_ARGS ((handle handleModule));

/* Compaq specific routines */
extern handle vcs_next_driver VCS_ARGS ((handle handleObj, handle handleDriver, int *driverType));
extern unsigned int vcs_convert_string_to_strength_value VCS_ARGS ((char *value_str));
extern char *vcs_convert_strength_value_to_string VCS_ARGS ((unsigned int value));
extern unsigned int vcs_fetch_scalar_strength_value VCS_ARGS ((handle h));
extern unsigned int vcs_fetch_scalar_port_strength_value VCS_ARGS ((handle h));

/* Tharas specific routines */
extern int vcs_random(void);
extern int vcs_random_const_seed(int seed);
extern int vcs_random_seed(int *seed);
extern int vcs_dist_uniform(int *seed,int start,int end);
extern int vcs_dist_normal(int *seed,int mean,int standard_deviation);
extern int vcs_dist_exponential(int *seed,int mean);
extern int vcs_dist_poisson(int *seed,int mean);

/* debussy specific routines */
extern void vcs_free_handle(handle phandle);
extern void vcs_use_free( int  useFree);

/* other customer-specific routines */
extern handle acc_handle_mem_by_fullname(const char *name);
extern void acc_readmem(handle mem, const char *memfile, int frmt);


/* ********************************************************************** */
/* BEGIN: SUPPORT FOR RTX                                                   */
/* ********************************************************************** */
extern unsigned char *acc_getmem_value_pointer VCS_ARGS((handle memhand));
extern void  acc_getmem_bitstr VCS_ARGS((handle memhand,char *retBitStr,int row, int start,int len));
extern void  acc_setmem_bitstr VCS_ARGS((handle memhand,char *bitStrValue,int row,int start));
extern void  acc_getmem_hexstr VCS_ARGS((handle memhand,char *retHexStr,int row,int start,int len));
extern void  acc_setmem_hexstr VCS_ARGS((handle memhand,char *hexStrValue,int row,int start));
extern void  acc_setmem_int VCS_ARGS((handle memhand,int value,int row,int start,int len));
extern int   acc_getmem_int VCS_ARGS((handle memhand,int row, int start, int len));
extern void  acc_clearmem_int VCS_ARGS((handle));
extern int   acc_getmem_size VCS_ARGS((handle));
extern void   acc_getmem_range VCS_ARGS((handle memhand, int* p_left_index, int* p_right_index));
extern void  acc_getmem_word_range VCS_ARGS((handle memhand, int* minoflsbmsb, int* len));
extern int  acc_getmem_word_int VCS_ARGS((handle mem_handle, int row)) ;

/* for MDA support */

extern void acc_get_mda_range VCS_ARGS((handle mdaHandle,int* dim, int** plndx, int** prindx));
extern void acc_get_mda_word_range VCS_ARGS((handle mdaHandle,int* size, int* msb, int* lsb));
extern void  acc_getmda_bitstr VCS_ARGS((handle mdaHandle,char *retBitStr,int* dimArray,
	     int start, int len));

extern void  acc_setmda_bitstr VCS_ARGS((handle mdaHandle,char *bitStrValue,
	     int* dimArray, int start));
extern char* acc_fetch_paramval_str(handle);
extern char *acc_fetch_lodriver_value(handle, char*);
extern handle acc_get_parent_port_and_index(handle, int*);
extern char *acc_vcl_check(handle, void (*consumer)());
extern int acc_vcl_disable(handle, void (*consumer)(), char *);
extern int acc_vcl_enable(handle, void (*consumer)(), char *);
extern void acc_fetch_module_definition_location(p_location, handle);
extern handle acc_handle_connected_net(handle);
extern handle acc_get_driver_loads_fusion(handle, handle, int, int);
extern handle acc_next_signal_driver_sub(handle, handle, int);
extern int acc_same_dest(handle, handle);
extern void acc_set_user_buffer_size(int);
extern handle acc_handle_path_AH(handle, handle);
extern handle acc_handle_path_old(handle, handle);

/* this function tells if the module that you have got is actually an ova unit*/
extern int acc_is_ova_unit(handle);


/* ********************************************************************** */
/* END: SUPPORT FOR RTX                                                        */
/* ********************************************************************** */

/* V2K signed support */
extern int acc_handle_is_signed VCS_ARGS((handle handleObj));
/* END  V2K signed support */

extern handle acc_handle_ccond VCS_ARGS((handle handleTchk));
extern char *acc_decompile VCS_ARGS((handle handleObj));
extern handle acc_handle_scond VCS_ARGS((handle handleTchk));

extern void  acc_mem_vcl_add VCS_ARGS((handle object_p, int (*consumer)(), char *user_data));
extern void  acc_mem_vcl_delete VCS_ARGS((handle object_p, int (*consumer)(), char *user_data));

/* vcl bit flag definitions */
#define vcl_strength_flag 1
#define vcl_verilog_flag 2
#define vcl_compact_flag 8

/* test whether strength information is requested for vcl */
#define vcl_setstr_m(flags_) ( flags_ |= vcl_strength_flag )
#define vcl_clearstr_m(flags_) ( flags_ &= ~vcl_strength_flag )
#define vcl_isstr_m(flags_) ( flags_ & vcl_strength_flag )

/* test whether Verilog information is requested for vcl */
#define vcl_setvl_m(flags_) ( flags_ |= vcl_verilog_flag )
#define vcl_clearvl_m(flags_) ( flags_ &= ~vcl_verilog_flag )
#define vcl_isvl_m(flags_) ( flags_ & vcl_verilog_flag )

/* test whether vcl trigger is compact or normal */
#define vcl_setcompact_m(flags_) ( flags_ |= vcl_compact_flag )
#define vcl_clearcompact_m(flags_) ( flags_ &= ~vcl_compact_flag )
#define vcl_iscompact_m(flags_) ( flags_ & vcl_compact_flag )


#ifdef VCS_ARGS_DEFINED_HERE
#undef VCS_ARGS_DEFINED_HERE
#undef VCS_ARGS
#endif

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* VCS_ACC_USER_H */
