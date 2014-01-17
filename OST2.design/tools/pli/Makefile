ECHO	= /bin/echo
TOOL_PLI_DIR	=	${DV_ROOT}/verif/env/common/pli
MODEL_PLI_DIR	=	${DV_ROOT}/verif/model
CC	=	${CC_BIN}/gcc
AR	=	${AR_BIN}/ar
# VCS .a libraries

LIB_A	=	$(TOOL_PLI_DIR)/monitor/libmonitor_pli.a \
		$(TOOL_PLI_DIR)/socket/libsocket_pli.a \
		$(TOOL_PLI_DIR)/global_chkr/libglobal_chkr.a \
		$(TOOL_PLI_DIR)/cache/libiob.a \
		$(TOOL_PLI_DIR)/bwutility/libbwutility_pli.a \
		$(TOOL_PLI_DIR)/bwutility/libdummy.a \
		$(MODEL_PLI_DIR)/infineon/libbwmem_pli.a

# VCS targets 

all:	$(LIB_A) $(FILESTAMPS)

clean:
	/bin/rm -rf $(LIB_A)

$(TOOL_PLI_DIR)/monitor/libmonitor_pli.a:
	@$(ECHO) "---> Building $(TOOL_PLI_DIR)/monitor/libmonitor_pli.a"
	( cd $(TOOL_PLI_DIR)/monitor/c; /bin/rm -rf ./obj; /bin/mkdir obj; cd ./obj; \
	$(CC) -g -Wall -I${DV_ROOT}/tools/pli -c $(TOOL_PLI_DIR)/monitor/c/src/monitor.c $(TOOL_PLI_DIR)/monitor/c/src/hasher.c; \
	cd $(TOOL_PLI_DIR)/monitor; /bin/rm -f libmonitor_pli.a; \
	$(AR) cr libmonitor_pli.a ./c/obj/*.o; /bin/rm -rf ./c/obj; \
	cd linux; rm -f libmonitor_pli.a; ln -s ../libmonitor_pli.a ./ )
	@$(ECHO) "<--- Finished building $(TOOL_PLI_DIR)/monitor/libmonitor_pli.a"

$(TOOL_PLI_DIR)/socket/libsocket_pli.a:
	@$(ECHO) "---> Building $(TOOL_PLI_DIR)/socket/libsocket_pli.a"
	( cd $(TOOL_PLI_DIR)/socket/c; /bin/rm -rf ./obj; /bin/mkdir obj; cd ./obj; \
	$(CC) -g -Wall -I${DV_ROOT}/tools/pli -c $(TOOL_PLI_DIR)/socket/c/src/socket.c $(TOOL_PLI_DIR)/socket/c/src/queue.c; \
	cd $(TOOL_PLI_DIR)/socket; /bin/rm -f libsocket_pli.a; \
	$(AR) cr libsocket_pli.a ./c/obj/*.o; /bin/rm -rf ./c/obj; \
	cd linux; rm -f libsocket_pli.a; ln -s ../libsocket_pli.a ./ )
	@$(ECHO) "<--- Finished building $(TOOL_PLI_DIR)/socket/libsocket_pli.a"

$(TOOL_PLI_DIR)/global_chkr/libglobal_chkr.a:
	@$(ECHO) "---> Building $(TOOL_PLI_DIR)/global_chkr/libglobal_chkr.a"
	( cd $(TOOL_PLI_DIR)/global_chkr/c; /bin/rm -rf ./obj; /bin/mkdir obj; cd ./obj; \
	$(CC) -g -Wall -I${DV_ROOT}/tools/pli -c $(TOOL_PLI_DIR)/global_chkr/c/src/global_chkr.c; \
	cd $(TOOL_PLI_DIR)/global_chkr; /bin/rm -f libglobal_chkr.a; \
	$(AR) cr libglobal_chkr.a ./c/obj/*.o; /bin/rm -rf ./c/obj; \
	cd linux; rm -f libglobal_chkr.a; ln -s ../libglobal_chkr.a ./ )
	@$(ECHO) "<--- Finished building $(TOOL_PLI_DIR)/global_chkr/libglobal_chkr.a"

$(TOOL_PLI_DIR)/cache/libiob.a:
	@$(ECHO) "---> Building $(TOOL_PLI_DIR)/cache/libiob.a"
	( cd $(TOOL_PLI_DIR)/cache/c; /bin/rm -rf ./obj; /bin/mkdir obj; cd ./obj; \
	$(CC) -g -Wall -I${DV_ROOT}/tools/pli -c $(TOOL_PLI_DIR)/cache/c/src/b_ary.c $(TOOL_PLI_DIR)/cache/c/src/bw_lib.c $(TOOL_PLI_DIR)/cache/c/src/iob_main.c $(TOOL_PLI_DIR)/cache/c/src/l1warm.c $(TOOL_PLI_DIR)/cache/c/src/l2warm.c $(TOOL_PLI_DIR)/cache/c/src/list.c $(TOOL_PLI_DIR)/cache/c/src/utility.c; \
	cd $(TOOL_PLI_DIR)/cache; /bin/rm -f libiob.a; \
	$(AR) cr libiob.a ./c/obj/*.o; /bin/rm -rf ./c/obj; \
	cd linux; rm -f libiob.a; ln -s ../libiob.a ./ )
	@$(ECHO) "<--- Finished building $(TOOL_PLI_DIR)/cache/libiob.a"

$(TOOL_PLI_DIR)/bwutility/libbwutility_pli.a:
	@$(ECHO) "---> Building $(TOOL_PLI_DIR)/bwutility/libbwutility_pli.a"
	( cd $(TOOL_PLI_DIR)/bwutility/c; /bin/rm -rf ./obj; /bin/mkdir obj; cd ./obj; \
	$(CC) -g -Wall -I${DV_ROOT}/tools/pli -c $(TOOL_PLI_DIR)/bwutility/c/src/mon_pli.c $(TOOL_PLI_DIR)/bwutility/c/src/parse.c $(TOOL_PLI_DIR)/bwutility/c/src/lib.c; \
	cd $(TOOL_PLI_DIR)/bwutility; /bin/rm -f libbwutility_pli.a; \
	$(AR) cr libbwutility_pli.a ./c/obj/*.o; /bin/rm -rf ./c/obj; \
	cd linux; rm -f libbwutility_pli.a; ln -s ../libbwutility_pli.a ./ )
	@$(ECHO) "<--- Finished building $(TOOL_PLI_DIR)/bwutility/libbwutility_pli.a"

$(TOOL_PLI_DIR)/bwutility/libdummy.a:
	@$(ECHO) "---> Building $(TOOL_PLI_DIR)/bwutility/libdummy.a"
	( cd $(TOOL_PLI_DIR)/bwutility/c; /bin/rm -rf ./obj; /bin/mkdir obj; cd ./obj; \
	$(CC) -g -Wall -I${DV_ROOT}/tools/pli -c $(TOOL_PLI_DIR)/bwutility/c/src/dummy.c; \
	cd $(TOOL_PLI_DIR)/bwutility; /bin/rm -f libdummy.a; \
	$(AR) cr libdummy.a ./c/obj/*.o; /bin/rm -rf ./c/obj; \
	cd linux; rm -f libdummy.a; ln -s ../libdummy.a ./ )
	@$(ECHO) "<--- Finished building $(TOOL_PLI_DIR)/bwutility/libdummy.a"

$(MODEL_PLI_DIR)/infineon/libbwmem_pli.a:
	@$(ECHO) "---> Building $(MODEL_PLI_DIR)/infineon/libbwmem_pli.a"
	( cd $(MODEL_PLI_DIR)/infineon/c; /bin/rm -rf ./obj; /bin/mkdir obj; cd ./obj; \
	$(CC) -g -Wall -I${DV_ROOT}/tools/pli -c $(MODEL_PLI_DIR)/infineon/c/src/decode.c $(MODEL_PLI_DIR)/infineon/c/src/mem.c; \
	cd $(MODEL_PLI_DIR)/infineon; /bin/rm -f libbwmem_pli.a; \
	$(AR) cr libbwmem_pli.a ./c/obj/*.o; /bin/rm -rf ./c/obj; \
	cd linux; rm -f libbwmem_pli.a; ln -s ../libbwmem_pli.a ./ )
	@$(ECHO) "<--- Finished building $(MODEL_PLI_DIR)/infineon/libbwmem_pli.a"

$(FILESTAMPS):
	@$(ECHO) "xxxxxxxxxxxxxxxxxxx   FILESTAMPS   xxxxxxxxxxxxxxxxxxx"
	( /bin/ls -al $(TOOL_PLI_DIR)/monitor/libmonitor_pli.a; \
	/bin/ls -al $(TOOL_PLI_DIR)/socket/libsocket_pli.a; \
	/bin/ls -al $(TOOL_PLI_DIR)/global_chkr/libglobal_chkr.a; \
	/bin/ls -al $(TOOL_PLI_DIR)/cache/libiob.a; \
	/bin/ls -al $(TOOL_PLI_DIR)/bwutility/libbwutility_pli.a; \
	/bin/ls -al $(TOOL_PLI_DIR)/bwutility/libdummy.a; \
	/bin/ls -al $(MODEL_PLI_DIR)/infineon/libbwmem_pli.a )
