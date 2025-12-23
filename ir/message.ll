; ModuleID = 'dns/message.bc'
source_filename = "../lib/dns/message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.isc_log = type opaque
%struct.isc_logcategory = type { i8*, i32 }
%struct.isc_logmodule = type { i8*, i32 }
%struct.dns_name = type { i32, i8*, i32, i32, %struct.dns_name_attrs, i8*, %struct.isc_buffer*, %struct.anon.0, %struct.anon.1 }
%struct.dns_name_attrs = type { i16 }
%struct.isc_buffer = type { i32, i8*, i32, i32, i32, i32, i32, i8, %struct.anon, %struct.isc_mem* }
%struct.anon = type { %struct.isc_buffer*, %struct.isc_buffer* }
%struct.isc_mem = type opaque
%struct.anon.0 = type { %struct.dns_name*, %struct.dns_name* }
%struct.anon.1 = type { %struct.dns_rdataset*, %struct.dns_rdataset* }
%struct.dns_rdataset = type { i32, %struct.dns_rdatasetmethods*, %struct.anon.3, i16, i16, i32, i16, i16, i32, i32, i32, %union.anon }
%struct.dns_rdatasetmethods = type { void (%struct.dns_rdataset*)*, i32 (%struct.dns_rdataset*)*, i32 (%struct.dns_rdataset*)*, void (%struct.dns_rdataset*, %struct.dns_rdata*)*, void (%struct.dns_rdataset*, %struct.dns_rdataset*)*, i32 (%struct.dns_rdataset*)*, i32 (%struct.dns_rdataset*, %struct.dns_name*)*, i32 (%struct.dns_rdataset*, %struct.dns_name*, %struct.dns_rdataset*, %struct.dns_rdataset*)*, i32 (%struct.dns_rdataset*, %struct.dns_name*)*, i32 (%struct.dns_rdataset*, %struct.dns_name*, %struct.dns_rdataset*, %struct.dns_rdataset*)*, void (%struct.dns_rdataset*, i16)*, void (%struct.dns_rdataset*)*, void (%struct.dns_rdataset*)*, void (%struct.dns_rdataset*, %struct.dns_name*)*, void (%struct.dns_rdataset*, %struct.dns_name*)*, i32 (%struct.dns_rdataset*, i8*, %struct.dns_message*)* }
%struct.dns_rdata = type { i8*, i32, i16, i16, i32, %struct.anon.2 }
%struct.anon.2 = type { %struct.dns_rdata*, %struct.dns_rdata* }
%struct.dns_message = type { i32, i64, i16, i32, i16, i16, i16, [4 x i32], [4 x %struct.dns_namelist_t], [4 x %struct.dns_name*], %struct.dns_rdataset*, %struct.dns_rdataset*, %struct.dns_rdataset*, i32, i16, i32, i32, i32, i16, i32, %struct.isc_buffer*, %struct.dns_compress*, %struct.isc_mem*, %struct.isc_mempool*, %struct.isc_mempool*, %struct.isc_bufferlist_t, %struct.isc_bufferlist_t, %struct.anon.10, %struct.anon.12, %struct.anon.13, %struct.anon.14, %struct.anon.15, i16, i16, %struct.dns_name*, %struct.dns_rdataset*, %struct.dns_tsigkey*, %struct.dst_context*, i32, i32, %struct.dns_name*, %struct.dst_key*, i16, %struct.isc_region, %struct.isc_region, i32, i32 (%struct.dns_rdata*, i8*)*, %struct.dns_sortlist_arg, %struct.dns_indent_t, [4 x %struct.dns_minttl] }
%struct.dns_namelist_t = type { %struct.dns_name*, %struct.dns_name* }
%struct.dns_compress = type { i32, i32, i16, i16, %struct.isc_mem*, %struct.dns_compress_slot*, [64 x %struct.dns_compress_slot] }
%struct.dns_compress_slot = type { i16, i16 }
%struct.isc_mempool = type opaque
%struct.isc_bufferlist_t = type { %struct.isc_buffer*, %struct.isc_buffer* }
%struct.anon.10 = type { %struct.dns_msgblock*, %struct.dns_msgblock* }
%struct.dns_msgblock = type { i32, i32, %struct.anon.11 }
%struct.anon.11 = type { %struct.dns_msgblock*, %struct.dns_msgblock* }
%struct.anon.12 = type { %struct.dns_msgblock*, %struct.dns_msgblock* }
%struct.anon.13 = type { %struct.dns_msgblock*, %struct.dns_msgblock* }
%struct.anon.14 = type { %struct.dns_rdata*, %struct.dns_rdata* }
%struct.anon.15 = type { %struct.dns_rdatalist*, %struct.dns_rdatalist* }
%struct.dns_rdatalist = type { i16, i16, i16, i32, %struct.anon.8, %struct.anon.9, [32 x i8] }
%struct.anon.8 = type { %struct.dns_rdata*, %struct.dns_rdata* }
%struct.anon.9 = type { %struct.dns_rdatalist*, %struct.dns_rdatalist* }
%struct.dns_tsigkey = type { i32, %struct.isc_mem*, %struct.dst_key*, %struct.dns_fixedname, %struct.dns_name*, %struct.dns_name*, %struct.dns_name*, i8, i32, i32, %struct.dns_tsigkeyring*, i64, %struct.anon.17 }
%struct.dns_fixedname = type { %struct.dns_name, [128 x i8], %struct.isc_buffer, [255 x i8] }
%struct.dns_tsigkeyring = type { i32, %struct.isc_hashmap*, i32, [44 x i8], %struct.isc_rwlock, %struct.isc_mem*, i32, %struct.anon.16, i64, [24 x i8] }
%struct.isc_hashmap = type opaque
%struct.isc_rwlock = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8], i8, [63 x i8] }
%struct.anon.16 = type { %struct.dns_tsigkey*, %struct.dns_tsigkey* }
%struct.anon.17 = type { %struct.dns_tsigkey*, %struct.dns_tsigkey* }
%struct.dst_context = type opaque
%struct.dst_key = type opaque
%struct.isc_region = type { i8*, i32 }
%struct.dns_sortlist_arg = type { %struct.dns_aclenv*, %struct.dns_acl*, %struct.dns_aclelement* }
%struct.dns_aclenv = type { i32, %struct.isc_mem*, i64, [40 x i8], %struct.isc_rwlock, %struct.dns_acl*, %struct.dns_acl*, i8, [47 x i8] }
%struct.dns_acl = type { i32, %struct.isc_mem*, i64, %struct.dns_iptable*, %struct.dns_aclelement*, i8, i32, i32, i8*, %struct.anon.21, %struct.anon.22, i64 }
%struct.dns_iptable = type { i32, %struct.isc_mem*, i64, %struct.isc_radix_tree*, %struct.anon.20 }
%struct.isc_radix_tree = type { i32, %struct.isc_mem*, %struct.isc_radix_node*, i32, i32, i32 }
%struct.isc_radix_node = type { %struct.isc_mem*, i32, %struct.isc_prefix*, %struct.isc_radix_node*, %struct.isc_radix_node*, %struct.isc_radix_node*, [2 x i8*], [2 x i32] }
%struct.isc_prefix = type { %struct.isc_mem*, i32, i32, i64, %union.anon.18 }
%union.anon.18 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.19 }
%union.anon.19 = type { [4 x i32] }
%struct.anon.20 = type { %struct.dns_iptable*, %struct.dns_iptable* }
%struct.anon.21 = type { %struct.dns_acl*, %struct.dns_acl* }
%struct.anon.22 = type { %struct.dns_acl_port_transports*, %struct.dns_acl_port_transports* }
%struct.dns_acl_port_transports = type { i16, i32, i8, i8, %struct.anon.23 }
%struct.anon.23 = type { %struct.dns_acl_port_transports*, %struct.dns_acl_port_transports* }
%struct.dns_aclelement = type { i32, i8, %struct.dns_name, %struct.dns_acl*, i32 }
%struct.dns_indent_t = type { i8*, i64 }
%struct.dns_minttl = type { i8, i32 }
%struct.anon.3 = type { %struct.dns_rdataset*, %struct.dns_rdataset* }
%union.anon = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.dns_db*, i8*, i8*, i8*, i32, %struct.dns_proof*, %struct.dns_proof* }
%struct.dns_db = type { i32, i32, %struct.dns_dbmethods*, i16, i16, %struct.dns_name, i32, %struct.isc_mem*, i64, %struct.cds_lfht* }
%struct.dns_dbmethods = type { void (%struct.dns_db*)*, i32 (%struct.dns_db*, %struct.dns_rdatacallbacks*)*, i32 (%struct.dns_db*, %struct.dns_rdatacallbacks*)*, void (%struct.dns_db*, i8**)*, i32 (%struct.dns_db*, i8**)*, void (%struct.dns_db*, i8*, i8**)*, void (%struct.dns_db*, i8**, i1)*, i32 (%struct.dns_db*, %struct.dns_name*, i1, i8**)*, i32 (%struct.dns_db*, %struct.dns_name*, i8*, i16, i32, i32, i8**, %struct.dns_name*, %struct.dns_rdataset*, %struct.dns_rdataset*)*, i32 (%struct.dns_db*, %struct.dns_name*, i32, i32, i8**, %struct.dns_name*, %struct.dns_name*, %struct.dns_rdataset*, %struct.dns_rdataset*)*, void (%struct.dns_db*, i8*, i8**)*, void (%struct.dns_db*, i8**)*, i32 (%struct.dns_db*, i32, %struct.dns_dbiterator**)*, i32 (%struct.dns_db*, i8*, i8*, i16, i16, i32, %struct.dns_rdataset*, %struct.dns_rdataset*)*, i32 (%struct.dns_db*, i8*, i8*, i32, i32, %struct.dns_rdatasetiter**)*, i32 (%struct.dns_db*, i8*, i8*, i32, %struct.dns_rdataset*, i32, %struct.dns_rdataset*)*, i32 (%struct.dns_db*, i8*, i8*, %struct.dns_rdataset*, i32, %struct.dns_rdataset*)*, i32 (%struct.dns_db*, i8*, i8*, i16, i16)*, i1 (%struct.dns_db*)*, i32 (%struct.dns_db*, i32)*, void (%struct.dns_db*, %struct.isc_loop*)*, i32 (%struct.dns_db*, i8**)*, i32 (%struct.dns_db*, i8*, i32*, i8*, i16*, i8*, i64*)*, i32 (%struct.dns_db*, %struct.dns_name*, i1, i8**)*, i32 (%struct.dns_db*, %struct.dns_rdataset*, i32)*, i32 (%struct.dns_db*, %struct.dns_rdataset*, %struct.dns_name*)*, %struct.dns_stats* (%struct.dns_db*)*, i32 (%struct.dns_db*, %struct.dns_name*, i1, %struct.dns_clientinfomethods*, %struct.dns_clientinfo*, i8**)*, i32 (%struct.dns_db*, %struct.dns_name*, i8*, i16, i32, i32, i8**, %struct.dns_name*, %struct.dns_clientinfomethods*, %struct.dns_clientinfo*, %struct.dns_rdataset*, %struct.dns_rdataset*)*, i32 (%struct.dns_db*, %struct.isc_stats*)*, i64 (%struct.dns_db*)*, i32 (%struct.dns_db*, i8*, i64*, i64*)*, i32 (%struct.dns_db*, i32)*, i32 (%struct.dns_db*, i32*)*, i32 (%struct.dns_db*, i32)*, i32 (%struct.dns_db*, i32*)*, i32 (%struct.dns_db*, %struct.isc_stats*)*, void (%struct.dns_db*, i8*, i32)*, void (%struct.dns_db*, i8*, i32)*, i32 (%struct.dns_db*, i8*, %struct.dns_rdataset*, %struct.dns_message*)*, void (%struct.dns_db*, i8*, i8*)*, void (%struct.dns_db*, i8*, i8*)* }
%struct.dns_rdatacallbacks = type opaque
%struct.dns_dbiterator = type opaque
%struct.dns_rdatasetiter = type opaque
%struct.isc_loop = type opaque
%struct.dns_stats = type opaque
%struct.dns_clientinfomethods = type { i16, i16, i32 (%struct.dns_clientinfo*, %struct.isc_sockaddr**)* }
%struct.isc_sockaddr = type { %union.anon.25, i32, %struct.anon.26 }
%union.anon.25 = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.anon.26 = type { %struct.isc_sockaddr*, %struct.isc_sockaddr* }
%struct.dns_clientinfo = type { i16, i8*, i8*, %struct.dns_ecs }
%struct.dns_ecs = type { %struct.isc_netaddr, i8, i8 }
%struct.isc_netaddr = type { i32, %union.anon.24, i32 }
%union.anon.24 = type { %struct.in6_addr, [92 x i8] }
%struct.isc_stats = type opaque
%struct.cds_lfht = type opaque
%struct.dns_proof = type opaque
%struct.dns_master_style = type opaque
%struct.dns_rdata_sig_t = type { %struct.dns_rdatacommon, %struct.isc_mem*, i16, i8, i8, i32, i32, i32, i16, %struct.dns_name, i16, i8* }
%struct.dns_rdatacommon = type { i16, i16, %struct.anon.27 }
%struct.anon.27 = type { %struct.dns_rdatacommon*, %struct.dns_rdatacommon* }
%struct.dns_rdata_any_tsig = type { %struct.dns_rdatacommon, %struct.isc_mem*, %struct.dns_name, i64, i16, i16, i8*, i16, i16, i16, i8* }
%struct.dns_view = type { i32, %struct.isc_mem*, i16, i8*, %struct.dns_zt*, %struct.dns_resolver*, %struct.dns_adb*, %struct.dns_requestmgr*, %struct.dns_dispatchmgr*, %struct.dns_cache*, %struct.dns_db*, %struct.dns_db*, %struct.dns_keytable*, %struct.dns_ntatable*, %union.pthread_mutex_t, i8, i8, %struct.dns_transport_list*, %struct.dns_tsigkeyring*, %struct.dns_tsigkeyring*, %struct.dns_peerlist*, %struct.dns_order*, %struct.dns_fwdtable*, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, %struct.dns_acl*, i8, %struct.dns_nametree*, %struct.dns_nametree*, %struct.dns_nametree*, %struct.dns_nametree*, %struct.dns_rrl*, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i16, %struct.dns_aclenv*, i16, i8, i8, i16, i32, i32, i8, i32, i16, i16, %struct.dns_acl*, i32, %struct.dns_dns64list_t, i32, i8, %struct.dns_rpz_zones*, %struct.dns_catz_zones*, %struct.dns_dlzdblist_t, %struct.dns_dlzdblist_t, i32, %struct.dns_badcache*, i32, %struct.dns_acl*, %struct.dns_acl*, i8, i64, i64, %struct.anon.35, %struct.dns_viewlist_t*, %struct.dns_zone*, %struct.dns_zone*, %struct.dns_name*, %struct.dns_fixedname, i8*, i8*, i8*, i8*, i64, i8*, void (i8**)*, %union.pthread_mutex_t, [32 x i8], i32, %struct.dns_dtenv*, i16, i8*, void (%struct.isc_mem*, i8**)*, i8*, void (%struct.isc_mem*, i8**)* }
%struct.dns_zt = type opaque
%struct.dns_resolver = type opaque
%struct.dns_adb = type opaque
%struct.dns_requestmgr = type opaque
%struct.dns_dispatchmgr = type opaque
%struct.dns_cache = type opaque
%struct.dns_keytable = type opaque
%struct.dns_ntatable = type opaque
%struct.dns_transport_list = type opaque
%struct.dns_peerlist = type opaque
%struct.dns_order = type opaque
%struct.dns_fwdtable = type opaque
%struct.dns_nametree = type opaque
%struct.dns_rrl = type { %union.pthread_mutex_t, %struct.isc_mem*, i8, %struct.dns_rrl_rate, %struct.dns_rrl_rate, %struct.dns_rrl_rate, %struct.dns_rrl_rate, %struct.dns_rrl_rate, %struct.dns_rrl_rate, %struct.dns_rrl_rate, i32, double, i32, %struct.dns_acl*, i32, i32, i32, double, i32, i32, %struct.anon.28, %struct.anon.32, %struct.dns_rrl_hash*, %struct.dns_rrl_hash*, i32, i32, [4 x i32], i32, i32, i32, [4 x i32], i32, %struct.dns_rrl_entry*, i32, i32, %struct.anon.33, [256 x %struct.dns_rrl_qname_buf*] }
%struct.dns_rrl_rate = type { i32, i32, i8* }
%struct.anon.28 = type { %struct.dns_rrl_block*, %struct.dns_rrl_block* }
%struct.dns_rrl_block = type { %struct.anon.29, i32, [1 x %struct.dns_rrl_entry] }
%struct.anon.29 = type { %struct.dns_rrl_block*, %struct.dns_rrl_block* }
%struct.dns_rrl_entry = type { %struct.anon.30, %struct.anon.31, %union.dns_rrl_key, i64 }
%struct.anon.30 = type { %struct.dns_rrl_entry*, %struct.dns_rrl_entry* }
%struct.anon.31 = type { %struct.dns_rrl_entry*, %struct.dns_rrl_entry* }
%union.dns_rrl_key = type { %struct.dns__rrl_key }
%struct.dns__rrl_key = type { [2 x i32], i32, i16, i8, i8 }
%struct.anon.32 = type { %struct.dns_rrl_entry*, %struct.dns_rrl_entry* }
%struct.dns_rrl_hash = type { i32, i8, i32, [1 x %struct.dns_rrl_bin_t] }
%struct.dns_rrl_bin_t = type { %struct.dns_rrl_entry*, %struct.dns_rrl_entry* }
%struct.anon.33 = type { %struct.dns_rrl_qname_buf*, %struct.dns_rrl_qname_buf* }
%struct.dns_rrl_qname_buf = type { %struct.anon.34, %struct.dns_rrl_entry*, i32, %struct.dns_fixedname }
%struct.anon.34 = type { %struct.dns_rrl_qname_buf*, %struct.dns_rrl_qname_buf* }
%struct.dns_dns64list_t = type { %struct.dns_dns64*, %struct.dns_dns64* }
%struct.dns_dns64 = type opaque
%struct.dns_rpz_zones = type { i32, i64, %struct.isc_mem*, %struct.isc_loopmgr*, %struct.dns_rpz_popt, [64 x %struct.dns_rpz_zone*], [64 x %struct.dns_rpz_triggers], i32, i64, i64, %struct.dns_rpz_have, %struct.dns_rpz_triggers, [56 x i8], %struct.isc_rwlock, %union.pthread_mutex_t, i8, %struct.dns_rpz_cidr_node*, %struct.dns_rbt*, i8*, i64, %struct.librpz_client*, [40 x i8] }
%struct.isc_loopmgr = type opaque
%struct.dns_rpz_popt = type { i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i8 }
%struct.dns_rpz_zone = type { i32, %struct.isc_loop*, i8, %struct.dns_name, %struct.dns_name, %struct.dns_name, %struct.dns_name, %struct.dns_name, %struct.dns_name, %struct.dns_name, %struct.dns_name, %struct.dns_name, i32, i32, i16, i32, %struct.isc_ht*, %struct.dns_rpz_zones*, %struct.isc_time, i8, i8, i32, %struct.dns_db*, i8*, %struct.dns_db*, i8*, i8, %struct.isc_timer* }
%struct.isc_ht = type opaque
%struct.isc_time = type { i32, i32 }
%struct.isc_timer = type opaque
%struct.dns_rpz_have = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dns_rpz_triggers = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dns_rpz_cidr_node = type opaque
%struct.dns_rbt = type opaque
%struct.librpz_client = type opaque
%struct.dns_catz_zones = type opaque
%struct.dns_dlzdblist_t = type { %struct.dns_dlzdb*, %struct.dns_dlzdb* }
%struct.dns_dlzdb = type opaque
%struct.dns_badcache = type opaque
%struct.anon.35 = type { %struct.dns_view*, %struct.dns_view* }
%struct.dns_viewlist_t = type { %struct.dns_view*, %struct.dns_view* }
%struct.dns_zone = type opaque
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.dns_dtenv = type opaque
%struct.dns_ednsopt = type { i16, i16, i8* }

@.str = private unnamed_addr constant [21 x i8] c"../lib/dns/message.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"mctx != ((void*)0)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"msgp != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"*msgp == ((void*)0)\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"intent == DNS_MESSAGE_INTENTPARSE || intent == DNS_MESSAGE_INTENTRENDER\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"(namepool != ((void*)0) && rdspool != ((void*)0)) || (namepool == ((void*)0) && rdspool == ((void*)0))\00", align 1
@.str.6 = private unnamed_addr constant [116 x i8] c"((msg) != ((void*)0) && ((const isc__magic_t *)(msg))->magic == ((('M') << 24 | ('S') << 16 | ('G') << 8 | ('@'))))\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"ptr != ((void*)0)\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"__v > 0 && __v < (4294967295U)\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"__v > 0\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"isc_refcount_current(&ptr->references) == 0\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"ptrp != ((void*)0) && *ptrp == ((void*)0)\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"ptrp != ((void*)0) && *ptrp != ((void*)0)\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"name != ((void*)0)\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"rdataset == ((void*)0) || *rdataset == ((void*)0)\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"source != ((void*)0)\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"msg->from_to_wire == DNS_MESSAGE_INTENTPARSE\00", align 1
@dns_lctx = external local_unnamed_addr global %struct.isc_log*, align 8
@isc_categories = external global [0 x %struct.isc_logcategory], align 8
@dns_modules = external global [0 x %struct.isc_logmodule], align 8
@.str.17 = private unnamed_addr constant [43 x i8] c"message has %u byte(s) of trailing garbage\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"buffer != ((void*)0)\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"msg->buffer == ((void*)0)\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"msg->from_to_wire == DNS_MESSAGE_INTENTRENDER\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"msg->buffer != ((void*)0)\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"rn.length > r.length\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"space <= msg->reserved\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"(((sectionid) > (-1)) && ((sectionid) < 4))\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"st.used < 65536\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"target != ((void*)0)\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"r.length >= 12\00", align 1
@.str.28 = private unnamed_addr constant [101 x i8] c"msg->counts[0] < 65536 && msg->counts[1] < 65536 && msg->counts[2] < 65536 && msg->counts[3] < 65536\00", align 1
@dns_rootname = external local_unnamed_addr global %struct.dns_name*, align 8
@.str.29 = private unnamed_addr constant [40 x i8] c"(((section) > (-1)) && ((section) < 4))\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"msg->cursors[section] != ((void*)0)\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"name != ((void*)0) && *name == ((void*)0)\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"msg != ((void*)0)\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"name == ((void*)0) || *name == ((void*)0)\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"rdataset == ((void*)0)\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"(((fromsection) > (-1)) && ((fromsection) < 4))\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"(((tosection) > (-1)) && ((tosection) < 4))\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"(msg->sections[fromsection]).tail == (name)\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"(msg->sections[fromsection]).head == (name)\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"(msg->sections[fromsection]).head != (name)\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"(msg->sections[fromsection]).tail != (name)\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"(msg->sections[section]).tail == (name)\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"(msg->sections[section]).head == (name)\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"(msg->sections[section]).head != (name)\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"(msg->sections[section]).tail != (name)\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"item != ((void*)0) && *item == ((void*)0)\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"itemp != ((void*)0) && *itemp != ((void*)0)\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"!((void *)((item)->link.prev) != ((void *)-1))\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"((item->list).head) == ((void*)0)\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"item != ((void*)0) && *item != ((void*)0)\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"!dns_rdataset_isassociated(*item)\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"(msg->flags & 0x8000U) == 0\00", align 1
@.str.52 = private unnamed_addr constant [50 x i8] c"opt->type == ((dns_rdatatype_t)dns_rdatatype_opt)\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"msg->state == (-1)\00", align 1
@.str.54 = private unnamed_addr constant [44 x i8] c"owner == ((void*)0) || *owner == ((void*)0)\00", align 1
@.str.55 = private unnamed_addr constant [57 x i8] c"msg->tsigkey == ((void*)0) && msg->sig0key == ((void*)0)\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"msg->querytsig == ((void*)0)\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"querytsig != ((void*)0) && *querytsig == ((void*)0)\00", align 1
@.str.58 = private unnamed_addr constant [57 x i8] c"msg->sig0key == ((void*)0) && msg->tsigkey == ((void*)0)\00", align 1
@.str.59 = private unnamed_addr constant [87 x i8] c"((*buffer) != ((void*)0) && ((const isc__magic_t *)(*buffer))->magic == (0x42756621U))\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"signer != ((void*)0)\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"result == ISC_R_SUCCESS\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"tsig.error != ((dns_rcode_t)dns_rcode_noerror)\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"result != ISC_R_SUCCESS\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"msg->saved.base != ((void*)0)\00", align 1
@sectiontext = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.242, i32 0, i32 0)], align 16
@updsectiontext = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.242, i32 0, i32 0)], align 16
@.str.65 = private unnamed_addr constant [11 x i8] c"_SECTION:\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c";; \00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c" SECTION:\0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"(((section) > (-1)) && ((section) < 3))\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c";; OPT PSEUDOSECTION:\0A\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"; EDNS: version: \00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c", flags:\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c" do\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"; MBZ: \00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"0x%.4x\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c", udp: \00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"; udp: \00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.82 = private unnamed_addr constant [45 x i8] c"((&optbuf)->used - (&optbuf)->current) >= 4U\00", align 1
@.str.83 = private unnamed_addr constant [49 x i8] c"((&optbuf)->used - (&optbuf)->current) >= optlen\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"; LLQ:\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"; NSID:\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"; COOKIE:\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"; CLIENT-SUBNET:\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"; EXPIRE:\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"; TCP KEEPALIVE:\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c" %u.%u\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c" secs\0A\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"; PAD:\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c" (%u bytes)\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"; KEY-TAG:\00", align 1
@.str.98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"%s %u\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"; EDE:\00", align 1
@edetext = internal unnamed_addr constant [25 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.302, i32 0, i32 0)], align 16
@.str.102 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c" %02x (\22%c\22)\0A\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"; CLIENT-TAG:\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c" %u\0A\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"; SERVER-TAG:\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"; OPT=\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"%u:\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c" (good)\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c" (echoed)\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c" (bad)\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"(\22\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"\22)\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c";; TSIG PSEUDOSECTION:\0A\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c";; SIG0 PSEUDOSECTION:\0A\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"opcode: \00", align 1
@opcodetext = internal unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.317, i32 0, i32 0)], align 16
@.str.122 = private unnamed_addr constant [9 x i8] c"status: \00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"id: \00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"flags:\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c" qr\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c" aa\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c" tc\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c" rd\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c" ra\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c" ad\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c" cd\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"MBZ: 0x4\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"QUESTION: \00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"ZONE: \00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"%1u\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"ANSWER: \00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"PREREQ: \00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"AUTHORITY: \00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"UPDATE: \00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"ADDITIONAL: \00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c";; ->>HEADER<<- opcode: \00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c", status: \00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c", id: \00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"%6u\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c";; flags:\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"; MBZ: 0x4\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"; QUESTION: \00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"; ZONE: \00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c", ANSWER: \00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c", PREREQ: \00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c", AUTHORITY: \00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c", UPDATE: \00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c", ADDITIONAL: \00", align 1
@.str.154 = private unnamed_addr constant [45 x i8] c"(order == ((void*)0)) == (env == ((void*)0))\00", align 1
@.str.155 = private unnamed_addr constant [63 x i8] c"env == ((void*)0) || (acl != ((void*)0) || elem != ((void*)0))\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"opcode < 16\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"address != ((void*)0)\00", align 1
@dns_master_style_debug = external constant %struct.dns_master_style, align 1
@.str.158 = private unnamed_addr constant [124 x i8] c"((message) != ((void*)0) && ((const isc__magic_t *)(message))->magic == ((('M') << 24 | ('S') << 16 | ('G') << 8 | ('@'))))\00", align 1
@.str.159 = private unnamed_addr constant [52 x i8] c"rdatasetp != ((void*)0) && *rdatasetp == ((void*)0)\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"msg->rdclass_set == 0\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"pttl != ((void*)0)\00", align 1
@.str.162 = private unnamed_addr constant [52 x i8] c"namepoolp != ((void*)0) && *namepoolp == ((void*)0)\00", align 1
@.str.163 = private unnamed_addr constant [50 x i8] c"rdspoolp != ((void*)0) && *rdspoolp == ((void*)0)\00", align 1
@.str.164 = private unnamed_addr constant [19 x i8] c"dns_fixedname_pool\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"dns_rdataset_pool\00", align 1
@.str.166 = private unnamed_addr constant [52 x i8] c"namepoolp != ((void*)0) && *namepoolp != ((void*)0)\00", align 1
@.str.167 = private unnamed_addr constant [50 x i8] c"rdspoolp != ((void*)0) && *rdspoolp != ((void*)0)\00", align 1
@.str.168 = private unnamed_addr constant [42 x i8] c"isc_mempool_getallocated(*namepoolp) == 0\00", align 1
@.str.169 = private unnamed_addr constant [41 x i8] c"isc_mempool_getallocated(*rdspoolp) == 0\00", align 1
@.str.170 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.171 = private unnamed_addr constant [32 x i8] c"../lib/isc/include/isc/buffer.h\00", align 1
@.str.172 = private unnamed_addr constant [44 x i8] c"dbufp != ((void*)0) && *dbufp == ((void*)0)\00", align 1
@.str.173 = private unnamed_addr constant [75 x i8] c"((b) != ((void*)0) && ((const isc__magic_t *)(b))->magic == (0x42756621U))\00", align 1
@.str.174 = private unnamed_addr constant [33 x i8] c"(msg->freerdata).tail == (rdata)\00", align 1
@.str.175 = private unnamed_addr constant [33 x i8] c"(msg->freerdata).head == (rdata)\00", align 1
@.str.176 = private unnamed_addr constant [33 x i8] c"(msg->freerdata).head != (rdata)\00", align 1
@.str.177 = private unnamed_addr constant [33 x i8] c"(msg->freerdata).tail != (rdata)\00", align 1
@.str.178 = private unnamed_addr constant [41 x i8] c"(msg->freerdatalist).tail == (rdatalist)\00", align 1
@.str.179 = private unnamed_addr constant [41 x i8] c"(msg->freerdatalist).head == (rdatalist)\00", align 1
@.str.180 = private unnamed_addr constant [41 x i8] c"(msg->freerdatalist).head != (rdatalist)\00", align 1
@.str.181 = private unnamed_addr constant [41 x i8] c"(msg->freerdatalist).tail != (rdatalist)\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"dynbuf != ((void*)0)\00", align 1
@.str.183 = private unnamed_addr constant [35 x i8] c"(msg->scratchpad).tail == (dynbuf)\00", align 1
@.str.184 = private unnamed_addr constant [35 x i8] c"(msg->scratchpad).head == (dynbuf)\00", align 1
@.str.185 = private unnamed_addr constant [35 x i8] c"(msg->scratchpad).head != (dynbuf)\00", align 1
@.str.186 = private unnamed_addr constant [35 x i8] c"(msg->scratchpad).tail != (dynbuf)\00", align 1
@.str.187 = private unnamed_addr constant [33 x i8] c"(msg->rdatas).tail == (msgblock)\00", align 1
@.str.188 = private unnamed_addr constant [33 x i8] c"(msg->rdatas).head == (msgblock)\00", align 1
@.str.189 = private unnamed_addr constant [33 x i8] c"(msg->rdatas).head != (msgblock)\00", align 1
@.str.190 = private unnamed_addr constant [33 x i8] c"(msg->rdatas).tail != (msgblock)\00", align 1
@.str.191 = private unnamed_addr constant [37 x i8] c"(msg->rdatalists).tail == (msgblock)\00", align 1
@.str.192 = private unnamed_addr constant [37 x i8] c"(msg->rdatalists).head == (msgblock)\00", align 1
@.str.193 = private unnamed_addr constant [37 x i8] c"(msg->rdatalists).head != (msgblock)\00", align 1
@.str.194 = private unnamed_addr constant [37 x i8] c"(msg->rdatalists).tail != (msgblock)\00", align 1
@.str.195 = private unnamed_addr constant [34 x i8] c"(msg->offsets).tail == (msgblock)\00", align 1
@.str.196 = private unnamed_addr constant [34 x i8] c"(msg->offsets).head == (msgblock)\00", align 1
@.str.197 = private unnamed_addr constant [34 x i8] c"(msg->offsets).head != (msgblock)\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"(msg->offsets).tail != (msgblock)\00", align 1
@.str.199 = private unnamed_addr constant [32 x i8] c"(msg->cleanup).tail == (dynbuf)\00", align 1
@.str.200 = private unnamed_addr constant [32 x i8] c"(msg->cleanup).head == (dynbuf)\00", align 1
@.str.201 = private unnamed_addr constant [32 x i8] c"(msg->cleanup).head != (dynbuf)\00", align 1
@.str.202 = private unnamed_addr constant [32 x i8] c"(msg->cleanup).tail != (dynbuf)\00", align 1
@.str.203 = private unnamed_addr constant [108 x i8] c"dbufp != ((void*)0) && ((*dbufp) != ((void*)0) && ((const isc__magic_t *)(*dbufp))->magic == (0x42756621U))\00", align 1
@.str.204 = private unnamed_addr constant [29 x i8] c"(*dbufp)->mctx != ((void*)0)\00", align 1
@.str.205 = private unnamed_addr constant [44 x i8] c"!((void *)((b)->link.prev) != ((void *)-1))\00", align 1
@.str.206 = private unnamed_addr constant [22 x i8] c"b->mctx == ((void*)0)\00", align 1
@.str.207 = private unnamed_addr constant [16 x i8] c"r != ((void*)0)\00", align 1
@.str.209 = private unnamed_addr constant [26 x i8] c"b->current + n <= b->used\00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.211 = private unnamed_addr constant [30 x i8] c"../lib/dns/include/dns/name.h\00", align 1
@.str.212 = private unnamed_addr constant [118 x i8] c"((name) != ((void*)0) && ((const isc__magic_t *)(name))->magic == ((('D') << 24 | ('N') << 16 | ('S') << 8 | ('n'))))\00", align 1
@.str.213 = private unnamed_addr constant [58 x i8] c"(!name->attributes.readonly && !name->attributes.dynamic)\00", align 1
@.str.214 = private unnamed_addr constant [20 x i8] c"first != ((void*)0)\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"!free_name\00", align 1
@.str.216 = private unnamed_addr constant [15 x i8] c"!free_rdataset\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"trysize != 0\00", align 1
@.str.218 = private unnamed_addr constant [25 x i8] c"b->used + n <= b->length\00", align 1
@.str.219 = private unnamed_addr constant [41 x i8] c"((b)->length - (b)->used) >= sizeof(val)\00", align 1
@.str.220 = private unnamed_addr constant [81 x i8] c"((dbuf) != ((void*)0) && ((const isc__magic_t *)(dbuf))->magic == (0x42756621U))\00", align 1
@.str.222 = private unnamed_addr constant [34 x i8] c"(msg->sections[i]).tail == (name)\00", align 1
@.str.223 = private unnamed_addr constant [34 x i8] c"(msg->sections[i]).head == (name)\00", align 1
@.str.224 = private unnamed_addr constant [34 x i8] c"(msg->sections[i]).head != (name)\00", align 1
@.str.225 = private unnamed_addr constant [34 x i8] c"(msg->sections[i]).tail != (name)\00", align 1
@.str.226 = private unnamed_addr constant [27 x i8] c"(name->list).tail == (rds)\00", align 1
@.str.227 = private unnamed_addr constant [27 x i8] c"(name->list).head == (rds)\00", align 1
@.str.228 = private unnamed_addr constant [27 x i8] c"(name->list).head != (rds)\00", align 1
@.str.229 = private unnamed_addr constant [27 x i8] c"(name->list).tail != (rds)\00", align 1
@.str.230 = private unnamed_addr constant [31 x i8] c"dns_rdataset_isassociated(rds)\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"b != ((void*)0)\00", align 1
@.str.232 = private unnamed_addr constant [36 x i8] c"dns_rdataset_isassociated(msg->opt)\00", align 1
@.str.233 = private unnamed_addr constant [37 x i8] c"dns_rdataset_isassociated(msg->tsig)\00", align 1
@.str.234 = private unnamed_addr constant [28 x i8] c"msg->namepool != ((void*)0)\00", align 1
@.str.235 = private unnamed_addr constant [37 x i8] c"dns_rdataset_isassociated(msg->sig0)\00", align 1
@.str.236 = private unnamed_addr constant [50 x i8] c"((b)->length - (b)->used) >= (unsigned int)length\00", align 1
@.str.237 = private unnamed_addr constant [79 x i8] c"(buffer != ((void*)0) && name->buffer == ((void*)0)) || (buffer == ((void*)0))\00", align 1
@.str.238 = private unnamed_addr constant [36 x i8] c"((b)->length - (b)->used) >= length\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"QUESTION\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"ANSWER\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"AUTHORITY\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"ADDITIONAL\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"ZONE\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"PREREQUISITE\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.246 = private unnamed_addr constant [20 x i8] c"OPT_PSEUDOSECTION:\0A\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"EDNS:\0A\00", align 1
@.str.248 = private unnamed_addr constant [10 x i8] c"version: \00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"MBZ: \00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"udp: \00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"LLQ:\00", align 1
@.str.252 = private unnamed_addr constant [6 x i8] c"NSID:\00", align 1
@.str.253 = private unnamed_addr constant [8 x i8] c"COOKIE:\00", align 1
@.str.254 = private unnamed_addr constant [15 x i8] c"CLIENT-SUBNET:\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c"EXPIRE:\00", align 1
@.str.256 = private unnamed_addr constant [16 x i8] c"TCP-KEEPALIVE: \00", align 1
@.str.257 = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.258 = private unnamed_addr constant [15 x i8] c"TCP-KEEPALIVE:\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"PAD:\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"KEY-TAG:\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"EDE:\00", align 1
@.str.262 = private unnamed_addr constant [11 x i8] c"INFO-CODE:\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"EXTRA-TEXT:\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"CLIENT-TAG:\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"SERVER-TAG:\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"OPT=\00", align 1
@.str.267 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.268 = private unnamed_addr constant [21 x i8] c"TSIG_PSEUDOSECTION:\0A\00", align 1
@.str.269 = private unnamed_addr constant [21 x i8] c"SIG0_PSEUDOSECTION:\0A\00", align 1
@.str.270 = private unnamed_addr constant [11 x i8] c" Version: \00", align 1
@.str.271 = private unnamed_addr constant [11 x i8] c", Opcode: \00", align 1
@.str.272 = private unnamed_addr constant [10 x i8] c", Error: \00", align 1
@.str.273 = private unnamed_addr constant [15 x i8] c", Identifier: \00", align 1
@.str.274 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.275 = private unnamed_addr constant [13 x i8] c", Lifetime: \00", align 1
@.str.276 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"/%d/%d\00", align 1
@.str.278 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.279 = private unnamed_addr constant [29 x i8] c"Unsupported DNSKEY Algorithm\00", align 1
@.str.280 = private unnamed_addr constant [27 x i8] c"Unsupported DS Digest Type\00", align 1
@.str.281 = private unnamed_addr constant [13 x i8] c"Stale Answer\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"Forged Answer\00", align 1
@.str.283 = private unnamed_addr constant [21 x i8] c"DNSSEC Indeterminate\00", align 1
@.str.284 = private unnamed_addr constant [13 x i8] c"DNSSEC Bogus\00", align 1
@.str.285 = private unnamed_addr constant [18 x i8] c"Signature Expired\00", align 1
@.str.286 = private unnamed_addr constant [24 x i8] c"Signature Not Yet Valid\00", align 1
@.str.287 = private unnamed_addr constant [15 x i8] c"DNSKEY Missing\00", align 1
@.str.288 = private unnamed_addr constant [15 x i8] c"RRSIGs Missing\00", align 1
@.str.289 = private unnamed_addr constant [20 x i8] c"No Zone Key Bit Set\00", align 1
@.str.290 = private unnamed_addr constant [13 x i8] c"NSEC Missing\00", align 1
@.str.291 = private unnamed_addr constant [13 x i8] c"Cached Error\00", align 1
@.str.292 = private unnamed_addr constant [10 x i8] c"Not Ready\00", align 1
@.str.293 = private unnamed_addr constant [8 x i8] c"Blocked\00", align 1
@.str.294 = private unnamed_addr constant [9 x i8] c"Censored\00", align 1
@.str.295 = private unnamed_addr constant [9 x i8] c"Filtered\00", align 1
@.str.296 = private unnamed_addr constant [11 x i8] c"Prohibited\00", align 1
@.str.297 = private unnamed_addr constant [22 x i8] c"Stale NXDOMAIN Answer\00", align 1
@.str.298 = private unnamed_addr constant [18 x i8] c"Not Authoritative\00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"Not Supported\00", align 1
@.str.300 = private unnamed_addr constant [23 x i8] c"No Reachable Authority\00", align 1
@.str.301 = private unnamed_addr constant [14 x i8] c"Network Error\00", align 1
@.str.302 = private unnamed_addr constant [13 x i8] c"Invalid Data\00", align 1
@.str.303 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.304 = private unnamed_addr constant [7 x i8] c"IQUERY\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.306 = private unnamed_addr constant [10 x i8] c"RESERVED3\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@.str.308 = private unnamed_addr constant [10 x i8] c"RESERVED6\00", align 1
@.str.309 = private unnamed_addr constant [10 x i8] c"RESERVED7\00", align 1
@.str.310 = private unnamed_addr constant [10 x i8] c"RESERVED8\00", align 1
@.str.311 = private unnamed_addr constant [10 x i8] c"RESERVED9\00", align 1
@.str.312 = private unnamed_addr constant [11 x i8] c"RESERVED10\00", align 1
@.str.313 = private unnamed_addr constant [11 x i8] c"RESERVED11\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"RESERVED12\00", align 1
@.str.315 = private unnamed_addr constant [11 x i8] c"RESERVED13\00", align 1
@.str.316 = private unnamed_addr constant [11 x i8] c"RESERVED14\00", align 1
@.str.317 = private unnamed_addr constant [11 x i8] c"RESERVED15\00", align 1
@.str.318 = private unnamed_addr constant [13 x i8] c"%s%s%s%s%.*s\00", align 1
@.str.319 = private unnamed_addr constant [17 x i8] c"_r->length >= _l\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_create(%struct.isc_mem* noundef %0, %struct.isc_mempool* noundef %1, %struct.isc_mempool* noundef %2, i32 noundef %3, %struct.dns_message** noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.isc_buffer*, align 8
  %7 = icmp eq %struct.isc_mem* %0, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 706, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %5
  %10 = icmp eq %struct.dns_message** %4, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 707, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = load %struct.dns_message*, %struct.dns_message** %4, align 8, !tbaa !5
  %14 = icmp eq %struct.dns_message* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 708, i32 noundef 0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #20
  unreachable

16:                                               ; preds = %12
  %17 = add i32 %3, -1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 710, i32 noundef 0, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0)) #20
  unreachable

20:                                               ; preds = %16
  %21 = icmp ne %struct.isc_mempool* %1, null
  %22 = icmp ne %struct.isc_mempool* %2, null
  %23 = and i1 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = icmp eq %struct.isc_mempool* %1, null
  %26 = icmp eq %struct.isc_mempool* %2, null
  %27 = and i1 %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 712, i32 noundef 0, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0)) #20
  unreachable

29:                                               ; preds = %24, %20
  %30 = tail call noalias i8* @isc__mem_get(%struct.isc_mem* noundef nonnull %0, i64 noundef 544, i32 noundef 0) #21
  %31 = trunc i32 %3 to i16
  %32 = and i16 %31, 3
  %33 = icmp eq %struct.isc_mempool* %1, null
  %34 = icmp eq %struct.isc_mempool* %2, null
  %35 = and i1 %33, %34
  %36 = select i1 %35, i16 -32768, i16 0
  %37 = or i16 %32, %36
  %38 = bitcast i8* %30 to i32*
  store i32 1297303360, i32* %38, align 8, !tbaa.struct !9
  %39 = getelementptr inbounds i8, i8* %30, i64 4
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 4, !tbaa.struct !17
  %41 = getelementptr inbounds i8, i8* %30, i64 8
  %42 = bitcast i8* %41 to i64*
  store i64 1, i64* %42, align 8, !tbaa.struct !18
  %43 = getelementptr inbounds i8, i8* %30, i64 16
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(156) %43, i8 0, i64 156, i1 false)
  %44 = getelementptr inbounds i8, i8* %30, i64 172
  %45 = bitcast i8* %44 to i16*
  store i16 %37, i16* %45, align 4, !tbaa.struct !19
  %46 = getelementptr inbounds i8, i8* %30, i64 174
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(50) %46, i8 0, i64 50, i1 false)
  %47 = getelementptr inbounds i8, i8* %30, i64 224
  %48 = bitcast i8* %47 to %struct.isc_mempool**
  store %struct.isc_mempool* %1, %struct.isc_mempool** %48, align 8, !tbaa.struct !20
  %49 = getelementptr inbounds i8, i8* %30, i64 232
  %50 = bitcast i8* %49 to %struct.isc_mempool**
  store %struct.isc_mempool* %2, %struct.isc_mempool** %50, align 8, !tbaa.struct !21
  %51 = getelementptr inbounds i8, i8* %30, i64 240
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(304) %51, i8 0, i64 304, i1 false)
  %52 = getelementptr inbounds i8, i8* %30, i64 216
  %53 = bitcast i8* %52 to %struct.isc_mem**
  tail call void @isc_mem_attach(%struct.isc_mem* noundef nonnull %0, %struct.isc_mem** noundef nonnull %53) #21
  %54 = load i16, i16* %45, align 4
  %55 = icmp sgt i16 %54, -1
  br i1 %55, label %57, label %56

56:                                               ; preds = %29
  tail call void @dns_message_createpools(%struct.isc_mem* noundef nonnull %0, %struct.isc_mempool** noundef nonnull %48, %struct.isc_mempool** noundef nonnull %50)
  br label %57

57:                                               ; preds = %56, %29
  %58 = bitcast i8* %30 to %struct.dns_message*
  tail call fastcc void @msginit(%struct.dns_message* noundef %58)
  %59 = getelementptr inbounds i8, i8* %30, i64 48
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %59, i8 0, i64 64, i1 false), !tbaa !5
  %60 = bitcast %struct.isc_buffer** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #21
  store %struct.isc_buffer* null, %struct.isc_buffer** %6, align 8, !tbaa !5
  call fastcc void @isc_buffer_allocate(%struct.isc_mem* noundef nonnull %0, %struct.isc_buffer** noundef nonnull %6, i32 noundef 1232)
  %61 = getelementptr inbounds i8, i8* %30, i64 248
  %62 = bitcast i8* %61 to %struct.isc_buffer**
  %63 = load %struct.isc_buffer*, %struct.isc_buffer** %62, align 8, !tbaa !22
  %64 = icmp eq %struct.isc_buffer* %63, null
  %65 = load %struct.isc_buffer*, %struct.isc_buffer** %6, align 8, !tbaa !5
  %66 = bitcast i8* %51 to %struct.isc_buffer**
  %67 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %63, i64 0, i32 8, i32 1
  %68 = select i1 %64, %struct.isc_buffer** %66, %struct.isc_buffer** %67
  store %struct.isc_buffer* %65, %struct.isc_buffer** %68, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %65, i64 0, i32 8, i32 0
  store %struct.isc_buffer* %63, %struct.isc_buffer** %69, align 8, !tbaa !28
  %70 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %65, i64 0, i32 8, i32 1
  store %struct.isc_buffer* null, %struct.isc_buffer** %70, align 8, !tbaa !31
  store %struct.isc_buffer* %65, %struct.isc_buffer** %62, align 8, !tbaa !22
  %71 = bitcast %struct.dns_message** %4 to i8**
  store i8* %30, i8** %71, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #21
  ret void
}

; Function Attrs: noreturn
declare void @isc_assertion_failed(i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare noalias i8* @isc__mem_get(%struct.isc_mem* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare void @isc_mem_attach(%struct.isc_mem* noundef, %struct.isc_mem** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_createpools(%struct.isc_mem* noundef %0, %struct.isc_mempool** noundef %1, %struct.isc_mempool** noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.isc_mem* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4771, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq %struct.isc_mempool** %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = load %struct.isc_mempool*, %struct.isc_mempool** %1, align 8, !tbaa !5
  %10 = icmp eq %struct.isc_mempool* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %6
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4772, i32 noundef 0, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.162, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %8
  %13 = icmp eq %struct.isc_mempool** %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = load %struct.isc_mempool*, %struct.isc_mempool** %2, align 8, !tbaa !5
  %16 = icmp eq %struct.isc_mempool* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4773, i32 noundef 0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.163, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %14
  tail call void @isc__mempool_create(%struct.isc_mem* noundef nonnull %0, i64 noundef 528, %struct.isc_mempool** noundef nonnull %1) #21
  %19 = load %struct.isc_mempool*, %struct.isc_mempool** %1, align 8, !tbaa !5
  tail call void @isc_mempool_setfillcount(%struct.isc_mempool* noundef %19, i32 noundef 4) #21
  %20 = load %struct.isc_mempool*, %struct.isc_mempool** %1, align 8, !tbaa !5
  tail call void @isc_mempool_setfreemax(%struct.isc_mempool* noundef %20, i32 noundef 32) #21
  %21 = load %struct.isc_mempool*, %struct.isc_mempool** %1, align 8, !tbaa !5
  tail call void @isc_mempool_setname(%struct.isc_mempool* noundef %21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.164, i64 0, i64 0)) #21
  tail call void @isc__mempool_create(%struct.isc_mem* noundef nonnull %0, i64 noundef 112, %struct.isc_mempool** noundef nonnull %2) #21
  %22 = load %struct.isc_mempool*, %struct.isc_mempool** %2, align 8, !tbaa !5
  tail call void @isc_mempool_setfillcount(%struct.isc_mempool* noundef %22, i32 noundef 4) #21
  %23 = load %struct.isc_mempool*, %struct.isc_mempool** %2, align 8, !tbaa !5
  tail call void @isc_mempool_setfreemax(%struct.isc_mempool* noundef %23, i32 noundef 32) #21
  %24 = load %struct.isc_mempool*, %struct.isc_mempool** %2, align 8, !tbaa !5
  tail call void @isc_mempool_setname(%struct.isc_mempool* noundef %24, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.165, i64 0, i64 0)) #21
  ret void
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @msginit(%struct.dns_message* nocapture noundef %0) unnamed_addr #6 {
  tail call fastcc void @msginitheader(%struct.dns_message* noundef %0)
  tail call fastcc void @msginitprivate(%struct.dns_message* noundef %0)
  tail call fastcc void @msginittsig(%struct.dns_message* noundef %0)
  %2 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %3 = load i16, i16* %2, align 4
  %4 = and i16 %3, -125
  store i16 %4, i16* %2, align 4
  %5 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 46
  %6 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 0
  store i8* null, i8** %6, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 1
  store i32 0, i32* %7, align 8, !tbaa !33
  %8 = and i16 %3, -253
  %9 = bitcast i32 (%struct.dns_rdata*, i8*)** %5 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  store i16 %8, i16* %2, align 4
  %10 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 0
  store i8* null, i8** %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 1
  store i32 0, i32* %11, align 8, !tbaa !35
  %12 = and i16 %3, -14333
  store i16 %12, i16* %2, align 4
  %13 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 35
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %13, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.170, i64 0, i64 0), i8** %14, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  store i64 0, i64* %15, align 8, !tbaa !38
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_allocate(%struct.isc_mem* noundef %0, %struct.isc_buffer** noalias noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq %struct.isc_buffer** %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load %struct.isc_buffer*, %struct.isc_buffer** %1, align 8, !tbaa !5
  %7 = icmp eq %struct.isc_buffer* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1083, i32 noundef 0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.172, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %5
  %10 = zext i32 %2 to i64
  %11 = add nuw nsw i64 %10, 64
  %12 = tail call noalias i8* @isc__mem_get(%struct.isc_mem* noundef %0, i64 noundef %11, i32 noundef 0) #21
  %13 = bitcast i8* %12 to %struct.isc_buffer*
  %14 = getelementptr inbounds i8, i8* %12, i64 64
  tail call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef %13, i8* noundef nonnull %14, i32 noundef %2)
  %15 = getelementptr inbounds i8, i8* %12, i64 32
  %16 = bitcast i8* %15 to i32*
  store i32 %2, i32* %16, align 8, !tbaa !39
  tail call fastcc void @isc_buffer_setmctx(%struct.isc_buffer* noundef %13, %struct.isc_mem* noundef %0)
  %17 = bitcast %struct.isc_buffer** %1 to i8**
  store i8* %12, i8** %17, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_reset(%struct.dns_message* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 752, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = add i32 %1, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i32 noundef 0, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0)) #20
  unreachable

13:                                               ; preds = %9
  tail call fastcc void @msgreset(%struct.dns_message* noundef nonnull %0, i1 noundef zeroext false)
  %14 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %15 = trunc i32 %1 to i16
  %16 = load i16, i16* %14, align 4
  %17 = and i16 %15, 3
  %18 = and i16 %16, -4
  %19 = or i16 %18, %17
  store i16 %19, i16* %14, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @msgreset(%struct.dns_message* noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.isc_buffer*, align 8
  %4 = bitcast %struct.isc_buffer** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #21
  tail call fastcc void @msgresetnames(%struct.dns_message* noundef %0, i32 noundef 0)
  tail call fastcc void @msgresetopt(%struct.dns_message* noundef %0)
  tail call fastcc void @msgresetsigs(%struct.dns_message* noundef %0, i1 noundef zeroext false)
  %5 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 30, i32 0
  %6 = load %struct.dns_rdata*, %struct.dns_rdata** %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 30, i32 1
  %8 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 30, i32 1
  br label %9

9:                                                ; preds = %44, %2
  %10 = phi %struct.dns_rdata* [ %6, %2 ], [ %41, %44 ]
  %11 = icmp eq %struct.dns_rdata* %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %10, i64 0, i32 5
  %14 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %10, i64 0, i32 5, i32 1
  %15 = load %struct.dns_rdata*, %struct.dns_rdata** %14, align 8, !tbaa !43
  %16 = icmp eq %struct.dns_rdata* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i64 0, i32 0
  %19 = load %struct.dns_rdata*, %struct.dns_rdata** %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %15, i64 0, i32 5, i32 0
  store %struct.dns_rdata* %19, %struct.dns_rdata** %20, align 8, !tbaa !45
  br label %28

21:                                               ; preds = %12
  %22 = load %struct.dns_rdata*, %struct.dns_rdata** %7, align 8, !tbaa !46
  %23 = icmp eq %struct.dns_rdata* %22, %10
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 547, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.174, i64 0, i64 0)) #20
  unreachable

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i64 0, i32 0
  %27 = load %struct.dns_rdata*, %struct.dns_rdata** %26, align 8, !tbaa !45
  store %struct.dns_rdata* %27, %struct.dns_rdata** %7, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %25, %17
  %29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i64 0, i32 0
  %30 = load %struct.dns_rdata*, %struct.dns_rdata** %29, align 8, !tbaa !45
  %31 = icmp eq %struct.dns_rdata* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %30, i64 0, i32 5, i32 1
  br label %38

34:                                               ; preds = %28
  %35 = load %struct.dns_rdata*, %struct.dns_rdata** %5, align 8, !tbaa !42
  %36 = icmp eq %struct.dns_rdata* %35, %10
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 547, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.175, i64 0, i64 0)) #20
  unreachable

38:                                               ; preds = %34, %32
  %39 = phi %struct.dns_rdata** [ %33, %32 ], [ %5, %34 ]
  store %struct.dns_rdata* %15, %struct.dns_rdata** %39, align 8, !tbaa !5
  %40 = bitcast %struct.anon.2* %13 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8 -1, i64 16, i1 false)
  %41 = load %struct.dns_rdata*, %struct.dns_rdata** %5, align 8, !tbaa !42
  %42 = icmp eq %struct.dns_rdata* %41, %10
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 547, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.176, i64 0, i64 0)) #20
  unreachable

44:                                               ; preds = %38
  %45 = load %struct.dns_rdata*, %struct.dns_rdata** %8, align 8, !tbaa !46
  %46 = icmp eq %struct.dns_rdata* %45, %10
  br i1 %46, label %47, label %9, !llvm.loop !47

47:                                               ; preds = %44
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 547, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.177, i64 0, i64 0)) #20
  unreachable

48:                                               ; preds = %9
  %49 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 31, i32 0
  %50 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %49, align 8, !tbaa !50
  %51 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 31, i32 1
  %52 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 31, i32 1
  br label %53

53:                                               ; preds = %88, %48
  %54 = phi %struct.dns_rdatalist* [ %50, %48 ], [ %85, %88 ]
  %55 = icmp eq %struct.dns_rdatalist* %54, null
  br i1 %55, label %92, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %54, i64 0, i32 5
  %58 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %54, i64 0, i32 5, i32 1
  %59 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %58, align 8, !tbaa !51
  %60 = icmp eq %struct.dns_rdatalist* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %57, i64 0, i32 0
  %63 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %62, align 8, !tbaa !53
  %64 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %59, i64 0, i32 5, i32 0
  store %struct.dns_rdatalist* %63, %struct.dns_rdatalist** %64, align 8, !tbaa !53
  br label %72

65:                                               ; preds = %56
  %66 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %51, align 8, !tbaa !54
  %67 = icmp eq %struct.dns_rdatalist* %66, %54
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.178, i64 0, i64 0)) #20
  unreachable

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %57, i64 0, i32 0
  %71 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %70, align 8, !tbaa !53
  store %struct.dns_rdatalist* %71, %struct.dns_rdatalist** %51, align 8, !tbaa !54
  br label %72

72:                                               ; preds = %69, %61
  %73 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %57, i64 0, i32 0
  %74 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %73, align 8, !tbaa !53
  %75 = icmp eq %struct.dns_rdatalist* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %74, i64 0, i32 5, i32 1
  br label %82

78:                                               ; preds = %72
  %79 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %49, align 8, !tbaa !50
  %80 = icmp eq %struct.dns_rdatalist* %79, %54
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.179, i64 0, i64 0)) #20
  unreachable

82:                                               ; preds = %78, %76
  %83 = phi %struct.dns_rdatalist** [ %77, %76 ], [ %49, %78 ]
  store %struct.dns_rdatalist* %59, %struct.dns_rdatalist** %83, align 8, !tbaa !5
  %84 = bitcast %struct.anon.9* %57 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %84, i8 -1, i64 16, i1 false)
  %85 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %49, align 8, !tbaa !50
  %86 = icmp eq %struct.dns_rdatalist* %85, %54
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.180, i64 0, i64 0)) #20
  unreachable

88:                                               ; preds = %82
  %89 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %52, align 8, !tbaa !54
  %90 = icmp eq %struct.dns_rdatalist* %89, %54
  br i1 %90, label %91, label %53, !llvm.loop !55

91:                                               ; preds = %88
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.181, i64 0, i64 0)) #20
  unreachable

92:                                               ; preds = %53
  %93 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 25, i32 0
  %94 = load %struct.isc_buffer*, %struct.isc_buffer** %93, align 8, !tbaa !56
  store %struct.isc_buffer* %94, %struct.isc_buffer** %3, align 8, !tbaa !5
  %95 = icmp eq %struct.isc_buffer* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 557, i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.182, i64 0, i64 0)) #20
  unreachable

97:                                               ; preds = %92
  br i1 %1, label %102, label %98

98:                                               ; preds = %97
  tail call fastcc void @isc_buffer_clear(%struct.isc_buffer* noundef nonnull %94)
  %99 = load %struct.isc_buffer*, %struct.isc_buffer** %3, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %99, i64 0, i32 8, i32 1
  %101 = load %struct.isc_buffer*, %struct.isc_buffer** %100, align 8, !tbaa !31
  store %struct.isc_buffer* %101, %struct.isc_buffer** %3, align 8, !tbaa !5
  br label %102

102:                                              ; preds = %98, %97
  %103 = load %struct.isc_buffer*, %struct.isc_buffer** %3, align 8, !tbaa !5
  %104 = icmp eq %struct.isc_buffer* %103, null
  br i1 %104, label %147, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 25, i32 1
  %107 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 25, i32 1
  br label %108

108:                                              ; preds = %105, %145
  %109 = phi %struct.isc_buffer* [ %103, %105 ], [ %112, %145 ]
  %110 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %109, i64 0, i32 8
  %111 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %109, i64 0, i32 8, i32 1
  %112 = load %struct.isc_buffer*, %struct.isc_buffer** %111, align 8, !tbaa !31
  %113 = icmp eq %struct.isc_buffer* %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %110, i64 0, i32 0
  %116 = load %struct.isc_buffer*, %struct.isc_buffer** %115, align 8, !tbaa !28
  %117 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %112, i64 0, i32 8, i32 0
  store %struct.isc_buffer* %116, %struct.isc_buffer** %117, align 8, !tbaa !28
  br label %125

118:                                              ; preds = %108
  %119 = load %struct.isc_buffer*, %struct.isc_buffer** %106, align 8, !tbaa !22
  %120 = icmp eq %struct.isc_buffer* %119, %109
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 564, i32 noundef 2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.183, i64 0, i64 0)) #20
  unreachable

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %110, i64 0, i32 0
  %124 = load %struct.isc_buffer*, %struct.isc_buffer** %123, align 8, !tbaa !28
  store %struct.isc_buffer* %124, %struct.isc_buffer** %106, align 8, !tbaa !22
  br label %125

125:                                              ; preds = %122, %114
  %126 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %109, i64 0, i32 8, i32 0
  %127 = load %struct.isc_buffer*, %struct.isc_buffer** %126, align 8, !tbaa !28
  %128 = icmp eq %struct.isc_buffer* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %127, i64 0, i32 8, i32 1
  br label %135

131:                                              ; preds = %125
  %132 = load %struct.isc_buffer*, %struct.isc_buffer** %93, align 8, !tbaa !56
  %133 = icmp eq %struct.isc_buffer* %132, %109
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 564, i32 noundef 2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.184, i64 0, i64 0)) #20
  unreachable

135:                                              ; preds = %131, %129
  %136 = phi %struct.isc_buffer** [ %130, %129 ], [ %93, %131 ]
  store %struct.isc_buffer* %112, %struct.isc_buffer** %136, align 8, !tbaa !5
  %137 = bitcast %struct.isc_buffer** %126 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %137, i8 -1, i64 16, i1 false)
  %138 = load %struct.isc_buffer*, %struct.isc_buffer** %93, align 8, !tbaa !56
  %139 = icmp eq %struct.isc_buffer* %138, %109
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 564, i32 noundef 2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.185, i64 0, i64 0)) #20
  unreachable

141:                                              ; preds = %135
  %142 = load %struct.isc_buffer*, %struct.isc_buffer** %107, align 8, !tbaa !22
  %143 = icmp eq %struct.isc_buffer* %142, %109
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 564, i32 noundef 2, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.186, i64 0, i64 0)) #20
  unreachable

145:                                              ; preds = %141
  call fastcc void @isc_buffer_free(%struct.isc_buffer** noundef nonnull %3)
  store %struct.isc_buffer* %112, %struct.isc_buffer** %3, align 8, !tbaa !5
  %146 = icmp eq %struct.isc_buffer* %112, null
  br i1 %146, label %147, label %108, !llvm.loop !57

147:                                              ; preds = %145, %102
  %148 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 27, i32 0
  %149 = load %struct.dns_msgblock*, %struct.dns_msgblock** %148, align 8, !tbaa !58
  %150 = xor i1 %1, true
  %151 = icmp ne %struct.dns_msgblock* %149, null
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  call fastcc void @msgblock_reset(%struct.dns_msgblock* noundef nonnull %149)
  %154 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %149, i64 0, i32 2, i32 1
  %155 = load %struct.dns_msgblock*, %struct.dns_msgblock** %154, align 8, !tbaa !59
  br label %156

156:                                              ; preds = %153, %147
  %157 = phi %struct.dns_msgblock* [ %155, %153 ], [ %149, %147 ]
  %158 = icmp eq %struct.dns_msgblock* %157, null
  br i1 %158, label %203, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 27, i32 1
  %161 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 27, i32 1
  %162 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  br label %163

163:                                              ; preds = %159, %200
  %164 = phi %struct.dns_msgblock* [ %157, %159 ], [ %167, %200 ]
  %165 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %164, i64 0, i32 2
  %166 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %164, i64 0, i32 2, i32 1
  %167 = load %struct.dns_msgblock*, %struct.dns_msgblock** %166, align 8, !tbaa !59
  %168 = icmp eq %struct.dns_msgblock* %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %165, i64 0, i32 0
  %171 = load %struct.dns_msgblock*, %struct.dns_msgblock** %170, align 8, !tbaa !61
  %172 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %167, i64 0, i32 2, i32 0
  store %struct.dns_msgblock* %171, %struct.dns_msgblock** %172, align 8, !tbaa !61
  br label %180

173:                                              ; preds = %163
  %174 = load %struct.dns_msgblock*, %struct.dns_msgblock** %160, align 8, !tbaa !62
  %175 = icmp eq %struct.dns_msgblock* %174, %164
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 576, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.187, i64 0, i64 0)) #20
  unreachable

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %165, i64 0, i32 0
  %179 = load %struct.dns_msgblock*, %struct.dns_msgblock** %178, align 8, !tbaa !61
  store %struct.dns_msgblock* %179, %struct.dns_msgblock** %160, align 8, !tbaa !62
  br label %180

180:                                              ; preds = %177, %169
  %181 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %165, i64 0, i32 0
  %182 = load %struct.dns_msgblock*, %struct.dns_msgblock** %181, align 8, !tbaa !61
  %183 = icmp eq %struct.dns_msgblock* %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %182, i64 0, i32 2, i32 1
  br label %190

186:                                              ; preds = %180
  %187 = load %struct.dns_msgblock*, %struct.dns_msgblock** %148, align 8, !tbaa !58
  %188 = icmp eq %struct.dns_msgblock* %187, %164
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 576, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.188, i64 0, i64 0)) #20
  unreachable

190:                                              ; preds = %186, %184
  %191 = phi %struct.dns_msgblock** [ %185, %184 ], [ %148, %186 ]
  store %struct.dns_msgblock* %167, %struct.dns_msgblock** %191, align 8, !tbaa !5
  %192 = bitcast %struct.anon.11* %165 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %192, i8 -1, i64 16, i1 false)
  %193 = load %struct.dns_msgblock*, %struct.dns_msgblock** %148, align 8, !tbaa !58
  %194 = icmp eq %struct.dns_msgblock* %193, %164
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 576, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.189, i64 0, i64 0)) #20
  unreachable

196:                                              ; preds = %190
  %197 = load %struct.dns_msgblock*, %struct.dns_msgblock** %161, align 8, !tbaa !62
  %198 = icmp eq %struct.dns_msgblock* %197, %164
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 576, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.190, i64 0, i64 0)) #20
  unreachable

200:                                              ; preds = %196
  %201 = load %struct.isc_mem*, %struct.isc_mem** %162, align 8, !tbaa !63
  call fastcc void @msgblock_free(%struct.isc_mem* noundef %201, %struct.dns_msgblock* noundef nonnull %164, i32 noundef 40)
  %202 = icmp eq %struct.dns_msgblock* %167, null
  br i1 %202, label %203, label %163, !llvm.loop !64

203:                                              ; preds = %200, %156
  %204 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 28, i32 0
  %205 = load %struct.dns_msgblock*, %struct.dns_msgblock** %204, align 8, !tbaa !65
  %206 = icmp ne %struct.dns_msgblock* %205, null
  %207 = select i1 %150, i1 %206, i1 false
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  call fastcc void @msgblock_reset(%struct.dns_msgblock* noundef nonnull %205)
  %209 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %205, i64 0, i32 2, i32 1
  %210 = load %struct.dns_msgblock*, %struct.dns_msgblock** %209, align 8, !tbaa !59
  br label %211

211:                                              ; preds = %208, %203
  %212 = phi %struct.dns_msgblock* [ %210, %208 ], [ %205, %203 ]
  %213 = icmp eq %struct.dns_msgblock* %212, null
  br i1 %213, label %258, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 28, i32 1
  %216 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 28, i32 1
  %217 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  br label %218

218:                                              ; preds = %214, %255
  %219 = phi %struct.dns_msgblock* [ %212, %214 ], [ %222, %255 ]
  %220 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %219, i64 0, i32 2
  %221 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %219, i64 0, i32 2, i32 1
  %222 = load %struct.dns_msgblock*, %struct.dns_msgblock** %221, align 8, !tbaa !59
  %223 = icmp eq %struct.dns_msgblock* %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %220, i64 0, i32 0
  %226 = load %struct.dns_msgblock*, %struct.dns_msgblock** %225, align 8, !tbaa !61
  %227 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %222, i64 0, i32 2, i32 0
  store %struct.dns_msgblock* %226, %struct.dns_msgblock** %227, align 8, !tbaa !61
  br label %235

228:                                              ; preds = %218
  %229 = load %struct.dns_msgblock*, %struct.dns_msgblock** %215, align 8, !tbaa !66
  %230 = icmp eq %struct.dns_msgblock* %229, %219
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 592, i32 noundef 2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.191, i64 0, i64 0)) #20
  unreachable

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %220, i64 0, i32 0
  %234 = load %struct.dns_msgblock*, %struct.dns_msgblock** %233, align 8, !tbaa !61
  store %struct.dns_msgblock* %234, %struct.dns_msgblock** %215, align 8, !tbaa !66
  br label %235

235:                                              ; preds = %232, %224
  %236 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %220, i64 0, i32 0
  %237 = load %struct.dns_msgblock*, %struct.dns_msgblock** %236, align 8, !tbaa !61
  %238 = icmp eq %struct.dns_msgblock* %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %237, i64 0, i32 2, i32 1
  br label %245

241:                                              ; preds = %235
  %242 = load %struct.dns_msgblock*, %struct.dns_msgblock** %204, align 8, !tbaa !65
  %243 = icmp eq %struct.dns_msgblock* %242, %219
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 592, i32 noundef 2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.192, i64 0, i64 0)) #20
  unreachable

245:                                              ; preds = %241, %239
  %246 = phi %struct.dns_msgblock** [ %240, %239 ], [ %204, %241 ]
  store %struct.dns_msgblock* %222, %struct.dns_msgblock** %246, align 8, !tbaa !5
  %247 = bitcast %struct.anon.11* %220 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %247, i8 -1, i64 16, i1 false)
  %248 = load %struct.dns_msgblock*, %struct.dns_msgblock** %204, align 8, !tbaa !65
  %249 = icmp eq %struct.dns_msgblock* %248, %219
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 592, i32 noundef 2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.193, i64 0, i64 0)) #20
  unreachable

251:                                              ; preds = %245
  %252 = load %struct.dns_msgblock*, %struct.dns_msgblock** %216, align 8, !tbaa !66
  %253 = icmp eq %struct.dns_msgblock* %252, %219
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 592, i32 noundef 2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.194, i64 0, i64 0)) #20
  unreachable

255:                                              ; preds = %251
  %256 = load %struct.isc_mem*, %struct.isc_mem** %217, align 8, !tbaa !63
  call fastcc void @msgblock_free(%struct.isc_mem* noundef %256, %struct.dns_msgblock* noundef nonnull %219, i32 noundef 80)
  %257 = icmp eq %struct.dns_msgblock* %222, null
  br i1 %257, label %258, label %218, !llvm.loop !67

258:                                              ; preds = %255, %211
  %259 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 29, i32 0
  %260 = load %struct.dns_msgblock*, %struct.dns_msgblock** %259, align 8, !tbaa !68
  %261 = icmp ne %struct.dns_msgblock* %260, null
  %262 = select i1 %150, i1 %261, i1 false
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  call fastcc void @msgblock_reset(%struct.dns_msgblock* noundef nonnull %260)
  %264 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %260, i64 0, i32 2, i32 1
  %265 = load %struct.dns_msgblock*, %struct.dns_msgblock** %264, align 8, !tbaa !59
  br label %266

266:                                              ; preds = %263, %258
  %267 = phi %struct.dns_msgblock* [ %265, %263 ], [ %260, %258 ]
  %268 = icmp eq %struct.dns_msgblock* %267, null
  br i1 %268, label %313, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 29, i32 1
  %271 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 29, i32 1
  %272 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  br label %273

273:                                              ; preds = %269, %310
  %274 = phi %struct.dns_msgblock* [ %267, %269 ], [ %277, %310 ]
  %275 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %274, i64 0, i32 2
  %276 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %274, i64 0, i32 2, i32 1
  %277 = load %struct.dns_msgblock*, %struct.dns_msgblock** %276, align 8, !tbaa !59
  %278 = icmp eq %struct.dns_msgblock* %277, null
  br i1 %278, label %283, label %279

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %275, i64 0, i32 0
  %281 = load %struct.dns_msgblock*, %struct.dns_msgblock** %280, align 8, !tbaa !61
  %282 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %277, i64 0, i32 2, i32 0
  store %struct.dns_msgblock* %281, %struct.dns_msgblock** %282, align 8, !tbaa !61
  br label %290

283:                                              ; preds = %273
  %284 = load %struct.dns_msgblock*, %struct.dns_msgblock** %270, align 8, !tbaa !69
  %285 = icmp eq %struct.dns_msgblock* %284, %274
  br i1 %285, label %287, label %286

286:                                              ; preds = %283
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 604, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.195, i64 0, i64 0)) #20
  unreachable

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %275, i64 0, i32 0
  %289 = load %struct.dns_msgblock*, %struct.dns_msgblock** %288, align 8, !tbaa !61
  store %struct.dns_msgblock* %289, %struct.dns_msgblock** %270, align 8, !tbaa !69
  br label %290

290:                                              ; preds = %287, %279
  %291 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %275, i64 0, i32 0
  %292 = load %struct.dns_msgblock*, %struct.dns_msgblock** %291, align 8, !tbaa !61
  %293 = icmp eq %struct.dns_msgblock* %292, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %292, i64 0, i32 2, i32 1
  br label %300

296:                                              ; preds = %290
  %297 = load %struct.dns_msgblock*, %struct.dns_msgblock** %259, align 8, !tbaa !68
  %298 = icmp eq %struct.dns_msgblock* %297, %274
  br i1 %298, label %300, label %299

299:                                              ; preds = %296
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 604, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.196, i64 0, i64 0)) #20
  unreachable

300:                                              ; preds = %296, %294
  %301 = phi %struct.dns_msgblock** [ %295, %294 ], [ %259, %296 ]
  store %struct.dns_msgblock* %277, %struct.dns_msgblock** %301, align 8, !tbaa !5
  %302 = bitcast %struct.anon.11* %275 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %302, i8 -1, i64 16, i1 false)
  %303 = load %struct.dns_msgblock*, %struct.dns_msgblock** %259, align 8, !tbaa !68
  %304 = icmp eq %struct.dns_msgblock* %303, %274
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 604, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.197, i64 0, i64 0)) #20
  unreachable

306:                                              ; preds = %300
  %307 = load %struct.dns_msgblock*, %struct.dns_msgblock** %271, align 8, !tbaa !69
  %308 = icmp eq %struct.dns_msgblock* %307, %274
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 604, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.198, i64 0, i64 0)) #20
  unreachable

310:                                              ; preds = %306
  %311 = load %struct.isc_mem*, %struct.isc_mem** %272, align 8, !tbaa !63
  call fastcc void @msgblock_free(%struct.isc_mem* noundef %311, %struct.dns_msgblock* noundef nonnull %274, i32 noundef 128)
  %312 = icmp eq %struct.dns_msgblock* %277, null
  br i1 %312, label %313, label %273, !llvm.loop !70

313:                                              ; preds = %310, %266
  %314 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %315 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %314, align 8, !tbaa !71
  %316 = icmp eq %struct.dns_tsigkey* %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  call void @dns_tsigkey_detach(%struct.dns_tsigkey** noundef nonnull %314) #21
  store %struct.dns_tsigkey* null, %struct.dns_tsigkey** %314, align 8, !tbaa !71
  br label %318

318:                                              ; preds = %317, %313
  %319 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 37
  %320 = load %struct.dst_context*, %struct.dst_context** %319, align 8, !tbaa !72
  %321 = icmp eq %struct.dst_context* %320, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %318
  call void @dst_context_destroy(%struct.dst_context** noundef nonnull %319) #21
  br label %323

323:                                              ; preds = %322, %318
  %324 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 0
  %325 = load i8*, i8** %324, align 8, !tbaa !32
  %326 = icmp eq i8* %325, null
  br i1 %326, label %340, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %329 = load i16, i16* %328, align 4
  %330 = and i16 %329, 128
  %331 = icmp eq i16 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %334 = load %struct.isc_mem*, %struct.isc_mem** %333, align 8, !tbaa !63
  %335 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 1
  %336 = load i32, i32* %335, align 8, !tbaa !33
  %337 = zext i32 %336 to i64
  call void @isc__mem_put(%struct.isc_mem* noundef %334, i8* noundef nonnull %325, i64 noundef %337, i32 noundef 0) #21
  store i8* null, i8** %324, align 8, !tbaa !32
  br label %338

338:                                              ; preds = %332, %327
  store i8* null, i8** %324, align 8, !tbaa !32
  %339 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 1
  store i32 0, i32* %339, align 8, !tbaa !33
  br label %340

340:                                              ; preds = %338, %323
  %341 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 0
  %342 = load i8*, i8** %341, align 8, !tbaa !34
  %343 = icmp eq i8* %342, null
  br i1 %343, label %357, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %346 = load i16, i16* %345, align 4
  %347 = and i16 %346, 256
  %348 = icmp eq i16 %347, 0
  br i1 %348, label %355, label %349

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %351 = load %struct.isc_mem*, %struct.isc_mem** %350, align 8, !tbaa !63
  %352 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 1
  %353 = load i32, i32* %352, align 8, !tbaa !35
  %354 = zext i32 %353 to i64
  call void @isc__mem_put(%struct.isc_mem* noundef %351, i8* noundef nonnull %342, i64 noundef %354, i32 noundef 0) #21
  store i8* null, i8** %341, align 8, !tbaa !34
  br label %355

355:                                              ; preds = %349, %344
  store i8* null, i8** %341, align 8, !tbaa !34
  %356 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 1
  store i32 0, i32* %356, align 8, !tbaa !35
  br label %357

357:                                              ; preds = %355, %340
  %358 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 26, i32 0
  %359 = load %struct.isc_buffer*, %struct.isc_buffer** %358, align 8, !tbaa !73
  store %struct.isc_buffer* %359, %struct.isc_buffer** %3, align 8, !tbaa !5
  %360 = icmp eq %struct.isc_buffer* %359, null
  br i1 %360, label %403, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 26, i32 1
  %363 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 26, i32 1
  br label %364

364:                                              ; preds = %361, %401
  %365 = phi %struct.isc_buffer* [ %359, %361 ], [ %368, %401 ]
  %366 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %365, i64 0, i32 8
  %367 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %365, i64 0, i32 8, i32 1
  %368 = load %struct.isc_buffer*, %struct.isc_buffer** %367, align 8, !tbaa !31
  %369 = icmp eq %struct.isc_buffer* %368, null
  br i1 %369, label %374, label %370

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.anon, %struct.anon* %366, i64 0, i32 0
  %372 = load %struct.isc_buffer*, %struct.isc_buffer** %371, align 8, !tbaa !28
  %373 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %368, i64 0, i32 8, i32 0
  store %struct.isc_buffer* %372, %struct.isc_buffer** %373, align 8, !tbaa !28
  br label %381

374:                                              ; preds = %364
  %375 = load %struct.isc_buffer*, %struct.isc_buffer** %362, align 8, !tbaa !74
  %376 = icmp eq %struct.isc_buffer* %375, %365
  br i1 %376, label %378, label %377

377:                                              ; preds = %374
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 642, i32 noundef 2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.199, i64 0, i64 0)) #20
  unreachable

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.anon, %struct.anon* %366, i64 0, i32 0
  %380 = load %struct.isc_buffer*, %struct.isc_buffer** %379, align 8, !tbaa !28
  store %struct.isc_buffer* %380, %struct.isc_buffer** %362, align 8, !tbaa !74
  br label %381

381:                                              ; preds = %378, %370
  %382 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %365, i64 0, i32 8, i32 0
  %383 = load %struct.isc_buffer*, %struct.isc_buffer** %382, align 8, !tbaa !28
  %384 = icmp eq %struct.isc_buffer* %383, null
  br i1 %384, label %387, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %383, i64 0, i32 8, i32 1
  br label %391

387:                                              ; preds = %381
  %388 = load %struct.isc_buffer*, %struct.isc_buffer** %358, align 8, !tbaa !73
  %389 = icmp eq %struct.isc_buffer* %388, %365
  br i1 %389, label %391, label %390

390:                                              ; preds = %387
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 642, i32 noundef 2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.200, i64 0, i64 0)) #20
  unreachable

391:                                              ; preds = %387, %385
  %392 = phi %struct.isc_buffer** [ %386, %385 ], [ %358, %387 ]
  store %struct.isc_buffer* %368, %struct.isc_buffer** %392, align 8, !tbaa !5
  %393 = bitcast %struct.isc_buffer** %382 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %393, i8 -1, i64 16, i1 false)
  %394 = load %struct.isc_buffer*, %struct.isc_buffer** %358, align 8, !tbaa !73
  %395 = icmp eq %struct.isc_buffer* %394, %365
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 642, i32 noundef 2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.201, i64 0, i64 0)) #20
  unreachable

397:                                              ; preds = %391
  %398 = load %struct.isc_buffer*, %struct.isc_buffer** %363, align 8, !tbaa !74
  %399 = icmp eq %struct.isc_buffer* %398, %365
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 642, i32 noundef 2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.202, i64 0, i64 0)) #20
  unreachable

401:                                              ; preds = %397
  call fastcc void @isc_buffer_free(%struct.isc_buffer** noundef nonnull %3)
  store %struct.isc_buffer* %368, %struct.isc_buffer** %3, align 8, !tbaa !5
  %402 = icmp eq %struct.isc_buffer* %368, null
  br i1 %402, label %403, label %364, !llvm.loop !75

403:                                              ; preds = %401, %357
  %404 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 47, i32 0
  %405 = load %struct.dns_aclenv*, %struct.dns_aclenv** %404, align 8, !tbaa !76
  %406 = icmp eq %struct.dns_aclenv* %405, null
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  call void @dns_aclenv_detach(%struct.dns_aclenv** noundef nonnull %404) #21
  br label %408

408:                                              ; preds = %407, %403
  %409 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 47, i32 1
  %410 = load %struct.dns_acl*, %struct.dns_acl** %409, align 8, !tbaa !77
  %411 = icmp eq %struct.dns_acl* %410, null
  br i1 %411, label %413, label %412

412:                                              ; preds = %408
  call void @dns_acl_detach(%struct.dns_acl** noundef nonnull %409) #21
  br label %413

413:                                              ; preds = %412, %408
  br i1 %1, label %415, label %414

414:                                              ; preds = %413
  call fastcc void @msginit(%struct.dns_message* noundef %0)
  br label %415

415:                                              ; preds = %414, %413
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dns_message* @dns_message_ref(%struct.dns_message* noundef returned %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0)) #20
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 1
  %6 = atomicrmw add i64* %5, i64 1 monotonic, align 8
  %7 = add i64 %6, -1
  %8 = icmp ult i64 %7, 4294967294
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i32 noundef 2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0)) #20
  unreachable

10:                                               ; preds = %4
  ret %struct.dns_message* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_unref(%struct.dns_message* noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0)) #20
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 1
  %6 = atomicrmw sub i64* %5, i64 1 acq_rel, align 8
  switch i64 %6, label %13 [
    i64 0, label %7
    i64 1, label %8
  ]

7:                                                ; preds = %4
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i32 noundef 2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %4
  %9 = load atomic i64, i64* %5 acquire, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i32 noundef 0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %8
  tail call fastcc void @dns__message_destroy(%struct.dns_message* noundef nonnull %0)
  br label %13

13:                                               ; preds = %4, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dns__message_destroy(%struct.dns_message* noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !40
  %4 = icmp eq i32 %3, 1297303360
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %1
  tail call fastcc void @msgreset(%struct.dns_message* noundef %0, i1 noundef zeroext true)
  store i32 0, i32* %2, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %8 = load i16, i16* %7, align 4
  %9 = icmp sgt i16 %8, -1
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 23
  %12 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 24
  tail call void @dns_message_destroypools(%struct.isc_mempool** noundef nonnull %11, %struct.isc_mempool** noundef nonnull %12)
  br label %13

13:                                               ; preds = %6, %10
  %14 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %15 = bitcast %struct.dns_message* %0 to i8*
  tail call void @isc__mem_putanddetach(%struct.isc_mem** noundef nonnull %14, i8* noundef %15, i64 noundef 544, i32 noundef 0) #21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_attach(%struct.dns_message* noundef %0, %struct.dns_message** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message** %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct.dns_message*, %struct.dns_message** %1, align 8, !tbaa !5
  %6 = icmp eq %struct.dns_message* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %4
  %9 = tail call %struct.dns_message* @dns_message_ref(%struct.dns_message* noundef %0)
  store %struct.dns_message* %0, %struct.dns_message** %1, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_detach(%struct.dns_message** noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message** %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load %struct.dns_message*, %struct.dns_message** %0, align 8, !tbaa !5
  %5 = icmp eq %struct.dns_message* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %3
  store %struct.dns_message* null, %struct.dns_message** %0, align 8, !tbaa !5
  tail call void @dns_message_unref(%struct.dns_message* noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_find(%struct.dns_name* noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, %struct.dns_rdataset** noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq %struct.dns_name* %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 807, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %5
  %9 = icmp eq %struct.dns_rdataset** %4, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load %struct.dns_rdataset*, %struct.dns_rdataset** %4, align 8, !tbaa !5
  %12 = icmp eq %struct.dns_rdataset* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 808, i32 noundef 0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %10, %8
  %15 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 8, i32 1
  %16 = load %struct.dns_rdataset*, %struct.dns_rdataset** %15, align 8, !tbaa !5
  %17 = icmp eq %struct.dns_rdataset* %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %14, %33
  %19 = phi %struct.dns_rdataset* [ %35, %33 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %19, i64 0, i32 3
  %21 = load i16, i16* %20, align 8, !tbaa !79
  %22 = icmp eq i16 %21, %1
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %19, i64 0, i32 4
  %25 = load i16, i16* %24, align 2, !tbaa !81
  %26 = icmp eq i16 %25, %2
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %19, i64 0, i32 7
  %29 = load i16, i16* %28, align 2, !tbaa !82
  %30 = icmp eq i16 %29, %3
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  br i1 %9, label %37, label %32

32:                                               ; preds = %31
  store %struct.dns_rdataset* %19, %struct.dns_rdataset** %4, align 8, !tbaa !5
  br label %37

33:                                               ; preds = %18, %23, %27
  %34 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %19, i64 0, i32 2, i32 0
  %35 = load %struct.dns_rdataset*, %struct.dns_rdataset** %34, align 8, !tbaa !5
  %36 = icmp eq %struct.dns_rdataset* %35, null
  br i1 %36, label %37, label %18, !llvm.loop !83

37:                                               ; preds = %33, %14, %31, %32
  %38 = phi i32 [ 0, %32 ], [ 0, %31 ], [ 23, %14 ], [ 23, %33 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_findtype(%struct.dns_name* noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, %struct.dns_rdataset** noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.dns_name* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 831, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %4
  %8 = icmp eq %struct.dns_rdataset** %3, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load %struct.dns_rdataset*, %struct.dns_rdataset** %3, align 8, !tbaa !5
  %11 = icmp eq %struct.dns_rdataset* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 832, i32 noundef 0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0)) #20
  unreachable

13:                                               ; preds = %9, %7
  %14 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 8, i32 1
  %15 = load %struct.dns_rdataset*, %struct.dns_rdataset** %14, align 8, !tbaa !5
  %16 = icmp eq %struct.dns_rdataset* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13, %28
  %18 = phi %struct.dns_rdataset* [ %30, %28 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %18, i64 0, i32 4
  %20 = load i16, i16* %19, align 2, !tbaa !81
  %21 = icmp eq i16 %20, %1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %18, i64 0, i32 7
  %24 = load i16, i16* %23, align 2, !tbaa !82
  %25 = icmp eq i16 %24, %2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  br i1 %8, label %32, label %27

27:                                               ; preds = %26
  store %struct.dns_rdataset* %18, %struct.dns_rdataset** %3, align 8, !tbaa !5
  br label %32

28:                                               ; preds = %17, %22
  %29 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %18, i64 0, i32 2, i32 0
  %30 = load %struct.dns_rdataset*, %struct.dns_rdataset** %29, align 8, !tbaa !5
  %31 = icmp eq %struct.dns_rdataset* %30, null
  br i1 %31, label %32, label %17, !llvm.loop !84

32:                                               ; preds = %28, %13, %26, %27
  %33 = phi i32 [ 0, %27 ], [ 0, %26 ], [ 23, %13 ], [ 23, %28 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_parse(%struct.dns_message* noundef %0, %struct.isc_buffer* noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.isc_region, align 8
  %5 = alloca %struct.isc_buffer, align 8
  %6 = bitcast %struct.isc_region* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #21
  %7 = bitcast %struct.isc_buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #21
  %8 = icmp eq %struct.dns_message* %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !40
  %12 = icmp eq i32 %11, 1297303360
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1632, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %9
  %15 = icmp eq %struct.isc_buffer* %1, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1633, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0)) #20
  unreachable

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %19 = load i16, i16* %18, align 4
  %20 = and i16 %19, 3
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1634, i32 noundef 0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0)) #20
  unreachable

23:                                               ; preds = %17
  %24 = and i32 %2, 8
  %25 = icmp eq i32 %24, 0
  %26 = bitcast %struct.isc_buffer* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %7, i8* noundef nonnull align 8 dereferenceable(64) %26, i64 64, i1 false), !tbaa.struct !85
  %27 = and i16 %19, -13
  store i16 %27, i16* %18, align 4
  %28 = and i32 %2, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44
  call fastcc void @isc_buffer_usedregion(%struct.isc_buffer* noundef nonnull %5, %struct.isc_region* noundef nonnull %31)
  br label %47

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %5, i64 0, i32 3
  %34 = load i32, i32* %33, align 4, !tbaa !87
  %35 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 1
  store i32 %34, i32* %35, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %37 = load %struct.isc_mem*, %struct.isc_mem** %36, align 8, !tbaa !63
  %38 = zext i32 %34 to i64
  %39 = tail call noalias i8* @isc__mem_get(%struct.isc_mem* noundef %37, i64 noundef %38, i32 noundef 0) #21
  %40 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 0
  store i8* %39, i8** %40, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %5, i64 0, i32 1
  %42 = load i8*, i8** %41, align 8, !tbaa !88
  %43 = load i32, i32* %35, align 8, !tbaa !35
  %44 = zext i32 %43 to i64
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %42, i64 %44, i1 false)
  %45 = load i16, i16* %18, align 4
  %46 = or i16 %45, 256
  store i16 %46, i16* %18, align 4
  br label %47

47:                                               ; preds = %32, %30
  call fastcc void @isc_buffer_remainingregion(%struct.isc_buffer* noundef nonnull %1, %struct.isc_region* noundef nonnull %4)
  %48 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %4, i64 0, i32 1
  %49 = load i32, i32* %48, align 8, !tbaa !89
  %50 = icmp ult i32 %49, 12
  br i1 %50, label %128, label %51

51:                                               ; preds = %47
  %52 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %1)
  %53 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 2
  store i16 %52, i16* %53, align 8, !tbaa !90
  %54 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %1)
  %55 = lshr i16 %54, 11
  %56 = and i16 %55, 15
  %57 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 5
  store i16 %56, i16* %57, align 2, !tbaa !91
  %58 = and i16 %54, 15
  %59 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 4
  store i16 %58, i16* %59, align 8, !tbaa !92
  %60 = and i16 %54, -28688
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  store i32 %61, i32* %62, align 4, !tbaa !93
  %63 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %1)
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 0
  store i32 %64, i32* %65, align 8, !tbaa !10
  %66 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %1)
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 1
  store i32 %67, i32* %68, align 4, !tbaa !10
  %69 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %1)
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 2
  store i32 %70, i32* %71, align 8, !tbaa !10
  %72 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %1)
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 3
  store i32 %73, i32* %74, align 4, !tbaa !10
  %75 = load i16, i16* %18, align 4
  %76 = or i16 %75, 4
  store i16 %76, i16* %18, align 4
  %77 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 13
  store i32 0, i32* %77, align 8, !tbaa !94
  %78 = call fastcc i32 @getquestions(%struct.isc_buffer* noundef nonnull %1, %struct.dns_message* noundef nonnull %0, i32 noundef %2)
  %79 = icmp ne i32 %78, 24
  %80 = or i1 %25, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %51
  %82 = icmp eq i32 %78, 136
  %83 = select i1 %82, i32 0, i32 %78
  %84 = zext i1 %82 to i8
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %128

86:                                               ; preds = %81
  %87 = load i16, i16* %18, align 4
  %88 = or i16 %87, 8
  store i16 %88, i16* %18, align 4
  %89 = call fastcc i32 @getsection(%struct.isc_buffer* noundef nonnull %1, %struct.dns_message* noundef nonnull %0, i32 noundef 1, i32 noundef %2)
  %90 = icmp ne i32 %89, 24
  %91 = or i1 %25, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %86
  %93 = icmp eq i32 %89, 136
  %94 = select i1 %93, i32 0, i32 %89
  %95 = select i1 %93, i8 1, i8 %84
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %92
  %98 = call fastcc i32 @getsection(%struct.isc_buffer* noundef nonnull %1, %struct.dns_message* noundef nonnull %0, i32 noundef 2, i32 noundef %2)
  %99 = icmp ne i32 %98, 24
  %100 = or i1 %25, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = icmp eq i32 %98, 136
  %103 = select i1 %102, i32 0, i32 %98
  %104 = select i1 %102, i8 1, i8 %95
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = call fastcc i32 @getsection(%struct.isc_buffer* noundef nonnull %1, %struct.dns_message* noundef nonnull %0, i32 noundef 3, i32 noundef %2)
  %108 = icmp ne i32 %107, 24
  %109 = or i1 %25, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = icmp eq i32 %107, 136
  %112 = select i1 %111, i32 0, i32 %107
  %113 = select i1 %111, i8 1, i8 %104
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  call fastcc void @isc_buffer_remainingregion(%struct.isc_buffer* noundef nonnull %1, %struct.isc_region* noundef nonnull %4)
  %116 = load i32, i32* %48, align 8, !tbaa !89
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load %struct.isc_log*, %struct.isc_log** @dns_lctx, align 8, !tbaa !5
  call void (%struct.isc_log*, %struct.isc_logcategory*, %struct.isc_logmodule*, i32, i8*, ...) @isc_log_write(%struct.isc_log* noundef %119, %struct.isc_logcategory* noundef getelementptr inbounds ([0 x %struct.isc_logcategory], [0 x %struct.isc_logcategory]* @isc_categories, i64 0, i64 1), %struct.isc_logmodule* noundef getelementptr inbounds ([0 x %struct.isc_logmodule], [0 x %struct.isc_logmodule]* @dns_modules, i64 0, i64 5), i32 noundef 3, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 noundef %116) #21
  br label %120

120:                                              ; preds = %106, %97, %86, %51, %115, %118
  %121 = phi i1 [ true, %115 ], [ true, %118 ], [ false, %51 ], [ false, %86 ], [ false, %97 ], [ false, %106 ]
  %122 = phi i8 [ %113, %115 ], [ %113, %118 ], [ 0, %51 ], [ %84, %86 ], [ %95, %97 ], [ %104, %106 ]
  %123 = or i1 %25, %121
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = and i8 %122, 1
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i32 0, i32 136
  br label %128

128:                                              ; preds = %124, %120, %110, %101, %92, %81, %47
  %129 = phi i32 [ 24, %47 ], [ %83, %81 ], [ %94, %92 ], [ %103, %101 ], [ %112, %110 ], [ 136, %120 ], [ %127, %124 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #21
  ret i32 %129
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_usedregion(%struct.isc_buffer* noalias noundef readonly %0, %struct.isc_region* noalias noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 621, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.isc_region* %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 622, i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.207, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8, !tbaa !88
  %15 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %1, i64 0, i32 0
  store i8* %14, i8** %15, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !87
  %18 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %1, i64 0, i32 1
  store i32 %17, i32* %18, align 8, !tbaa !89
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_remainingregion(%struct.isc_buffer* noalias noundef readonly %0, %struct.isc_region* noalias noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 735, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.isc_region* %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 736, i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.207, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8, !tbaa !88
  %15 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %16 = load i32, i32* %15, align 8, !tbaa !96
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %1, i64 0, i32 0
  store i8* %18, i8** %19, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %21 = load i32, i32* %20, align 4, !tbaa !87
  %22 = sub i32 %21, %16
  %23 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %1, i64 0, i32 1
  store i32 %22, i32* %23, align 8, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noalias noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = bitcast i16* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %3) #21
  store i16 0, i16* %2, align 2, !tbaa !13
  %4 = call fastcc i32 @isc_buffer_peekuint16(%struct.isc_buffer* noundef %0, i16* noundef nonnull %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 896, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !96
  %10 = add i32 %9, 2
  store i32 %10, i32* %8, align 8, !tbaa !96
  %11 = load i16, i16* %2, align 2, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %3) #21
  ret i16 %11
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @getquestions(%struct.isc_buffer* noundef %0, %struct.dns_message* noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.isc_region, align 8
  %5 = alloca %struct.dns_name*, align 8
  %6 = alloca %struct.dns_name*, align 8
  %7 = bitcast %struct.isc_region* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #21
  %8 = bitcast %struct.dns_name** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #21
  store %struct.dns_name* null, %struct.dns_name** %5, align 8, !tbaa !5
  %9 = bitcast %struct.dns_name** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #21
  store %struct.dns_name* null, %struct.dns_name** %6, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 8, i64 0
  %11 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 7, i64 0
  %12 = load i32, i32* %11, align 8, !tbaa !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %124, label %14

14:                                               ; preds = %3
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.dns_namelist_t, %struct.dns_namelist_t* %10, i64 0, i32 0
  %19 = xor i1 %16, true
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 8, i64 0, i32 1
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 14
  %22 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 6
  %23 = xor i1 %16, true
  %24 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 6
  %25 = xor i1 %16, true
  %26 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 24
  br label %27

27:                                               ; preds = %14, %90
  %28 = phi i8 [ 0, %14 ], [ %86, %90 ]
  %29 = phi i32 [ 0, %14 ], [ %113, %90 ]
  store %struct.dns_name* null, %struct.dns_name** %5, align 8, !tbaa !5
  call void @dns_message_gettempname(%struct.dns_message* noundef %1, %struct.dns_name** noundef nonnull %5)
  %30 = call fastcc [128 x i8]* @newoffsets(%struct.dns_message* noundef %1)
  %31 = getelementptr [128 x i8], [128 x i8]* %30, i64 0, i64 0
  %32 = load %struct.dns_name*, %struct.dns_name** %5, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %32, i64 0, i32 5
  store i8* %31, i8** %33, align 8, !tbaa !97
  call fastcc void @isc_buffer_remainingregion(%struct.isc_buffer* noundef %0, %struct.isc_region* noundef nonnull %4)
  %34 = load i32, i32* %17, align 8, !tbaa !89
  call fastcc void @isc_buffer_setactive(%struct.isc_buffer* noundef %0, i32 noundef %34)
  %35 = load %struct.dns_name*, %struct.dns_name** %5, align 8, !tbaa !5
  %36 = call fastcc i32 @getname(%struct.dns_name* noundef %35, %struct.isc_buffer* noundef %0, %struct.dns_message* noundef %1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %120

38:                                               ; preds = %27
  %39 = load %struct.dns_name*, %struct.dns_name** %5, align 8, !tbaa !5
  %40 = call fastcc i32 @findname(%struct.dns_name** noundef nonnull %6, %struct.dns_name* noundef %39, %struct.dns_namelist_t* noundef nonnull %10)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = load %struct.dns_name*, %struct.dns_name** %18, align 8, !tbaa !100
  %44 = icmp eq %struct.dns_name* %43, null
  %45 = or i1 %44, %19
  br i1 %45, label %46, label %120

46:                                               ; preds = %42
  %47 = select i1 %44, i8 %28, i8 1
  %48 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !101
  %49 = icmp eq %struct.dns_name* %48, null
  %50 = load %struct.dns_name*, %struct.dns_name** %5, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %48, i64 0, i32 7, i32 1
  %52 = select i1 %49, %struct.dns_name** %18, %struct.dns_name** %51
  store %struct.dns_name* %50, %struct.dns_name** %52, align 8, !tbaa !5
  %53 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !101
  %54 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %50, i64 0, i32 7, i32 0
  store %struct.dns_name* %53, %struct.dns_name** %54, align 8, !tbaa !102
  %55 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %50, i64 0, i32 7, i32 1
  store %struct.dns_name* null, %struct.dns_name** %55, align 8, !tbaa !103
  store %struct.dns_name* %50, %struct.dns_name** %20, align 8, !tbaa !101
  br label %58

56:                                               ; preds = %38
  call void @dns_message_puttempname(%struct.dns_message* noundef %1, %struct.dns_name** noundef nonnull %5)
  %57 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  store %struct.dns_name* %57, %struct.dns_name** %5, align 8, !tbaa !5
  store %struct.dns_name* null, %struct.dns_name** %6, align 8, !tbaa !5
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i8 [ %47, %46 ], [ %28, %56 ]
  call fastcc void @isc_buffer_remainingregion(%struct.isc_buffer* noundef %0, %struct.isc_region* noundef nonnull %4)
  %60 = load i32, i32* %17, align 8, !tbaa !89
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %120, label %62

62:                                               ; preds = %58
  %63 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %64 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %65 = load i16, i16* %21, align 4
  %66 = and i16 %65, 8192
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  store i16 %64, i16* %24, align 4, !tbaa !104
  %69 = or i16 %65, 8192
  store i16 %69, i16* %21, align 4
  br label %75

70:                                               ; preds = %62
  %71 = load i16, i16* %22, align 4, !tbaa !104
  %72 = icmp eq i16 %71, %64
  %73 = or i1 %72, %23
  %74 = select i1 %72, i8 %59, i8 1
  br i1 %73, label %75, label %120

75:                                               ; preds = %70, %68
  %76 = phi i8 [ %59, %68 ], [ %74, %70 ]
  %77 = icmp eq i16 %63, 249
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i16, i16* %21, align 4
  %80 = or i16 %79, 4096
  store i16 %80, i16* %21, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.dns_name*, %struct.dns_name** %5, align 8, !tbaa !5
  %83 = call i32 @dns_message_find(%struct.dns_name* noundef %82, i16 noundef zeroext %64, i16 noundef zeroext %63, i16 noundef zeroext 0, %struct.dns_rdataset** noundef null)
  %84 = icmp ne i32 %83, 0
  %85 = or i1 %84, %25
  %86 = select i1 %84, i8 %76, i8 1
  br i1 %85, label %87, label %120

87:                                               ; preds = %81
  %88 = call fastcc %struct.dns_rdatalist* @newrdatalist(%struct.dns_message* noundef %1)
  %89 = icmp eq %struct.dns_rdatalist* %88, null
  br i1 %89, label %120, label %90

90:                                               ; preds = %87
  %91 = load %struct.isc_mempool*, %struct.isc_mempool** %26, align 8, !tbaa !105
  %92 = call noalias i8* @isc__mempool_get(%struct.isc_mempool* noundef %91) #21
  %93 = bitcast i8* %92 to %struct.dns_rdataset*
  %94 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %88, i64 0, i32 1
  store i16 %63, i16* %94, align 2, !tbaa !106
  %95 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %88, i64 0, i32 0
  store i16 %64, i16* %95, align 8, !tbaa !107
  call void @dns_rdataset_init(%struct.dns_rdataset* noundef %93) #21
  call void @dns_rdatalist_tordataset(%struct.dns_rdatalist* noundef nonnull %88, %struct.dns_rdataset* noundef %93) #21
  %96 = getelementptr inbounds i8, i8* %92, i64 44
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %97, align 4, !tbaa !108
  %99 = or i32 %98, 1
  store i32 %99, i32* %97, align 4, !tbaa !108
  %100 = load %struct.dns_name*, %struct.dns_name** %5, align 8, !tbaa !5
  %101 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %100, i64 0, i32 8, i32 1
  %102 = load %struct.dns_rdataset*, %struct.dns_rdataset** %101, align 8, !tbaa !109
  %103 = icmp eq %struct.dns_rdataset* %102, null
  %104 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %100, i64 0, i32 8, i32 0
  %105 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %102, i64 0, i32 2, i32 1
  %106 = select i1 %103, %struct.dns_rdataset** %104, %struct.dns_rdataset** %105
  %107 = bitcast %struct.dns_rdataset** %106 to i8**
  store i8* %92, i8** %107, align 8, !tbaa !5
  %108 = getelementptr inbounds i8, i8* %92, i64 16
  %109 = bitcast i8* %108 to %struct.dns_rdataset**
  store %struct.dns_rdataset* %102, %struct.dns_rdataset** %109, align 8, !tbaa !110
  %110 = getelementptr inbounds i8, i8* %92, i64 24
  %111 = bitcast i8* %110 to %struct.dns_rdataset**
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %111, align 8, !tbaa !111
  %112 = bitcast %struct.dns_rdataset** %101 to i8**
  store i8* %92, i8** %112, align 8, !tbaa !109
  %113 = add nuw i32 %29, 1
  %114 = load i32, i32* %11, align 8, !tbaa !10
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %27, label %116, !llvm.loop !112

116:                                              ; preds = %90
  %117 = and i8 %86, 1
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, i32 0, i32 136
  br label %124

120:                                              ; preds = %81, %70, %42, %27, %58, %87
  %121 = phi i32 [ %36, %27 ], [ 24, %58 ], [ 1, %87 ], [ 223, %42 ], [ 223, %70 ], [ 223, %81 ]
  %122 = phi i1 [ true, %27 ], [ false, %58 ], [ false, %87 ], [ true, %42 ], [ false, %70 ], [ false, %81 ]
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  call void @dns_message_puttempname(%struct.dns_message* noundef %1, %struct.dns_name** noundef nonnull %5)
  br label %124

124:                                              ; preds = %3, %116, %120, %123
  %125 = phi i32 [ %121, %123 ], [ %121, %120 ], [ 0, %3 ], [ %119, %116 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #21
  ret i32 %125
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @getsection(%struct.isc_buffer* noundef %0, %struct.dns_message* noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.isc_region, align 8
  %6 = alloca %struct.dns_name*, align 8
  %7 = alloca %struct.dns_name*, align 8
  %8 = alloca %struct.dns_rdataset*, align 8
  %9 = alloca %struct.dns_rdatalist*, align 8
  %10 = bitcast %struct.isc_region* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #21
  %11 = bitcast %struct.dns_name** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #21
  store %struct.dns_name* null, %struct.dns_name** %6, align 8, !tbaa !5
  %12 = bitcast %struct.dns_name** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #21
  store %struct.dns_name* null, %struct.dns_name** %7, align 8, !tbaa !5
  %13 = bitcast %struct.dns_rdataset** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !5
  %14 = bitcast %struct.dns_rdatalist** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #21
  store %struct.dns_rdatalist* null, %struct.dns_rdatalist** %9, align 8, !tbaa !5
  %15 = zext i32 %2 to i64
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 8, i64 %15
  %17 = and i32 %3, 1
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %3, 2
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 7, i64 %15
  %22 = load i32, i32* %21, align 4, !tbaa !10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %417, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %26 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %5, i64 0, i32 1
  %27 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 14
  %28 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 6
  %29 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 5
  %30 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 6
  %31 = xor i1 %20, true
  %32 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 6
  %33 = xor i1 %20, true
  %34 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 3
  %35 = icmp eq i32 %2, 1
  %36 = xor i1 %20, true
  %37 = icmp eq i32 %2, 3
  %38 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 10
  %39 = icmp ne i32 %2, 3
  %40 = icmp eq i32 %2, 2
  %41 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 6
  %42 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 6
  %43 = icmp eq i32 %2, 3
  %44 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 6
  %45 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 8, i64 %15, i32 1
  %46 = getelementptr inbounds %struct.dns_namelist_t, %struct.dns_namelist_t* %16, i64 0, i32 0
  %47 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 8, i64 %15, i32 1
  %48 = getelementptr inbounds %struct.dns_namelist_t, %struct.dns_namelist_t* %16, i64 0, i32 0
  %49 = xor i1 %20, true
  %50 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 24
  %51 = bitcast %struct.dns_rdataset** %8 to i8**
  %52 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 12
  %53 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 34
  %54 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 38
  %55 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 11
  %56 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 40
  %57 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 38
  %58 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 10
  %59 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 4
  %60 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 24
  %61 = bitcast %struct.dns_rdataset** %8 to i8**
  br label %62

62:                                               ; preds = %24, %413
  %63 = phi i32 [ 0, %24 ], [ %414, %413 ]
  %64 = phi i8 [ 0, %24 ], [ %410, %413 ]
  %65 = load i32, i32* %25, align 8, !tbaa !96
  store %struct.dns_name* null, %struct.dns_name** %6, align 8, !tbaa !5
  call void @dns_message_gettempname(%struct.dns_message* noundef %1, %struct.dns_name** noundef nonnull %6)
  %66 = call fastcc [128 x i8]* @newoffsets(%struct.dns_message* noundef %1)
  %67 = getelementptr [128 x i8], [128 x i8]* %66, i64 0, i64 0
  %68 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %68, i64 0, i32 5
  store i8* %67, i8** %69, align 8, !tbaa !97
  call fastcc void @isc_buffer_remainingregion(%struct.isc_buffer* noundef %0, %struct.isc_region* noundef nonnull %5)
  %70 = load i32, i32* %26, align 8, !tbaa !89
  call fastcc void @isc_buffer_setactive(%struct.isc_buffer* noundef %0, i32 noundef %70)
  %71 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %72 = call fastcc i32 @getname(%struct.dns_name* noundef %71, %struct.isc_buffer* noundef %0, %struct.dns_message* noundef %1)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %407

74:                                               ; preds = %62
  call fastcc void @isc_buffer_remainingregion(%struct.isc_buffer* noundef %0, %struct.isc_region* noundef nonnull %5)
  %75 = load i32, i32* %26, align 8, !tbaa !89
  %76 = icmp ult i32 %75, 10
  br i1 %76, label %407, label %77

77:                                               ; preds = %74
  %78 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %79 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %80 = load i16, i16* %27, align 4
  %81 = freeze i16 %80
  %82 = and i16 %81, 8192
  %83 = icmp eq i16 %82, 0
  %84 = icmp ne i16 %78, 41
  %85 = icmp ne i16 %78, 250
  %86 = icmp ne i16 %78, 249
  br i1 %83, label %87, label %90

87:                                               ; preds = %77
  switch i16 %78, label %88 [
    i16 250, label %90
    i16 249, label %90
    i16 41, label %90
  ]

88:                                               ; preds = %87
  store i16 %79, i16* %28, align 4, !tbaa !104
  %89 = or i16 %81, 8192
  store i16 %89, i16* %27, align 4
  br label %90

90:                                               ; preds = %87, %87, %87, %77, %88
  %91 = load i16, i16* %29, align 2, !tbaa !91
  %92 = icmp ne i16 %91, 5
  %93 = select i1 %92, i1 %85, i1 false
  %94 = select i1 %93, i1 %84, i1 false
  %95 = icmp ne i16 %78, 25
  %96 = select i1 %94, i1 %95, i1 false
  %97 = icmp ne i16 %78, 24
  %98 = select i1 %96, i1 %97, i1 false
  %99 = select i1 %98, i1 %86, i1 false
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load i16, i16* %30, align 4, !tbaa !104
  %102 = icmp eq i16 %101, 255
  %103 = icmp eq i16 %101, %79
  %104 = select i1 %102, i1 true, i1 %103
  %105 = or i1 %104, %31
  %106 = select i1 %104, i8 %64, i8 1
  br i1 %105, label %107, label %407

107:                                              ; preds = %100, %90
  %108 = phi i8 [ %106, %100 ], [ %64, %90 ]
  %109 = icmp eq i16 %91, 5
  br i1 %109, label %123, label %110

110:                                              ; preds = %107
  %111 = load i16, i16* %27, align 4
  %112 = and i16 %111, 4096
  %113 = icmp eq i16 %112, 0
  %114 = icmp eq i16 %78, 25
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i16, i16* %32, align 4, !tbaa !104
  %118 = icmp eq i16 %117, 255
  %119 = icmp eq i16 %117, %79
  %120 = select i1 %118, i1 true, i1 %119
  %121 = or i1 %120, %33
  %122 = select i1 %120, i8 %108, i8 1
  br i1 %121, label %123, label %407

123:                                              ; preds = %116, %110, %107
  %124 = phi i8 [ %122, %116 ], [ %108, %110 ], [ %108, %107 ]
  switch i16 %78, label %154 [
    i16 250, label %125
    i16 41, label %133
    i16 249, label %142
  ]

125:                                              ; preds = %123
  %126 = icmp ne i16 %79, 255
  %127 = select i1 %39, i1 true, i1 %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %21, align 4, !tbaa !10
  %130 = add i32 %129, -1
  %131 = icmp eq i32 %63, %130
  br i1 %131, label %154, label %132

132:                                              ; preds = %125, %128
  br i1 %20, label %407, label %154

133:                                              ; preds = %123
  %134 = load %struct.dns_name*, %struct.dns_name** @dns_rootname, align 8, !tbaa !5
  %135 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %136 = call zeroext i1 @dns_name_equal(%struct.dns_name* noundef %134, %struct.dns_name* noundef %135) #21
  %137 = and i1 %37, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.dns_rdataset*, %struct.dns_rdataset** %38, align 8, !tbaa !113
  %140 = icmp eq %struct.dns_rdataset* %139, null
  br i1 %140, label %154, label %141

141:                                              ; preds = %133, %138
  br i1 %20, label %407, label %154

142:                                              ; preds = %123
  %143 = load i32, i32* %34, align 4, !tbaa !93
  %144 = and i32 %143, 32768
  %145 = icmp eq i32 %144, 0
  %146 = select i1 %145, i32 3, i32 1
  %147 = icmp eq i32 %146, %2
  %148 = or i1 %35, %147
  %149 = or i1 %148, %36
  %150 = select i1 %148, i8 %124, i8 1
  %151 = select i1 %149, i8 %150, i8 %124
  %152 = select i1 %149, i32 0, i32 223
  %153 = select i1 %149, i32 0, i32 5
  br i1 %149, label %154, label %407

154:                                              ; preds = %123, %138, %141, %128, %132, %142
  %155 = phi i8 [ %151, %142 ], [ 1, %132 ], [ %124, %128 ], [ 1, %141 ], [ %124, %138 ], [ %124, %123 ]
  %156 = phi i1 [ false, %142 ], [ false, %132 ], [ false, %128 ], [ false, %141 ], [ true, %138 ], [ false, %123 ]
  %157 = phi i1 [ false, %142 ], [ false, %132 ], [ true, %128 ], [ false, %141 ], [ false, %138 ], [ false, %123 ]
  %158 = phi i8 [ 0, %142 ], [ 0, %132 ], [ 1, %128 ], [ 0, %141 ], [ 1, %138 ], [ 0, %123 ]
  %159 = call fastcc i32 @isc_buffer_getuint32(%struct.isc_buffer* noundef %0)
  %160 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %161 = zext i16 %160 to i32
  %162 = load i32, i32* %26, align 8, !tbaa !89
  %163 = add i32 %162, -10
  store i32 %163, i32* %26, align 8, !tbaa !89
  %164 = icmp ult i32 %163, %161
  br i1 %164, label %407, label %165

165:                                              ; preds = %154
  %166 = call fastcc %struct.dns_rdata* @newrdata(%struct.dns_message* noundef %1)
  %167 = icmp eq %struct.dns_rdata* %166, null
  br i1 %167, label %407, label %168

168:                                              ; preds = %165
  %169 = load i16, i16* %29, align 2, !tbaa !91
  %170 = icmp eq i16 %169, 5
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = call fastcc zeroext i1 @update(i32 noundef %2, i16 noundef zeroext %79)
  br i1 %172, label %173, label %181

173:                                              ; preds = %171
  %174 = icmp eq i16 %160, 0
  br i1 %174, label %175, label %407

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %176, align 8, !tbaa !114
  %177 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 1
  store i32 0, i32* %177, align 8, !tbaa !115
  %178 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 2
  store i16 %79, i16* %178, align 4, !tbaa !116
  %179 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 3
  store i16 %78, i16* %179, align 2, !tbaa !117
  %180 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 4
  store i32 1, i32* %180, align 8, !tbaa !118
  br label %190

181:                                              ; preds = %171, %168
  %182 = icmp eq i16 %79, 254
  %183 = and i1 %40, %170
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i16, i16* %41, align 4, !tbaa !104
  %187 = call fastcc i32 @getrdata(%struct.isc_buffer* noundef %0, %struct.dns_message* noundef %1, i16 noundef zeroext %186, i16 noundef zeroext %78, i32 noundef %161, %struct.dns_rdata* noundef nonnull %166)
  br label %190

188:                                              ; preds = %181
  %189 = call fastcc i32 @getrdata(%struct.isc_buffer* noundef %0, %struct.dns_message* noundef %1, i16 noundef zeroext %79, i16 noundef zeroext %78, i32 noundef %161, %struct.dns_rdata* noundef nonnull %166)
  br label %190

190:                                              ; preds = %185, %188, %175
  %191 = phi i32 [ 0, %175 ], [ %187, %185 ], [ %189, %188 ]
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %407

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 2
  store i16 %79, i16* %194, align 4, !tbaa !116
  switch i16 %78, label %228 [
    i16 46, label %195
    i16 24, label %205
  ]

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 4
  %197 = load i32, i32* %196, align 8, !tbaa !118
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = call zeroext i16 @dns_rdata_covers(%struct.dns_rdata* noundef nonnull %166) #21
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  br i1 %20, label %407, label %228

203:                                              ; preds = %195
  %204 = icmp eq i16 %78, 24
  br i1 %204, label %205, label %228

205:                                              ; preds = %193, %203
  %206 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 4
  %207 = load i32, i32* %206, align 8, !tbaa !118
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %228

209:                                              ; preds = %205
  %210 = call zeroext i16 @dns_rdata_covers(%struct.dns_rdata* noundef nonnull %166) #21
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  br i1 %43, label %213, label %221

213:                                              ; preds = %212
  %214 = load i32, i32* %21, align 4, !tbaa !10
  %215 = add i32 %214, -1
  %216 = icmp eq i32 %63, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %219 = load %struct.dns_name*, %struct.dns_name** @dns_rootname, align 8, !tbaa !5
  %220 = call zeroext i1 @dns_name_equal(%struct.dns_name* noundef %218, %struct.dns_name* noundef %219) #21
  br i1 %220, label %228, label %221

221:                                              ; preds = %212, %213, %217
  br i1 %20, label %407, label %228

222:                                              ; preds = %209
  %223 = load i16, i16* %42, align 4, !tbaa !104
  %224 = icmp eq i16 %223, 255
  %225 = icmp eq i16 %223, %79
  %226 = select i1 %224, i1 true, i1 %225
  br i1 %226, label %228, label %227

227:                                              ; preds = %222
  br i1 %20, label %407, label %228

228:                                              ; preds = %203, %205, %193, %227, %217, %221, %202, %222, %199
  %229 = phi i8 [ %155, %199 ], [ %155, %222 ], [ 1, %202 ], [ 1, %221 ], [ %155, %217 ], [ 1, %227 ], [ %155, %193 ], [ %155, %205 ], [ %155, %203 ]
  %230 = phi i16 [ %200, %199 ], [ %210, %222 ], [ %200, %202 ], [ %210, %221 ], [ %210, %217 ], [ %210, %227 ], [ 0, %193 ], [ 0, %205 ], [ 0, %203 ]
  %231 = phi i1 [ false, %199 ], [ false, %222 ], [ false, %202 ], [ false, %221 ], [ true, %217 ], [ false, %227 ], [ false, %193 ], [ false, %205 ], [ false, %203 ]
  %232 = phi i8 [ %158, %199 ], [ %158, %222 ], [ %158, %202 ], [ %158, %221 ], [ 1, %217 ], [ %158, %227 ], [ %158, %193 ], [ %158, %205 ], [ %158, %203 ]
  %233 = icmp eq i16 %78, 50
  br i1 %233, label %234, label %238

234:                                              ; preds = %228
  %235 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %236 = load i16, i16* %44, align 4, !tbaa !104
  %237 = call zeroext i1 @dns_rdata_checkowner(%struct.dns_name* noundef %235, i16 noundef zeroext %236, i16 noundef zeroext %78, i1 noundef zeroext false) #21
  br i1 %237, label %238, label %407

238:                                              ; preds = %234, %228
  br i1 %18, label %239, label %245

239:                                              ; preds = %238
  %240 = load i16, i16* %29, align 2, !tbaa !91
  %241 = icmp ne i16 %240, 5
  %242 = and i8 %232, 1
  %243 = icmp eq i8 %242, 0
  %244 = and i1 %243, %241
  br i1 %244, label %257, label %245

245:                                              ; preds = %239, %238
  %246 = or i1 %156, %157
  %247 = or i1 %246, %231
  br i1 %247, label %272, label %248

248:                                              ; preds = %245
  %249 = load %struct.dns_name*, %struct.dns_name** %45, align 8, !tbaa !101
  %250 = icmp eq %struct.dns_name* %249, null
  %251 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %252 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %249, i64 0, i32 7, i32 1
  %253 = select i1 %250, %struct.dns_name** %46, %struct.dns_name** %252
  store %struct.dns_name* %251, %struct.dns_name** %253, align 8, !tbaa !5
  %254 = load %struct.dns_name*, %struct.dns_name** %45, align 8, !tbaa !101
  %255 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %251, i64 0, i32 7, i32 0
  store %struct.dns_name* %254, %struct.dns_name** %255, align 8, !tbaa !102
  %256 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %251, i64 0, i32 7, i32 1
  store %struct.dns_name* null, %struct.dns_name** %256, align 8, !tbaa !103
  store %struct.dns_name* %251, %struct.dns_name** %45, align 8, !tbaa !101
  br label %272

257:                                              ; preds = %239
  %258 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %259 = call fastcc i32 @findname(%struct.dns_name** noundef nonnull %7, %struct.dns_name* noundef %258, %struct.dns_namelist_t* noundef nonnull %16)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  call void @dns_message_puttempname(%struct.dns_message* noundef %1, %struct.dns_name** noundef nonnull %6)
  %262 = load %struct.dns_name*, %struct.dns_name** %7, align 8, !tbaa !5
  store %struct.dns_name* %262, %struct.dns_name** %6, align 8, !tbaa !5
  br label %272

263:                                              ; preds = %257
  %264 = load %struct.dns_name*, %struct.dns_name** %47, align 8, !tbaa !101
  %265 = icmp eq %struct.dns_name* %264, null
  %266 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %267 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %264, i64 0, i32 7, i32 1
  %268 = select i1 %265, %struct.dns_name** %48, %struct.dns_name** %267
  store %struct.dns_name* %266, %struct.dns_name** %268, align 8, !tbaa !5
  %269 = load %struct.dns_name*, %struct.dns_name** %47, align 8, !tbaa !101
  %270 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %266, i64 0, i32 7, i32 0
  store %struct.dns_name* %269, %struct.dns_name** %270, align 8, !tbaa !102
  %271 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %266, i64 0, i32 7, i32 1
  store %struct.dns_name* null, %struct.dns_name** %271, align 8, !tbaa !103
  store %struct.dns_name* %266, %struct.dns_name** %47, align 8, !tbaa !101
  br label %272

272:                                              ; preds = %261, %263, %245, %248
  %273 = phi i8 [ 1, %245 ], [ 0, %248 ], [ 0, %263 ], [ 0, %261 ]
  br i1 %18, label %274, label %287

274:                                              ; preds = %272
  %275 = load i16, i16* %29, align 2, !tbaa !91
  %276 = icmp ne i16 %275, 5
  %277 = and i8 %232, 1
  %278 = icmp eq i8 %277, 0
  %279 = and i1 %278, %276
  br i1 %279, label %280, label %287

280:                                              ; preds = %274
  %281 = call zeroext i1 @dns_rdatatype_questiononly(i16 noundef zeroext %78) #21
  %282 = and i1 %20, %281
  br i1 %282, label %407, label %283

283:                                              ; preds = %280
  %284 = select i1 %281, i8 1, i8 %229
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !5
  %285 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %286 = call i32 @dns_message_find(%struct.dns_name* noundef %285, i16 noundef zeroext %79, i16 noundef zeroext %78, i16 noundef zeroext %230, %struct.dns_rdataset** noundef nonnull %8)
  br label %287

287:                                              ; preds = %272, %274, %283
  %288 = phi i8 [ %284, %283 ], [ %229, %274 ], [ %229, %272 ]
  %289 = phi i32 [ %286, %283 ], [ 23, %274 ], [ 23, %272 ]
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %308

291:                                              ; preds = %287
  %292 = call zeroext i1 @dns_rdatatype_issingleton(i16 noundef zeroext %78) #21
  br i1 %292, label %293, label %308

293:                                              ; preds = %291
  %294 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  call void @dns_rdatalist_fromrdataset(%struct.dns_rdataset* noundef %294, %struct.dns_rdatalist** noundef nonnull %9) #21
  %295 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %9, align 8, !tbaa !5
  %296 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %295, i64 0, i32 4, i32 0
  %297 = load %struct.dns_rdata*, %struct.dns_rdata** %296, align 8, !tbaa !119
  %298 = icmp eq %struct.dns_rdata* %297, null
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1487, i32 noundef 2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.214, i64 0, i64 0)) #20
  unreachable

300:                                              ; preds = %293
  %301 = call i32 @dns_rdata_compare(%struct.dns_rdata* noundef nonnull %166, %struct.dns_rdata* noundef nonnull %297) #21
  %302 = icmp eq i32 %301, 0
  %303 = or i1 %302, %49
  %304 = select i1 %302, i8 %288, i8 1
  %305 = select i1 %303, i8 %304, i8 %288
  %306 = select i1 %303, i32 0, i32 223
  %307 = select i1 %303, i32 0, i32 5
  br i1 %303, label %308, label %407

308:                                              ; preds = %291, %300, %287
  %309 = phi i8 [ %305, %300 ], [ %288, %291 ], [ %288, %287 ]
  %310 = phi i32 [ %306, %300 ], [ 0, %291 ], [ %289, %287 ]
  %311 = icmp eq i32 %310, 23
  br i1 %311, label %312, label %340

312:                                              ; preds = %308
  %313 = load %struct.isc_mempool*, %struct.isc_mempool** %50, align 8, !tbaa !105
  %314 = call noalias i8* @isc__mempool_get(%struct.isc_mempool* noundef %313) #21
  store i8* %314, i8** %51, align 8, !tbaa !5
  %315 = call fastcc %struct.dns_rdatalist* @newrdatalist(%struct.dns_message* noundef %1)
  store %struct.dns_rdatalist* %315, %struct.dns_rdatalist** %9, align 8, !tbaa !5
  %316 = icmp eq %struct.dns_rdatalist* %315, null
  br i1 %316, label %407, label %317

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %315, i64 0, i32 1
  store i16 %78, i16* %318, align 2, !tbaa !106
  %319 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %315, i64 0, i32 2
  store i16 %230, i16* %319, align 4, !tbaa !120
  %320 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %315, i64 0, i32 0
  store i16 %79, i16* %320, align 8, !tbaa !107
  %321 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %315, i64 0, i32 3
  store i32 %159, i32* %321, align 8, !tbaa !121
  %322 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  call void @dns_rdataset_init(%struct.dns_rdataset* noundef %322) #21
  %323 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %9, align 8, !tbaa !5
  %324 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  call void @dns_rdatalist_tordataset(%struct.dns_rdatalist* noundef %323, %struct.dns_rdataset* noundef %324) #21
  %325 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  %326 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  call void @dns_rdataset_setownercase(%struct.dns_rdataset* noundef %325, %struct.dns_name* noundef %326) #21
  %327 = or i1 %156, %157
  %328 = or i1 %327, %231
  br i1 %328, label %340, label %329

329:                                              ; preds = %317
  %330 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %331 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %330, i64 0, i32 8, i32 1
  %332 = load %struct.dns_rdataset*, %struct.dns_rdataset** %331, align 8, !tbaa !109
  %333 = icmp eq %struct.dns_rdataset* %332, null
  %334 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  %335 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %330, i64 0, i32 8, i32 0
  %336 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %332, i64 0, i32 2, i32 1
  %337 = select i1 %333, %struct.dns_rdataset** %335, %struct.dns_rdataset** %336
  store %struct.dns_rdataset* %334, %struct.dns_rdataset** %337, align 8, !tbaa !5
  %338 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %334, i64 0, i32 2, i32 0
  store %struct.dns_rdataset* %332, %struct.dns_rdataset** %338, align 8, !tbaa !110
  %339 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %334, i64 0, i32 2, i32 1
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %339, align 8, !tbaa !111
  store %struct.dns_rdataset* %334, %struct.dns_rdataset** %331, align 8, !tbaa !109
  br label %340

340:                                              ; preds = %317, %329, %308
  %341 = phi i8 [ 1, %317 ], [ 0, %329 ], [ 0, %308 ]
  %342 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  %343 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %342, i64 0, i32 5
  %344 = load i32, i32* %343, align 4, !tbaa !122
  %345 = icmp eq i32 %159, %344
  br i1 %345, label %352, label %346

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %342, i64 0, i32 8
  %348 = load i32, i32* %347, align 4, !tbaa !108
  %349 = or i32 %348, 512
  store i32 %349, i32* %347, align 4, !tbaa !108
  %350 = icmp ult i32 %159, %344
  br i1 %350, label %351, label %352

351:                                              ; preds = %346
  store i32 %159, i32* %343, align 4, !tbaa !122
  br label %352

352:                                              ; preds = %346, %351, %340
  call void @dns_rdatalist_fromrdataset(%struct.dns_rdataset* noundef %342, %struct.dns_rdatalist** noundef nonnull %9) #21
  %353 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %9, align 8, !tbaa !5
  %354 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %353, i64 0, i32 4, i32 1
  %355 = load %struct.dns_rdata*, %struct.dns_rdata** %354, align 8, !tbaa !123
  %356 = icmp eq %struct.dns_rdata* %355, null
  %357 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %353, i64 0, i32 4, i32 0
  %358 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %355, i64 0, i32 5, i32 1
  %359 = select i1 %356, %struct.dns_rdata** %357, %struct.dns_rdata** %358
  store %struct.dns_rdata* %166, %struct.dns_rdata** %359, align 8, !tbaa !5
  %360 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 5, i32 0
  store %struct.dns_rdata* %355, %struct.dns_rdata** %360, align 8, !tbaa !45
  %361 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %166, i64 0, i32 5, i32 1
  store %struct.dns_rdata* null, %struct.dns_rdata** %361, align 8, !tbaa !43
  store %struct.dns_rdata* %166, %struct.dns_rdata** %354, align 8, !tbaa !123
  br i1 %156, label %362, label %371

362:                                              ; preds = %352
  %363 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  store %struct.dns_rdataset* %363, %struct.dns_rdataset** %58, align 8, !tbaa !113
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !5
  %364 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %363, i64 0, i32 5
  %365 = load i32, i32* %364, align 4, !tbaa !122
  %366 = lshr i32 %365, 20
  %367 = load i16, i16* %59, align 8, !tbaa !92
  %368 = trunc i32 %366 to i16
  %369 = and i16 %368, 4080
  %370 = or i16 %369, %367
  store i16 %370, i16* %59, align 8, !tbaa !92
  call void @dns_message_puttempname(%struct.dns_message* noundef %1, %struct.dns_name** noundef nonnull %6)
  br label %382

371:                                              ; preds = %352
  br i1 %231, label %372, label %375

372:                                              ; preds = %371
  %373 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  store %struct.dns_rdataset* %373, %struct.dns_rdataset** %55, align 8, !tbaa !124
  %374 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  store %struct.dns_name* %374, %struct.dns_name** %56, align 8, !tbaa !125
  store i32 %65, i32* %57, align 8, !tbaa !126
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !5
  br label %382

375:                                              ; preds = %371
  br i1 %157, label %376, label %382

376:                                              ; preds = %375
  %377 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  store %struct.dns_rdataset* %377, %struct.dns_rdataset** %52, align 8, !tbaa !127
  %378 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  store %struct.dns_name* %378, %struct.dns_name** %53, align 8, !tbaa !128
  store i32 %65, i32* %54, align 8, !tbaa !126
  %379 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %378, i64 0, i32 4, i32 0
  %380 = load i16, i16* %379, align 8
  %381 = or i16 %380, 16
  store i16 %381, i16* %379, align 8
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !5
  br label %382

382:                                              ; preds = %372, %376, %375, %362
  %383 = phi i8 [ 0, %362 ], [ 0, %372 ], [ 0, %376 ], [ %273, %375 ]
  %384 = phi i8 [ 0, %362 ], [ 0, %372 ], [ 0, %376 ], [ %341, %375 ]
  %385 = and i8 %309, 1
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %397, label %387

387:                                              ; preds = %382
  %388 = and i8 %383, 1
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %387
  call void @dns_message_puttempname(%struct.dns_message* noundef %1, %struct.dns_name** noundef nonnull %6)
  br label %391

391:                                              ; preds = %390, %387
  %392 = and i8 %384, 1
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %395 = load %struct.isc_mempool*, %struct.isc_mempool** %60, align 8, !tbaa !105
  %396 = load i8*, i8** %61, align 8, !tbaa !5
  call void @isc__mempool_put(%struct.isc_mempool* noundef %395, i8* noundef %396) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !5
  br label %397

397:                                              ; preds = %391, %394, %382
  %398 = phi i8 [ %383, %382 ], [ 0, %394 ], [ 0, %391 ]
  %399 = phi i8 [ %384, %382 ], [ 0, %394 ], [ 0, %391 ]
  %400 = and i8 %398, 1
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %403, label %402

402:                                              ; preds = %397
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1587, i32 noundef 2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.215, i64 0, i64 0)) #20
  unreachable

403:                                              ; preds = %397
  %404 = and i8 %399, 1
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %403
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1588, i32 noundef 2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.216, i64 0, i64 0)) #20
  unreachable

407:                                              ; preds = %280, %116, %100, %403, %312, %234, %227, %221, %202, %190, %173, %165, %154, %141, %132, %74, %62, %142, %300
  %408 = phi i8 [ %273, %300 ], [ 1, %142 ], [ 1, %62 ], [ 1, %74 ], [ 1, %132 ], [ 1, %141 ], [ 1, %154 ], [ 1, %165 ], [ 1, %173 ], [ 1, %190 ], [ 1, %202 ], [ 1, %221 ], [ 1, %227 ], [ 1, %234 ], [ %273, %312 ], [ %398, %403 ], [ 1, %100 ], [ 1, %116 ], [ %273, %280 ]
  %409 = phi i8 [ 0, %300 ], [ 0, %142 ], [ 0, %62 ], [ 0, %74 ], [ 0, %132 ], [ 0, %141 ], [ 0, %154 ], [ 0, %165 ], [ 0, %173 ], [ 0, %190 ], [ 0, %202 ], [ 0, %221 ], [ 0, %227 ], [ 0, %234 ], [ 1, %312 ], [ %399, %403 ], [ 0, %100 ], [ 0, %116 ], [ 0, %280 ]
  %410 = phi i8 [ %305, %300 ], [ %151, %142 ], [ %64, %62 ], [ %64, %74 ], [ %124, %132 ], [ %124, %141 ], [ %155, %154 ], [ %155, %165 ], [ %155, %173 ], [ %155, %190 ], [ %155, %202 ], [ %155, %221 ], [ %155, %227 ], [ %229, %234 ], [ %309, %312 ], [ %309, %403 ], [ %64, %100 ], [ %108, %116 ], [ %229, %280 ]
  %411 = phi i32 [ %306, %300 ], [ %152, %142 ], [ %72, %62 ], [ 24, %74 ], [ 188, %132 ], [ 223, %141 ], [ 24, %154 ], [ 1, %165 ], [ 223, %173 ], [ %191, %190 ], [ 223, %202 ], [ 189, %221 ], [ 223, %227 ], [ 169, %234 ], [ 1, %312 ], [ %310, %403 ], [ 223, %100 ], [ 223, %116 ], [ 223, %280 ]
  %412 = phi i32 [ %307, %300 ], [ %153, %142 ], [ 5, %62 ], [ 5, %74 ], [ 5, %132 ], [ 5, %141 ], [ 5, %154 ], [ 5, %165 ], [ 5, %173 ], [ 5, %190 ], [ 5, %202 ], [ 5, %221 ], [ 5, %227 ], [ 5, %234 ], [ 5, %312 ], [ 0, %403 ], [ 5, %100 ], [ 5, %116 ], [ 5, %280 ]
  switch i32 %412, label %457 [
    i32 0, label %413
    i32 5, label %442
  ]

413:                                              ; preds = %407
  %414 = add nuw i32 %63, 1
  %415 = load i32, i32* %21, align 4, !tbaa !10
  %416 = icmp ult i32 %414, %415
  br i1 %416, label %62, label %417, !llvm.loop !129

417:                                              ; preds = %413, %4
  %418 = phi i8 [ 0, %4 ], [ %408, %413 ]
  %419 = phi i8 [ 0, %4 ], [ %409, %413 ]
  %420 = phi i8 [ 0, %4 ], [ %410, %413 ]
  %421 = icmp eq i32 %2, 2
  br i1 %421, label %422, label %437

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 5
  %424 = load i16, i16* %423, align 2, !tbaa !91
  %425 = icmp eq i16 %424, 0
  br i1 %425, label %426, label %437

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 3
  %428 = load i32, i32* %427, align 4, !tbaa !93
  %429 = and i32 %428, 33280
  %430 = icmp eq i32 %429, 32768
  %431 = and i1 %18, %430
  br i1 %431, label %432, label %437

432:                                              ; preds = %426
  %433 = call fastcc zeroext i1 @auth_signed(%struct.dns_namelist_t* noundef nonnull %16)
  %434 = xor i1 %20, true
  %435 = or i1 %433, %434
  %436 = select i1 %433, i8 %420, i8 1
  br i1 %435, label %437, label %442

437:                                              ; preds = %432, %426, %422, %417
  %438 = phi i8 [ %436, %432 ], [ %420, %426 ], [ %420, %422 ], [ %420, %417 ]
  %439 = and i8 %438, 1
  %440 = icmp eq i8 %439, 0
  %441 = select i1 %440, i32 0, i32 136
  br label %457

442:                                              ; preds = %407, %432
  %443 = phi i8 [ %418, %432 ], [ %408, %407 ]
  %444 = phi i8 [ %419, %432 ], [ %409, %407 ]
  %445 = phi i32 [ 223, %432 ], [ %411, %407 ]
  %446 = and i8 %443, 1
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %449, label %448

448:                                              ; preds = %442
  call void @dns_message_puttempname(%struct.dns_message* noundef %1, %struct.dns_name** noundef nonnull %6)
  br label %449

449:                                              ; preds = %448, %442
  %450 = and i8 %444, 1
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %449
  %453 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %1, i64 0, i32 24
  %454 = load %struct.isc_mempool*, %struct.isc_mempool** %453, align 8, !tbaa !105
  %455 = bitcast %struct.dns_rdataset** %8 to i8**
  %456 = load i8*, i8** %455, align 8, !tbaa !5
  call void @isc__mempool_put(%struct.isc_mempool* noundef %454, i8* noundef %456) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !5
  br label %457

457:                                              ; preds = %407, %449, %452, %437
  %458 = phi i32 [ %441, %437 ], [ %445, %452 ], [ %445, %449 ], [ undef, %407 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #21
  ret i32 %458
}

declare void @isc_log_write(%struct.isc_log* noundef, %struct.isc_logcategory* noundef, %struct.isc_logmodule* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_renderbegin(%struct.dns_message* noundef %0, %struct.dns_compress* noundef %1, %struct.isc_buffer* noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.isc_region, align 8
  %5 = bitcast %struct.isc_region* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #21
  %6 = icmp eq %struct.dns_message* %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !40
  %10 = icmp eq i32 %9, 1297303360
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1748, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %7
  %13 = icmp eq %struct.isc_buffer* %2, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1749, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 20
  %17 = load %struct.isc_buffer*, %struct.isc_buffer** %16, align 8, !tbaa !130
  %18 = icmp eq %struct.isc_buffer* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1750, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0)) #20
  unreachable

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %22 = load i16, i16* %21, align 4
  %23 = and i16 %22, 3
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1751, i32 noundef 0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #20
  unreachable

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  store %struct.dns_compress* %1, %struct.dns_compress** %27, align 8, !tbaa !131
  tail call fastcc void @isc_buffer_clear(%struct.isc_buffer* noundef nonnull %2)
  call fastcc void @isc_buffer_availableregion(%struct.isc_buffer* noundef nonnull %2, %struct.isc_region* noundef nonnull %4)
  %28 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %4, i64 0, i32 1
  %29 = load i32, i32* %28, align 8, !tbaa !89
  %30 = icmp ult i32 %29, 12
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = add i32 %29, -12
  %33 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %34 = load i32, i32* %33, align 8, !tbaa !132
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef nonnull %2, i32 noundef 12)
  store %struct.isc_buffer* %2, %struct.isc_buffer** %16, align 8, !tbaa !130
  br label %37

37:                                               ; preds = %31, %26, %36
  %38 = phi i32 [ 0, %36 ], [ 19, %26 ], [ 19, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #21
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_clear(%struct.isc_buffer* noalias noundef %0) unnamed_addr #0 {
  %2 = icmp eq %struct.isc_buffer* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1114990113
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 699, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  store i32 0, i32* %9, align 4, !tbaa !87
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  store i32 0, i32* %10, align 8, !tbaa !96
  %11 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 5
  store i32 0, i32* %11, align 4, !tbaa !133
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_availableregion(%struct.isc_buffer* noalias nocapture noundef readonly %0, %struct.isc_region* noalias noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !40
  %5 = icmp eq i32 %4, 1114990113
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 639, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq %struct.isc_region* %1, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 640, i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.207, i64 0, i64 0)) #20
  unreachable

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %12 = load i8*, i8** %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %14 = load i32, i32* %13, align 4, !tbaa !87
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %1, i64 0, i32 0
  store i8* %16, i8** %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 2
  %19 = load i32, i32* %18, align 8, !tbaa !134
  %20 = sub i32 %19, %14
  %21 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %1, i64 0, i32 1
  store i32 %20, i32* %21, align 8, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_add(%struct.isc_buffer* noalias noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 657, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 4, !tbaa !87
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 2
  %14 = load i32, i32* %13, align 8, !tbaa !134
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 658, i32 noundef 0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.218, i64 0, i64 0)) #20
  unreachable

17:                                               ; preds = %9
  store i32 %12, i32* %10, align 4, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_renderchangebuffer(%struct.dns_message* noundef %0, %struct.isc_buffer* noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.isc_region, align 8
  %4 = alloca %struct.isc_region, align 8
  %5 = bitcast %struct.isc_region* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #21
  %6 = bitcast %struct.isc_region* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #21
  %7 = icmp eq %struct.dns_message* %0, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 1297303360
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1787, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

13:                                               ; preds = %8
  %14 = icmp eq %struct.isc_buffer* %1, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1788, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #20
  unreachable

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 20
  %18 = load %struct.isc_buffer*, %struct.isc_buffer** %17, align 8, !tbaa !130
  %19 = icmp eq %struct.isc_buffer* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1789, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0)) #20
  unreachable

21:                                               ; preds = %16
  tail call fastcc void @isc_buffer_clear(%struct.isc_buffer* noundef nonnull %1)
  call fastcc void @isc_buffer_availableregion(%struct.isc_buffer* noundef nonnull %1, %struct.isc_region* noundef nonnull %4)
  %22 = load %struct.isc_buffer*, %struct.isc_buffer** %17, align 8, !tbaa !130
  call fastcc void @isc_buffer_usedregion(%struct.isc_buffer* noundef %22, %struct.isc_region* noundef nonnull %3)
  %23 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %4, i64 0, i32 1
  %24 = load i32, i32* %23, align 8, !tbaa !89
  %25 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %3, i64 0, i32 1
  %26 = load i32, i32* %25, align 8, !tbaa !89
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1799, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0)) #20
  unreachable

29:                                               ; preds = %21
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef nonnull %1, i32 noundef %26)
  %30 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %4, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8, !tbaa !95
  %32 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %3, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !95
  %34 = load i32, i32* %25, align 8, !tbaa !89
  %35 = zext i32 %34 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %33, i64 %35, i1 false)
  store %struct.isc_buffer* %1, %struct.isc_buffer** %17, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #21
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_renderrelease(%struct.dns_message* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1814, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %11 = load i32, i32* %10, align 8, !tbaa !132
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1815, i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %9
  %15 = sub i32 %11, %1
  store i32 %15, i32* %10, align 8, !tbaa !132
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_renderreserve(%struct.dns_message* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.isc_region, align 8
  %4 = bitcast %struct.isc_region* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #21
  %5 = icmp eq %struct.dns_message* %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !40
  %9 = icmp eq i32 %8, 1297303360
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1824, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 20
  %13 = load %struct.isc_buffer*, %struct.isc_buffer** %12, align 8, !tbaa !130
  %14 = icmp eq %struct.isc_buffer* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  call fastcc void @isc_buffer_availableregion(%struct.isc_buffer* noundef nonnull %13, %struct.isc_region* noundef nonnull %3)
  %16 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %3, i64 0, i32 1
  %17 = load i32, i32* %16, align 8, !tbaa !89
  %18 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %19 = load i32, i32* %18, align 8, !tbaa !132
  %20 = add i32 %19, %1
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %15, %11
  %23 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %24 = load i32, i32* %23, align 8, !tbaa !132
  %25 = add i32 %24, %1
  store i32 %25, i32* %23, align 8, !tbaa !132
  br label %26

26:                                               ; preds = %15, %22
  %27 = phi i32 [ 0, %22 ], [ 19, %15 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #21
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_rendersection(%struct.dns_message* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 8
  %6 = alloca { i32, i32, i32, i8, %struct.anon, %struct.isc_mem* }, align 8
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #21
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9)
  %10 = bitcast { i32, i32, i32, i8, %struct.anon, %struct.isc_mem* }* %6 to i8*
  %11 = bitcast { i32, i32, i32, i8, %struct.anon, %struct.isc_mem* }* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11)
  %12 = icmp eq %struct.dns_message* %0, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %15 = load i32, i32* %14, align 4, !tbaa !40
  %16 = icmp eq i32 %15, 1297303360
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1931, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 20
  %20 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %21 = icmp eq %struct.isc_buffer* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1932, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0)) #20
  unreachable

23:                                               ; preds = %18
  %24 = icmp ult i32 %1, 4
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 1933, i32 noundef 0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0)) #20
  unreachable

26:                                               ; preds = %23
  %27 = zext i32 %1 to i64
  %28 = icmp eq i32 %1, 3
  %29 = and i32 %2, 1
  %30 = icmp eq i32 %29, 0
  %31 = and i1 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = and i32 %2, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = and i32 %2, 16
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 3, i32 4
  %39 = select i1 %37, i16 0, i16 28
  br label %40

40:                                               ; preds = %26, %35, %32
  %41 = phi i32 [ 4, %32 ], [ %38, %35 ], [ 1, %26 ]
  %42 = phi i16 [ 1, %32 ], [ %39, %35 ], [ 0, %26 ]
  %43 = lshr i32 %2, 2
  %44 = and i32 %43, 1
  %45 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %20, i64 0, i32 2
  %46 = load i32, i32* %45, align 8, !tbaa !134
  %47 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %20, i64 0, i32 3
  %48 = load i32, i32* %47, align 4, !tbaa !87
  %49 = sub i32 %46, %48
  %50 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %51 = load i32, i32* %50, align 8, !tbaa !132
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %264, label %53

53:                                               ; preds = %40
  %54 = sub i32 %46, %51
  store i32 %54, i32* %45, align 8, !tbaa !134
  %55 = icmp eq i32 %51, 0
  %56 = and i32 %2, 2
  %57 = icmp ne i32 %56, 0
  %58 = and i1 %57, %55
  %59 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %27, i32 0
  %60 = load %struct.dns_name*, %struct.dns_name** %59, align 8, !tbaa !100
  %61 = icmp eq %struct.dns_name* %60, null
  br i1 %61, label %128, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %60, i64 0, i32 8, i32 0
  %64 = load %struct.dns_rdataset*, %struct.dns_rdataset** %63, align 8, !tbaa !135
  %65 = icmp eq %struct.dns_rdataset* %64, null
  br i1 %65, label %128, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %64, i64 0, i32 8
  %68 = load i32, i32* %67, align 4, !tbaa !108
  %69 = and i32 %68, 65538
  %70 = icmp eq i32 %69, 65536
  br i1 %70, label %71, label %128

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 47
  %73 = bitcast %struct.dns_sortlist_arg* %72 to i8*
  %74 = bitcast %struct.isc_buffer* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %8, i8* noundef nonnull align 8 dereferenceable(20) %74, i64 20, i1 false), !tbaa.struct !85
  %75 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %20, i64 0, i32 4
  %76 = bitcast i32* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %76, i64 40, i1 false), !tbaa.struct !136
  store i32 0, i32* %4, align 4, !tbaa !10
  %77 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %78 = load %struct.dns_compress*, %struct.dns_compress** %77, align 8, !tbaa !131
  %79 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 46
  %80 = load i32 (%struct.dns_rdata*, i8*)*, i32 (%struct.dns_rdata*, i8*)** %79, align 8, !tbaa !137
  br i1 %58, label %81, label %83

81:                                               ; preds = %71
  %82 = call i32 @dns_rdataset_towirepartial(%struct.dns_rdataset* noundef nonnull %64, %struct.dns_name* noundef nonnull %60, %struct.dns_compress* noundef %78, %struct.isc_buffer* noundef nonnull %20, i32 (%struct.dns_rdata*, i8*)* noundef %80, i8* noundef nonnull %73, i32 noundef %44, i32* noundef nonnull %4, i8** noundef null) #21
  br label %85

83:                                               ; preds = %71
  %84 = call i32 @dns_rdataset_towiresorted(%struct.dns_rdataset* noundef nonnull %64, %struct.dns_name* noundef nonnull %60, %struct.dns_compress* noundef %78, %struct.isc_buffer* noundef nonnull %20, i32 (%struct.dns_rdata*, i8*)* noundef %80, i8* noundef nonnull %73, i32 noundef %44, i32* noundef nonnull %4) #21
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = load i32, i32* %4, align 4, !tbaa !10
  %88 = icmp eq i32 %86, 19
  %89 = select i1 %58, i1 %88, i1 false
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %92 = load i32, i32* %91, align 4, !tbaa !93
  %93 = or i32 %92, 512
  store i32 %93, i32* %91, align 4, !tbaa !93
  %94 = load i32, i32* %50, align 8, !tbaa !132
  %95 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %96 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %95, i64 0, i32 2
  %97 = load i32, i32* %96, align 8, !tbaa !134
  %98 = add i32 %97, %94
  store i32 %98, i32* %96, align 8, !tbaa !134
  %99 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 %27
  %100 = load i32, i32* %99, align 4, !tbaa !10
  %101 = add i32 %100, %87
  store i32 %101, i32* %99, align 4, !tbaa !10
  br label %264

102:                                              ; preds = %85
  br i1 %88, label %103, label %107

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %105 = load i32, i32* %104, align 4, !tbaa !93
  %106 = or i32 %105, 512
  store i32 %106, i32* %104, align 4, !tbaa !93
  br label %107

107:                                              ; preds = %103, %102
  %108 = icmp eq i32 %86, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %111 = load %struct.dns_compress*, %struct.dns_compress** %110, align 8, !tbaa !131
  call void @dns_compress_rollback(%struct.dns_compress* noundef %111, i32 noundef %48) #21
  %112 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %113 = bitcast %struct.isc_buffer* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %113, i8* noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !85
  %114 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %112, i64 0, i32 3
  store i32 %48, i32* %114, align 4, !tbaa.struct !138
  %115 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %112, i64 0, i32 4
  %116 = bitcast i32* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %116, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !136
  %117 = load i32, i32* %50, align 8, !tbaa !132
  %118 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %119 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %118, i64 0, i32 2
  %120 = load i32, i32* %119, align 8, !tbaa !134
  %121 = add i32 %120, %117
  store i32 %121, i32* %119, align 8, !tbaa !134
  %122 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 %27
  %123 = load i32, i32* %122, align 4, !tbaa !10
  %124 = add i32 %123, %87
  store i32 %124, i32* %122, align 4, !tbaa !10
  br label %264

125:                                              ; preds = %107
  call fastcc void @update_min_section_ttl(%struct.dns_message* noundef %0, i32 noundef %1, %struct.dns_rdataset* noundef nonnull %64)
  %126 = load i32, i32* %67, align 4, !tbaa !108
  %127 = or i32 %126, 2
  store i32 %127, i32* %67, align 4, !tbaa !108
  br label %128

128:                                              ; preds = %125, %62, %66, %53
  %129 = phi i32 [ 0, %66 ], [ 0, %62 ], [ 0, %53 ], [ %87, %125 ]
  %130 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %131 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 46
  %132 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 47
  %133 = bitcast %struct.dns_sortlist_arg* %132 to i8*
  %134 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %135 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 46
  %136 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 47
  %137 = bitcast %struct.dns_sortlist_arg* %136 to i8*
  %138 = add i32 %1, -1
  %139 = icmp ult i32 %138, 2
  %140 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %141 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  br label %142

142:                                              ; preds = %252, %128
  %143 = phi i32 [ %129, %128 ], [ %157, %252 ]
  %144 = phi i32 [ %41, %128 ], [ %253, %252 ]
  %145 = load %struct.dns_name*, %struct.dns_name** %59, align 8, !tbaa !100
  %146 = icmp eq %struct.dns_name* %145, null
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load i32, i32* %50, align 8, !tbaa !132
  %149 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %150 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %149, i64 0, i32 2
  %151 = load i32, i32* %150, align 8, !tbaa !134
  %152 = add i32 %151, %148
  store i32 %152, i32* %150, align 8, !tbaa !134
  %153 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 %27
  %154 = load i32, i32* %153, align 4, !tbaa !10
  %155 = add i32 %154, %143
  store i32 %155, i32* %153, align 4, !tbaa !10
  br label %264

156:                                              ; preds = %249, %159
  %157 = phi i32 [ %160, %159 ], [ %250, %249 ]
  %158 = icmp eq %struct.dns_name* %163, null
  br i1 %158, label %252, label %159, !llvm.loop !139

159:                                              ; preds = %142, %156
  %160 = phi i32 [ %157, %156 ], [ %143, %142 ]
  %161 = phi %struct.dns_name* [ %163, %156 ], [ %145, %142 ]
  %162 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %161, i64 0, i32 7, i32 1
  %163 = load %struct.dns_name*, %struct.dns_name** %162, align 8, !tbaa !103
  %164 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %161, i64 0, i32 8, i32 0
  %165 = load %struct.dns_rdataset*, %struct.dns_rdataset** %164, align 8, !tbaa !135
  %166 = icmp eq %struct.dns_rdataset* %165, null
  br i1 %166, label %156, label %167

167:                                              ; preds = %159, %249
  %168 = phi i32 [ %250, %249 ], [ %160, %159 ]
  %169 = phi %struct.dns_rdataset* [ %171, %249 ], [ %165, %159 ]
  %170 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %169, i64 0, i32 2, i32 1
  %171 = load %struct.dns_rdataset*, %struct.dns_rdataset** %170, align 8, !tbaa !111
  %172 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %169, i64 0, i32 8
  %173 = load i32, i32* %172, align 4, !tbaa !108
  %174 = and i32 %173, 2
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %249

176:                                              ; preds = %167
  br i1 %31, label %177, label %179

177:                                              ; preds = %176
  %178 = call fastcc zeroext i1 @wrong_priority(%struct.dns_rdataset* noundef nonnull %169, i32 noundef %144, i16 noundef zeroext %42)
  br i1 %178, label %249, label %179

179:                                              ; preds = %177, %176
  %180 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %181 = bitcast %struct.isc_buffer* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %8, i8* noundef nonnull align 8 dereferenceable(20) %181, i64 20, i1 false), !tbaa.struct !85
  %182 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %180, i64 0, i32 3
  %183 = load i32, i32* %182, align 4, !tbaa.struct !138
  %184 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %180, i64 0, i32 4
  %185 = bitcast i32* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %185, i64 40, i1 false), !tbaa.struct !136
  store i32 0, i32* %4, align 4, !tbaa !10
  br i1 %58, label %186, label %190

186:                                              ; preds = %179
  %187 = load %struct.dns_compress*, %struct.dns_compress** %134, align 8, !tbaa !131
  %188 = load i32 (%struct.dns_rdata*, i8*)*, i32 (%struct.dns_rdata*, i8*)** %135, align 8, !tbaa !137
  %189 = call i32 @dns_rdataset_towirepartial(%struct.dns_rdataset* noundef nonnull %169, %struct.dns_name* noundef nonnull %161, %struct.dns_compress* noundef %187, %struct.isc_buffer* noundef %180, i32 (%struct.dns_rdata*, i8*)* noundef %188, i8* noundef nonnull %137, i32 noundef %44, i32* noundef nonnull %4, i8** noundef null) #21
  br label %194

190:                                              ; preds = %179
  %191 = load %struct.dns_compress*, %struct.dns_compress** %130, align 8, !tbaa !131
  %192 = load i32 (%struct.dns_rdata*, i8*)*, i32 (%struct.dns_rdata*, i8*)** %131, align 8, !tbaa !137
  %193 = call i32 @dns_rdataset_towiresorted(%struct.dns_rdataset* noundef nonnull %169, %struct.dns_name* noundef nonnull %161, %struct.dns_compress* noundef %191, %struct.isc_buffer* noundef %180, i32 (%struct.dns_rdata*, i8*)* noundef %192, i8* noundef nonnull %133, i32 noundef %44, i32* noundef nonnull %4) #21
  br label %194

194:                                              ; preds = %190, %186
  %195 = phi i32 [ %189, %186 ], [ %193, %190 ]
  %196 = load i32, i32* %4, align 4, !tbaa !10
  %197 = add i32 %196, %168
  %198 = icmp eq i32 %195, 19
  %199 = select i1 %58, i1 %198, i1 false
  br i1 %199, label %200, label %209

200:                                              ; preds = %194
  %201 = load i32, i32* %50, align 8, !tbaa !132
  %202 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %203 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %202, i64 0, i32 2
  %204 = load i32, i32* %203, align 8, !tbaa !134
  %205 = add i32 %204, %201
  store i32 %205, i32* %203, align 8, !tbaa !134
  %206 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 %27
  %207 = load i32, i32* %206, align 4, !tbaa !10
  %208 = add i32 %207, %197
  store i32 %208, i32* %206, align 4, !tbaa !10
  br label %264

209:                                              ; preds = %194
  %210 = icmp eq i32 %195, 0
  br i1 %210, label %231, label %211

211:                                              ; preds = %209
  %212 = icmp ult i32 %183, 65536
  br i1 %212, label %214, label %213

213:                                              ; preds = %211
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2089, i32 noundef 2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0)) #20
  unreachable

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %216 = load %struct.dns_compress*, %struct.dns_compress** %215, align 8, !tbaa !131
  %217 = and i32 %183, 65535
  call void @dns_compress_rollback(%struct.dns_compress* noundef %216, i32 noundef %217) #21
  %218 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %219 = bitcast %struct.isc_buffer* %218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %219, i8* noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !85
  %220 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %218, i64 0, i32 3
  store i32 %183, i32* %220, align 4, !tbaa.struct !138
  %221 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %218, i64 0, i32 4
  %222 = bitcast i32* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %222, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !136
  %223 = load i32, i32* %50, align 8, !tbaa !132
  %224 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %225 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %224, i64 0, i32 2
  %226 = load i32, i32* %225, align 8, !tbaa !134
  %227 = add i32 %226, %223
  store i32 %227, i32* %225, align 8, !tbaa !134
  %228 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 %27
  %229 = load i32, i32* %228, align 4, !tbaa !10
  %230 = add i32 %229, %197
  store i32 %230, i32* %228, align 4, !tbaa !10
  call fastcc void @maybe_clear_ad(%struct.dns_message* noundef %0, i32 noundef %1)
  br label %264

231:                                              ; preds = %209
  %232 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %169, i64 0, i32 6
  %233 = load i16, i16* %232, align 8, !tbaa !140
  %234 = icmp ne i16 %233, 8
  %235 = and i1 %139, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32, i32* %140, align 4, !tbaa !93
  %238 = and i32 %237, -33
  store i32 %238, i32* %140, align 4, !tbaa !93
  br label %239

239:                                              ; preds = %236, %231
  %240 = load i32, i32* %172, align 4, !tbaa !108
  %241 = and i32 %240, 1048576
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %239
  %244 = load i32, i32* %141, align 4, !tbaa !93
  %245 = and i32 %244, -33
  store i32 %245, i32* %141, align 4, !tbaa !93
  br label %246

246:                                              ; preds = %243, %239
  call fastcc void @update_min_section_ttl(%struct.dns_message* noundef %0, i32 noundef %1, %struct.dns_rdataset* noundef nonnull %169)
  %247 = load i32, i32* %172, align 4, !tbaa !108
  %248 = or i32 %247, 2
  store i32 %248, i32* %172, align 4, !tbaa !108
  br label %249

249:                                              ; preds = %177, %167, %246
  %250 = phi i32 [ %168, %167 ], [ %168, %177 ], [ %197, %246 ]
  %251 = icmp eq %struct.dns_rdataset* %171, null
  br i1 %251, label %156, label %167, !llvm.loop !141

252:                                              ; preds = %156
  %253 = add nsw i32 %144, -1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %142, !llvm.loop !142

255:                                              ; preds = %252
  %256 = load i32, i32* %50, align 8, !tbaa !132
  %257 = load %struct.isc_buffer*, %struct.isc_buffer** %19, align 8, !tbaa !130
  %258 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %257, i64 0, i32 2
  %259 = load i32, i32* %258, align 8, !tbaa !134
  %260 = add i32 %259, %256
  store i32 %260, i32* %258, align 8, !tbaa !134
  %261 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 %27
  %262 = load i32, i32* %261, align 4, !tbaa !10
  %263 = add i32 %262, %157
  store i32 %263, i32* %261, align 4, !tbaa !10
  br label %264

264:                                              ; preds = %90, %109, %40, %255, %214, %200, %147
  %265 = phi i32 [ 0, %147 ], [ 19, %200 ], [ %195, %214 ], [ 0, %255 ], [ 19, %40 ], [ %86, %109 ], [ %86, %90 ]
  %266 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %266)
  %267 = bitcast { i32, i32, i32, i8, %struct.anon, %struct.isc_mem* }* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %267)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #21
  ret i32 %265
}

declare i32 @dns_rdataset_towirepartial(%struct.dns_rdataset* noundef, %struct.dns_name* noundef, %struct.dns_compress* noundef, %struct.isc_buffer* noundef, i32 (%struct.dns_rdata*, i8*)* noundef, i8* noundef, i32 noundef, i32* noundef, i8** noundef) local_unnamed_addr #3

declare i32 @dns_rdataset_towiresorted(%struct.dns_rdataset* noundef, %struct.dns_name* noundef, %struct.dns_compress* noundef, %struct.isc_buffer* noundef, i32 (%struct.dns_rdata*, i8*)* noundef, i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

declare void @dns_compress_rollback(%struct.dns_compress* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc void @update_min_section_ttl(%struct.dns_message* noalias nocapture noundef %0, i32 noundef %1, %struct.dns_rdataset* noalias nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 49, i64 %4, i32 0
  %6 = load i8, i8* %5, align 8, !tbaa !143, !range !145
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %2, i64 0, i32 5
  %10 = load i32, i32* %9, align 4, !tbaa !122
  %11 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 49, i64 %4, i32 1
  %12 = load i32, i32* %11, align 4, !tbaa !146
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8, %3
  store i8 1, i8* %5, align 8, !tbaa !143
  %15 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %2, i64 0, i32 5
  %16 = load i32, i32* %15, align 4, !tbaa !122
  %17 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 49, i64 %4, i32 1
  store i32 %16, i32* %17, align 4, !tbaa !146
  br label %18

18:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define internal fastcc zeroext i1 @wrong_priority(%struct.dns_rdataset* nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %0, i64 0, i32 3
  %5 = load i16, i16* %4, align 8, !tbaa !79
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %0, i64 0, i32 4
  %9 = load i16, i16* %8, align 2, !tbaa !81
  switch i16 %9, label %13 [
    i16 1, label %10
    i16 28, label %10
    i16 46, label %14
    i16 48, label %14
  ]

10:                                               ; preds = %7, %7
  %11 = icmp eq i16 %9, %2
  %12 = select i1 %11, i32 4, i32 3
  br label %14

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %7, %7, %10, %13
  %15 = phi i32 [ 1, %13 ], [ %12, %10 ], [ 2, %7 ], [ 2, %7 ]
  %16 = icmp slt i32 %15, %1
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  ret i1 %18
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc void @maybe_clear_ad(%struct.dns_message* nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  switch i32 %1, label %16 [
    i32 1, label %12
    i32 2, label %8
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 1
  %10 = load i32, i32* %9, align 4, !tbaa !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7, %8
  %13 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %14 = load i32, i32* %13, align 4, !tbaa !93
  %15 = and i32 %14, -33
  store i32 %15, i32* %13, align 4, !tbaa !93
  br label %16

16:                                               ; preds = %7, %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_renderheader(%struct.dns_message* noundef readonly %0, %struct.isc_buffer* noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.isc_region, align 8
  %4 = bitcast %struct.isc_region* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #21
  %5 = icmp eq %struct.dns_message* %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !40
  %9 = icmp eq i32 %8, 1297303360
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2138, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

11:                                               ; preds = %6
  %12 = icmp eq %struct.isc_buffer* %1, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2139, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %11
  call fastcc void @isc_buffer_availableregion(%struct.isc_buffer* noundef nonnull %1, %struct.isc_region* noundef nonnull %3)
  %15 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %3, i64 0, i32 1
  %16 = load i32, i32* %15, align 8, !tbaa !89
  %17 = icmp ugt i32 %16, 11
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2142, i32 noundef 0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 2
  %21 = load i16, i16* %20, align 8, !tbaa !90
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef nonnull %1, i16 noundef zeroext %21)
  %22 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 5
  %23 = load i16, i16* %22, align 2, !tbaa !91
  %24 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 4
  %25 = load i16, i16* %24, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %27 = load i32, i32* %26, align 4, !tbaa !93
  %28 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 0
  %29 = load i32, i32* %28, align 8, !tbaa !10
  %30 = icmp ult i32 %29, 65536
  br i1 %30, label %31, label %43

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 1
  %33 = load i32, i32* %32, align 4, !tbaa !10
  %34 = icmp ult i32 %33, 65536
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 2
  %37 = load i32, i32* %36, align 8, !tbaa !10
  %38 = icmp ult i32 %37, 65536
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 3
  %41 = load i32, i32* %40, align 4, !tbaa !10
  %42 = icmp ult i32 %41, 65536
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %35, %31, %19
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2154, i32 noundef 2, i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.28, i64 0, i64 0)) #20
  unreachable

44:                                               ; preds = %39
  %45 = shl i16 %23, 11
  %46 = and i16 %45, 30720
  %47 = and i16 %25, 15
  %48 = or i16 %46, %47
  %49 = trunc i32 %27 to i16
  %50 = and i16 %49, -28688
  %51 = or i16 %48, %50
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef nonnull %1, i16 noundef zeroext %51)
  %52 = load i32, i32* %28, align 8, !tbaa !10
  %53 = trunc i32 %52 to i16
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef nonnull %1, i16 noundef zeroext %53)
  %54 = load i32, i32* %32, align 4, !tbaa !10
  %55 = trunc i32 %54 to i16
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef nonnull %1, i16 noundef zeroext %55)
  %56 = load i32, i32* %36, align 8, !tbaa !10
  %57 = trunc i32 %56 to i16
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef nonnull %1, i16 noundef zeroext %57)
  %58 = load i32, i32* %40, align 4, !tbaa !10
  %59 = trunc i32 %58 to i16
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef nonnull %1, i16 noundef zeroext %59)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noalias noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 903, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  %11 = load %struct.isc_mem*, %struct.isc_mem** %10, align 8, !tbaa !147
  %12 = icmp eq %struct.isc_mem* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @isc_buffer_reserve(%struct.isc_buffer* noundef nonnull %0, i32 noundef 2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 903, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 2
  %19 = load i32, i32* %18, align 8, !tbaa !134
  %20 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %21 = load i32, i32* %20, align 4, !tbaa !87
  %22 = sub i32 %19, %21
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 903, i32 noundef 0, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.219, i64 0, i64 0)) #20
  unreachable

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %27 = load i8*, i8** %26, align 8, !tbaa !88
  %28 = zext i32 %21 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = add i32 %21, 2
  store i32 %30, i32* %20, align 4, !tbaa !87
  %31 = lshr i16 %1, 8
  %32 = trunc i16 %31 to i8
  store i8 %32, i8* %29, align 1, !tbaa !12
  %33 = trunc i16 %1 to i8
  %34 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %33, i8* %34, align 1, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_renderend(%struct.dns_message* noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.isc_buffer, align 8
  %3 = alloca %struct.isc_region, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.isc_buffer* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #21
  %6 = bitcast %struct.isc_region* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #21
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #21
  %8 = icmp eq %struct.dns_message* %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !40
  %12 = icmp eq i32 %11, 1297303360
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2173, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 20
  %16 = load %struct.isc_buffer*, %struct.isc_buffer** %15, align 8, !tbaa !130
  %17 = icmp eq %struct.isc_buffer* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2174, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 4
  %21 = load i16, i16* %20, align 8, !tbaa !92
  %22 = icmp ult i16 %21, 16
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 10
  %25 = load %struct.dns_rdataset*, %struct.dns_rdataset** %24, align 8, !tbaa !113
  %26 = icmp eq %struct.dns_rdataset* %25, null
  br i1 %26, label %209, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %29 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %28, align 8, !tbaa !71
  %30 = icmp eq %struct.dns_tsigkey* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 41
  %33 = load %struct.dst_key*, %struct.dst_key** %32, align 8, !tbaa !148
  %34 = icmp eq %struct.dst_key* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 10
  %37 = load %struct.dns_rdataset*, %struct.dns_rdataset** %36, align 8, !tbaa !113
  %38 = icmp eq %struct.dns_rdataset* %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %35, %31, %27
  %40 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %41 = load i32, i32* %40, align 4, !tbaa !93
  %42 = and i32 %41, 512
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  tail call fastcc void @msgresetnames(%struct.dns_message* noundef %0, i32 noundef 1)
  %45 = load %struct.isc_buffer*, %struct.isc_buffer** %15, align 8, !tbaa !130
  tail call void @dns_message_renderreset(%struct.dns_message* noundef %0)
  store %struct.isc_buffer* %45, %struct.isc_buffer** %15, align 8, !tbaa !130
  tail call fastcc void @isc_buffer_clear(%struct.isc_buffer* noundef %45)
  %46 = load %struct.isc_buffer*, %struct.isc_buffer** %15, align 8, !tbaa !130
  tail call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef %46, i32 noundef 12)
  %47 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %48 = load %struct.dns_compress*, %struct.dns_compress** %47, align 8, !tbaa !131
  tail call void @dns_compress_rollback(%struct.dns_compress* noundef %48, i32 noundef 0) #21
  %49 = tail call i32 @dns_message_rendersection(%struct.dns_message* noundef %0, i32 noundef 0, i32 noundef 0)
  switch i32 %49, label %209 [
    i32 19, label %50
    i32 0, label %50
  ]

50:                                               ; preds = %44, %44, %39, %35
  %51 = phi i32 [ %49, %44 ], [ undef, %39 ], [ undef, %35 ], [ %49, %44 ]
  %52 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 10
  %53 = load %struct.dns_rdataset*, %struct.dns_rdataset** %52, align 8, !tbaa !113
  %54 = icmp eq %struct.dns_rdataset* %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 15
  %57 = load i32, i32* %56, align 8, !tbaa !149
  tail call void @dns_message_renderrelease(%struct.dns_message* noundef %0, i32 noundef %57)
  store i32 0, i32* %56, align 8, !tbaa !149
  %58 = load %struct.dns_rdataset*, %struct.dns_rdataset** %52, align 8, !tbaa !113
  %59 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %58, i64 0, i32 5
  %60 = load i32, i32* %59, align 4, !tbaa !122
  %61 = and i32 %60, 16777215
  store i32 %61, i32* %59, align 4, !tbaa !122
  %62 = load i16, i16* %20, align 8, !tbaa !92
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 20
  %65 = and i32 %64, -16777216
  %66 = or i32 %65, %61
  store i32 %66, i32* %59, align 4, !tbaa !122
  store i32 0, i32* %4, align 4, !tbaa !10
  %67 = load %struct.dns_name*, %struct.dns_name** @dns_rootname, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %69 = load %struct.dns_compress*, %struct.dns_compress** %68, align 8, !tbaa !131
  %70 = load %struct.isc_buffer*, %struct.isc_buffer** %15, align 8, !tbaa !130
  %71 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %72 = load i32, i32* %71, align 8, !tbaa !132
  %73 = call fastcc i32 @renderset(%struct.dns_rdataset* noundef %58, %struct.dns_name* noundef %67, %struct.dns_compress* noundef %69, %struct.isc_buffer* noundef %70, i32 noundef %72, i32* noundef nonnull %4)
  %74 = load i32, i32* %4, align 4, !tbaa !10
  %75 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 3
  %76 = load i32, i32* %75, align 4, !tbaa !10
  %77 = add i32 %76, %74
  store i32 %77, i32* %75, align 4, !tbaa !10
  %78 = icmp eq i32 %73, 0
  br i1 %78, label %79, label %209

79:                                               ; preds = %55, %50
  %80 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 19
  %81 = load i32, i32* %80, align 8, !tbaa !150
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %154, label %83

83:                                               ; preds = %79
  %84 = load %struct.isc_buffer*, %struct.isc_buffer** %15, align 8, !tbaa !130
  %85 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %84, i64 0, i32 1
  %86 = load i8*, i8** %85, align 8, !tbaa !88
  %87 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %84, i64 0, i32 3
  %88 = load i32, i32* %87, align 4, !tbaa !87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = getelementptr inbounds i8, i8* %90, i64 -4
  %92 = load i8, i8* %91, align 1, !tbaa !12
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %151

94:                                               ; preds = %83
  %95 = getelementptr inbounds i8, i8* %90, i64 -3
  %96 = load i8, i8* %95, align 1, !tbaa !12
  %97 = icmp eq i8 %96, 12
  br i1 %97, label %98, label %151

98:                                               ; preds = %94
  %99 = getelementptr inbounds i8, i8* %90, i64 -2
  %100 = load i8, i8* %99, align 1, !tbaa !12
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %151

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, i8* %90, i64 -1
  %104 = load i8, i8* %103, align 1, !tbaa !12
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %151

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 18
  %108 = load i16, i16* %107, align 4, !tbaa !151
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = zext i16 %108 to i32
  %112 = and i32 %88, 65535
  %113 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %114 = load i32, i32* %113, align 8, !tbaa !132
  %115 = add i32 %114, %112
  %116 = urem i32 %115, %111
  %117 = trunc i32 %116 to i16
  br label %118

118:                                              ; preds = %110, %106
  %119 = phi i16 [ %117, %110 ], [ 0, %106 ]
  %120 = icmp eq i16 %119, 0
  %121 = sub i16 %108, %119
  %122 = select i1 %120, i16 0, i16 %121
  %123 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %84, i64 0, i32 2
  %124 = load i32, i32* %123, align 8, !tbaa !134
  %125 = sub i32 %124, %88
  %126 = zext i16 %122 to i32
  %127 = icmp ult i32 %125, %126
  %128 = trunc i32 %125 to i16
  %129 = select i1 %127, i16 %128, i16 %122
  %130 = zext i16 %129 to i32
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef %84, i32 noundef %130)
  %131 = zext i16 %129 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %90, i8 0, i64 %131, i1 false)
  %132 = lshr i16 %129, 8
  %133 = trunc i16 %132 to i8
  store i8 %133, i8* %99, align 1, !tbaa !12
  %134 = trunc i16 %129 to i8
  store i8 %134, i8* %103, align 1, !tbaa !12
  %135 = load i32, i32* %80, align 8, !tbaa !150
  %136 = zext i32 %135 to i64
  %137 = sub nsw i64 0, %136
  %138 = getelementptr inbounds i8, i8* %90, i64 %137
  %139 = getelementptr inbounds i8, i8* %138, i64 -2
  %140 = load i8, i8* %139, align 1, !tbaa !12
  %141 = zext i8 %140 to i16
  %142 = shl nuw i16 %141, 8
  %143 = getelementptr inbounds i8, i8* %138, i64 -1
  %144 = load i8, i8* %143, align 1, !tbaa !12
  %145 = zext i8 %144 to i16
  %146 = or i16 %142, %145
  %147 = add i16 %146, %129
  %148 = lshr i16 %147, 8
  %149 = trunc i16 %148 to i8
  store i8 %149, i8* %139, align 1, !tbaa !12
  %150 = trunc i16 %147 to i8
  store i8 %150, i8* %143, align 1, !tbaa !12
  br label %151

151:                                              ; preds = %83, %94, %98, %102, %118
  %152 = phi i1 [ true, %118 ], [ false, %102 ], [ false, %98 ], [ false, %94 ], [ false, %83 ]
  %153 = phi i32 [ %51, %118 ], [ 34, %102 ], [ 34, %98 ], [ 34, %94 ], [ 34, %83 ]
  br i1 %152, label %154, label %209

154:                                              ; preds = %151, %79
  %155 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %28, align 8, !tbaa !71
  %156 = icmp eq %struct.dns_tsigkey* %155, null
  br i1 %156, label %178, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 16
  %159 = load i32, i32* %158, align 4, !tbaa !152
  call void @dns_message_renderrelease(%struct.dns_message* noundef %0, i32 noundef %159)
  store i32 0, i32* %158, align 4, !tbaa !152
  %160 = call i32 @dns_tsig_sign(%struct.dns_message* noundef %0) #21
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %209

162:                                              ; preds = %157
  store i32 0, i32* %4, align 4, !tbaa !10
  %163 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 12
  %164 = load %struct.dns_rdataset*, %struct.dns_rdataset** %163, align 8, !tbaa !127
  %165 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 34
  %166 = load %struct.dns_name*, %struct.dns_name** %165, align 8, !tbaa !128
  %167 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %168 = load %struct.dns_compress*, %struct.dns_compress** %167, align 8, !tbaa !131
  %169 = load %struct.isc_buffer*, %struct.isc_buffer** %15, align 8, !tbaa !130
  %170 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %171 = load i32, i32* %170, align 8, !tbaa !132
  %172 = call fastcc i32 @renderset(%struct.dns_rdataset* noundef %164, %struct.dns_name* noundef %166, %struct.dns_compress* noundef %168, %struct.isc_buffer* noundef %169, i32 noundef %171, i32* noundef nonnull %4)
  %173 = load i32, i32* %4, align 4, !tbaa !10
  %174 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 3
  %175 = load i32, i32* %174, align 4, !tbaa !10
  %176 = add i32 %175, %173
  store i32 %176, i32* %174, align 4, !tbaa !10
  %177 = icmp eq i32 %172, 0
  br i1 %177, label %178, label %209

178:                                              ; preds = %162, %154
  %179 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 41
  %180 = load %struct.dst_key*, %struct.dst_key** %179, align 8, !tbaa !148
  %181 = icmp eq %struct.dst_key* %180, null
  br i1 %181, label %203, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 16
  %184 = load i32, i32* %183, align 4, !tbaa !152
  call void @dns_message_renderrelease(%struct.dns_message* noundef %0, i32 noundef %184)
  store i32 0, i32* %183, align 4, !tbaa !152
  %185 = load %struct.dst_key*, %struct.dst_key** %179, align 8, !tbaa !148
  %186 = call i32 @dns_dnssec_signmessage(%struct.dns_message* noundef %0, %struct.dst_key* noundef %185) #21
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %182
  store i32 0, i32* %4, align 4, !tbaa !10
  %189 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 11
  %190 = load %struct.dns_rdataset*, %struct.dns_rdataset** %189, align 8, !tbaa !124
  %191 = load %struct.dns_name*, %struct.dns_name** @dns_rootname, align 8, !tbaa !5
  %192 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 21
  %193 = load %struct.dns_compress*, %struct.dns_compress** %192, align 8, !tbaa !131
  %194 = load %struct.isc_buffer*, %struct.isc_buffer** %15, align 8, !tbaa !130
  %195 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 17
  %196 = load i32, i32* %195, align 8, !tbaa !132
  %197 = call fastcc i32 @renderset(%struct.dns_rdataset* noundef %190, %struct.dns_name* noundef %191, %struct.dns_compress* noundef %193, %struct.isc_buffer* noundef %194, i32 noundef %196, i32* noundef nonnull %4)
  %198 = load i32, i32* %4, align 4, !tbaa !10
  %199 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 3
  %200 = load i32, i32* %199, align 4, !tbaa !10
  %201 = add i32 %200, %198
  store i32 %201, i32* %199, align 4, !tbaa !10
  %202 = icmp eq i32 %197, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %188, %178
  %204 = load %struct.isc_buffer*, %struct.isc_buffer** %15, align 8, !tbaa !130
  call fastcc void @isc_buffer_usedregion(%struct.isc_buffer* noundef %204, %struct.isc_region* noundef nonnull %3)
  %205 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %3, i64 0, i32 0
  %206 = load i8*, i8** %205, align 8, !tbaa !95
  %207 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %3, i64 0, i32 1
  %208 = load i32, i32* %207, align 8, !tbaa !89
  call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef nonnull %2, i8* noundef %206, i32 noundef %208)
  call void @dns_message_renderheader(%struct.dns_message* noundef %0, %struct.isc_buffer* noundef nonnull %2)
  store %struct.isc_buffer* null, %struct.isc_buffer** %15, align 8, !tbaa !130
  br label %209

209:                                              ; preds = %44, %188, %182, %162, %157, %55, %23, %151, %203
  %210 = phi i32 [ 0, %203 ], [ %153, %151 ], [ %49, %44 ], [ 223, %23 ], [ %73, %55 ], [ %160, %157 ], [ %172, %162 ], [ %186, %182 ], [ %197, %188 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #21
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #21
  ret i32 %210
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @msgresetnames(%struct.dns_message* noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dns_name*, align 8
  %4 = bitcast %struct.dns_name** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #21
  %5 = icmp ult i32 %1, 4
  br i1 %5, label %6, label %116

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 24
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %113
  %10 = phi i64 [ %8, %6 ], [ %114, %113 ]
  %11 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %10, i32 0
  %12 = load %struct.dns_name*, %struct.dns_name** %11, align 8, !tbaa !100
  store %struct.dns_name* %12, %struct.dns_name** %3, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_name* %12, null
  br i1 %13, label %113, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %10, i32 1
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %10, i32 1
  br label %17

17:                                               ; preds = %14, %111
  %18 = phi %struct.dns_name* [ %12, %14 ], [ %21, %111 ]
  %19 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %18, i64 0, i32 7
  %20 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %18, i64 0, i32 7, i32 1
  %21 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !103
  %22 = icmp eq %struct.dns_name* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i64 0, i32 0
  %25 = load %struct.dns_name*, %struct.dns_name** %24, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %21, i64 0, i32 7, i32 0
  store %struct.dns_name* %25, %struct.dns_name** %26, align 8, !tbaa !102
  br label %34

27:                                               ; preds = %17
  %28 = load %struct.dns_name*, %struct.dns_name** %15, align 8, !tbaa !101
  %29 = icmp eq %struct.dns_name* %28, %18
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.222, i64 0, i64 0)) #20
  unreachable

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i64 0, i32 0
  %33 = load %struct.dns_name*, %struct.dns_name** %32, align 8, !tbaa !102
  store %struct.dns_name* %33, %struct.dns_name** %15, align 8, !tbaa !101
  br label %34

34:                                               ; preds = %31, %23
  %35 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %18, i64 0, i32 7, i32 0
  %36 = load %struct.dns_name*, %struct.dns_name** %35, align 8, !tbaa !102
  %37 = icmp eq %struct.dns_name* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !103
  %40 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %36, i64 0, i32 7, i32 1
  store %struct.dns_name* %39, %struct.dns_name** %40, align 8, !tbaa !103
  br label %47

41:                                               ; preds = %34
  %42 = load %struct.dns_name*, %struct.dns_name** %11, align 8, !tbaa !100
  %43 = icmp eq %struct.dns_name* %42, %18
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.223, i64 0, i64 0)) #20
  unreachable

45:                                               ; preds = %41
  %46 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !103
  store %struct.dns_name* %46, %struct.dns_name** %11, align 8, !tbaa !100
  br label %47

47:                                               ; preds = %45, %38
  %48 = bitcast %struct.dns_name** %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %48, i8 -1, i64 16, i1 false)
  %49 = load %struct.dns_name*, %struct.dns_name** %11, align 8, !tbaa !100
  %50 = icmp eq %struct.dns_name* %49, %18
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.224, i64 0, i64 0)) #20
  unreachable

52:                                               ; preds = %47
  %53 = load %struct.dns_name*, %struct.dns_name** %16, align 8, !tbaa !101
  %54 = icmp eq %struct.dns_name* %53, %18
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.225, i64 0, i64 0)) #20
  unreachable

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %18, i64 0, i32 8, i32 0
  %58 = load %struct.dns_rdataset*, %struct.dns_rdataset** %57, align 8, !tbaa !135
  %59 = icmp eq %struct.dns_rdataset* %58, null
  br i1 %59, label %111, label %60

60:                                               ; preds = %56, %107
  %61 = phi %struct.dns_rdataset* [ %64, %107 ], [ %58, %56 ]
  %62 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %61, i64 0, i32 2
  %63 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %61, i64 0, i32 2, i32 1
  %64 = load %struct.dns_rdataset*, %struct.dns_rdataset** %63, align 8, !tbaa !111
  %65 = icmp eq %struct.dns_rdataset* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %62, i64 0, i32 0
  %68 = load %struct.dns_rdataset*, %struct.dns_rdataset** %67, align 8, !tbaa !110
  %69 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %64, i64 0, i32 2, i32 0
  store %struct.dns_rdataset* %68, %struct.dns_rdataset** %69, align 8, !tbaa !110
  br label %79

70:                                               ; preds = %60
  %71 = load %struct.dns_name*, %struct.dns_name** %3, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %71, i64 0, i32 8, i32 1
  %73 = load %struct.dns_rdataset*, %struct.dns_rdataset** %72, align 8, !tbaa !109
  %74 = icmp eq %struct.dns_rdataset* %73, %61
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 454, i32 noundef 2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.226, i64 0, i64 0)) #20
  unreachable

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %62, i64 0, i32 0
  %78 = load %struct.dns_rdataset*, %struct.dns_rdataset** %77, align 8, !tbaa !110
  store %struct.dns_rdataset* %78, %struct.dns_rdataset** %72, align 8, !tbaa !109
  br label %79

79:                                               ; preds = %76, %66
  %80 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %62, i64 0, i32 0
  %81 = load %struct.dns_rdataset*, %struct.dns_rdataset** %80, align 8, !tbaa !110
  %82 = icmp eq %struct.dns_rdataset* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %81, i64 0, i32 2, i32 1
  br label %91

85:                                               ; preds = %79
  %86 = load %struct.dns_name*, %struct.dns_name** %3, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %86, i64 0, i32 8, i32 0
  %88 = load %struct.dns_rdataset*, %struct.dns_rdataset** %87, align 8, !tbaa !135
  %89 = icmp eq %struct.dns_rdataset* %88, %61
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 454, i32 noundef 2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.227, i64 0, i64 0)) #20
  unreachable

91:                                               ; preds = %85, %83
  %92 = phi %struct.dns_rdataset** [ %84, %83 ], [ %87, %85 ]
  store %struct.dns_rdataset* %64, %struct.dns_rdataset** %92, align 8, !tbaa !5
  %93 = bitcast %struct.anon.3* %62 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %93, i8 -1, i64 16, i1 false)
  %94 = load %struct.dns_name*, %struct.dns_name** %3, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %94, i64 0, i32 8, i32 0
  %96 = load %struct.dns_rdataset*, %struct.dns_rdataset** %95, align 8, !tbaa !135
  %97 = icmp eq %struct.dns_rdataset* %96, %61
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 454, i32 noundef 2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.228, i64 0, i64 0)) #20
  unreachable

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %94, i64 0, i32 8, i32 1
  %101 = load %struct.dns_rdataset*, %struct.dns_rdataset** %100, align 8, !tbaa !109
  %102 = icmp eq %struct.dns_rdataset* %101, %61
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 454, i32 noundef 2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.229, i64 0, i64 0)) #20
  unreachable

104:                                              ; preds = %99
  %105 = call zeroext i1 @dns_rdataset_isassociated(%struct.dns_rdataset* noundef nonnull %61) #21
  br i1 %105, label %107, label %106

106:                                              ; preds = %104
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 456, i32 noundef 2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.230, i64 0, i64 0)) #20
  unreachable

107:                                              ; preds = %104
  call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef nonnull %61) #21
  %108 = load %struct.isc_mempool*, %struct.isc_mempool** %7, align 8, !tbaa !105
  %109 = bitcast %struct.dns_rdataset* %61 to i8*
  call void @isc__mempool_put(%struct.isc_mempool* noundef %108, i8* noundef nonnull %109) #21
  %110 = icmp eq %struct.dns_rdataset* %64, null
  br i1 %110, label %111, label %60, !llvm.loop !153

111:                                              ; preds = %107, %56
  call void @dns_message_puttempname(%struct.dns_message* noundef %0, %struct.dns_name** noundef nonnull %3)
  store %struct.dns_name* %21, %struct.dns_name** %3, align 8, !tbaa !5
  %112 = icmp eq %struct.dns_name* %21, null
  br i1 %112, label %113, label %17, !llvm.loop !154

113:                                              ; preds = %111, %9
  %114 = add nuw nsw i64 %10, 1
  %115 = icmp eq i64 %114, 4
  br i1 %115, label %116, label %9, !llvm.loop !155

116:                                              ; preds = %113, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_renderreset(%struct.dns_message* noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1297303360
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2346, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %10 = load i16, i16* %9, align 4
  %11 = and i16 %10, 3
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2347, i32 noundef 0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 20
  store %struct.isc_buffer* null, %struct.isc_buffer** %15, align 8, !tbaa !130
  br label %16

16:                                               ; preds = %14, %40
  %17 = phi i64 [ 0, %14 ], [ %41, %40 ]
  %18 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 9, i64 %17
  store %struct.dns_name* null, %struct.dns_name** %18, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 %17
  store i32 0, i32* %19, align 4, !tbaa !10
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %17, i32 0
  %21 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !5
  %22 = icmp eq %struct.dns_name* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %16, %36
  %24 = phi %struct.dns_name* [ %38, %36 ], [ %21, %16 ]
  %25 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %24, i64 0, i32 8, i32 0
  %26 = load %struct.dns_rdataset*, %struct.dns_rdataset** %25, align 8, !tbaa !5
  %27 = icmp eq %struct.dns_rdataset* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23, %28
  %29 = phi %struct.dns_rdataset* [ %34, %28 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %29, i64 0, i32 8
  %31 = load i32, i32* %30, align 4, !tbaa !108
  %32 = and i32 %31, -3
  store i32 %32, i32* %30, align 4, !tbaa !108
  %33 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %29, i64 0, i32 2, i32 1
  %34 = load %struct.dns_rdataset*, %struct.dns_rdataset** %33, align 8, !tbaa !5
  %35 = icmp eq %struct.dns_rdataset* %34, null
  br i1 %35, label %36, label %28, !llvm.loop !156

36:                                               ; preds = %28, %23
  %37 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %24, i64 0, i32 7, i32 1
  %38 = load %struct.dns_name*, %struct.dns_name** %37, align 8, !tbaa !5
  %39 = icmp eq %struct.dns_name* %38, null
  br i1 %39, label %40, label %23, !llvm.loop !157

40:                                               ; preds = %36, %16
  %41 = add nuw nsw i64 %17, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %16, !llvm.loop !158

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 34
  %45 = load %struct.dns_name*, %struct.dns_name** %44, align 8, !tbaa !128
  %46 = icmp eq %struct.dns_name* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @dns_message_puttempname(%struct.dns_message* noundef nonnull %0, %struct.dns_name** noundef nonnull %44)
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 12
  %50 = load %struct.dns_rdataset*, %struct.dns_rdataset** %49, align 8, !tbaa !127
  %51 = icmp eq %struct.dns_rdataset* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef nonnull %50) #21
  tail call void @dns_message_puttemprdataset(%struct.dns_message* noundef nonnull %0, %struct.dns_rdataset** noundef nonnull %49)
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 40
  %55 = load %struct.dns_name*, %struct.dns_name** %54, align 8, !tbaa !125
  %56 = icmp eq %struct.dns_name* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @dns_message_puttempname(%struct.dns_message* noundef nonnull %0, %struct.dns_name** noundef nonnull %54)
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 11
  %60 = load %struct.dns_rdataset*, %struct.dns_rdataset** %59, align 8, !tbaa !124
  %61 = icmp eq %struct.dns_rdataset* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef nonnull %60) #21
  tail call void @dns_message_puttemprdataset(%struct.dns_message* noundef nonnull %0, %struct.dns_rdataset** noundef nonnull %59)
  br label %63

63:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @renderset(%struct.dns_rdataset* noundef %0, %struct.dns_name* noundef %1, %struct.dns_compress* noundef %2, %struct.isc_buffer* noundef %3, i32 noundef %4, i32* noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !87
  %11 = sub i32 %8, %10
  %12 = icmp ult i32 %11, %4
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = sub i32 %8, %4
  store i32 %14, i32* %7, align 8, !tbaa !134
  %15 = tail call i32 @dns_rdataset_towire(%struct.dns_rdataset* noundef %0, %struct.dns_name* noundef %1, %struct.dns_compress* noundef %2, %struct.isc_buffer* noundef %3, i32 noundef 0, i32* noundef %5) #21
  %16 = load i32, i32* %7, align 8, !tbaa !134
  %17 = add i32 %16, %4
  store i32 %17, i32* %7, align 8, !tbaa !134
  br label %18

18:                                               ; preds = %6, %13
  %19 = phi i32 [ %15, %13 ], [ 19, %6 ]
  ret i32 %19
}

declare i32 @dns_tsig_sign(%struct.dns_message* noundef) local_unnamed_addr #3

declare i32 @dns_dnssec_signmessage(%struct.dns_message* noundef, %struct.dst_key* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_init(%struct.isc_buffer* noalias noundef writeonly %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq %struct.isc_buffer* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 529, i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.231, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  store i32 1114990113, i32* %7, align 8, !tbaa.struct !85
  %8 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  store i8* %1, i8** %8, align 8, !tbaa.struct !159
  %9 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 2
  store i32 %2, i32* %9, align 8, !tbaa.struct !160
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 8, i32 0
  %12 = bitcast i32* %10 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(17) %12, i8 0, i64 17, i1 false)
  %13 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  %14 = bitcast %struct.isc_buffer** %11 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %14, i8 -1, i64 16, i1 false)
  store %struct.isc_mem* null, %struct.isc_mem** %13, align 8, !tbaa.struct !161
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_puttempname(%struct.dns_message* noundef readonly %0, %struct.dns_name** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2550, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_name** %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_name*, %struct.dns_name** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_name* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2551, i32 noundef 0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  store %struct.dns_name* null, %struct.dns_name** %1, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %12, i64 0, i32 7, i32 0
  %17 = bitcast %struct.dns_name** %16 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !102
  %19 = icmp eq i8* %18, inttoptr (i64 -1 to i8*)
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2556, i32 noundef 0, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.47, i64 0, i64 0)) #20
  unreachable

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %12, i64 0, i32 8, i32 0
  %23 = load %struct.dns_rdataset*, %struct.dns_rdataset** %22, align 8, !tbaa !135
  %24 = icmp eq %struct.dns_rdataset* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2557, i32 noundef 0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i64 0, i64 0)) #20
  unreachable

26:                                               ; preds = %21
  %27 = tail call zeroext i1 @dns_name_dynamic(%struct.dns_name* noundef nonnull %12) #21
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %30 = load %struct.isc_mem*, %struct.isc_mem** %29, align 8, !tbaa !63
  tail call void @dns_name_free(%struct.dns_name* noundef nonnull %12, %struct.isc_mem* noundef %30) #21
  br label %31

31:                                               ; preds = %26, %28
  %32 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 23
  %33 = load %struct.isc_mempool*, %struct.isc_mempool** %32, align 8, !tbaa !162
  %34 = bitcast %struct.dns_name* %12 to i8*
  tail call void @isc__mempool_put(%struct.isc_mempool* noundef %33, i8* noundef nonnull %34) #21
  ret void
}

declare void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_puttemprdataset(%struct.dns_message* noundef readonly %0, %struct.dns_rdataset** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2585, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_rdataset** %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_rdataset*, %struct.dns_rdataset** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_rdataset* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2586, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  %16 = tail call zeroext i1 @dns_rdataset_isassociated(%struct.dns_rdataset* noundef nonnull %12) #21
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2588, i32 noundef 0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 24
  %20 = load %struct.isc_mempool*, %struct.isc_mempool** %19, align 8, !tbaa !105
  %21 = bitcast %struct.dns_rdataset** %1 to i8**
  %22 = load i8*, i8** %21, align 8, !tbaa !5
  tail call void @isc__mempool_put(%struct.isc_mempool* noundef %20, i8* noundef %22) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %1, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_firstname(%struct.dns_message* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2382, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp ult i32 %1, 4
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2383, i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %13, i32 0
  %15 = load %struct.dns_name*, %struct.dns_name** %14, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 9, i64 %13
  store %struct.dns_name* %15, %struct.dns_name** %16, align 8, !tbaa !5
  %17 = icmp eq %struct.dns_name* %15, null
  %18 = select i1 %17, i32 29, i32 0
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_nextname(%struct.dns_message* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2396, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp ult i32 %1, 4
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2397, i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 9, i64 %13
  %15 = load %struct.dns_name*, %struct.dns_name** %14, align 8, !tbaa !5
  %16 = icmp eq %struct.dns_name* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2398, i32 noundef 0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %15, i64 0, i32 7, i32 1
  %20 = load %struct.dns_name*, %struct.dns_name** %19, align 8, !tbaa !103
  store %struct.dns_name* %20, %struct.dns_name** %14, align 8, !tbaa !5
  %21 = icmp eq %struct.dns_name* %20, null
  %22 = select i1 %21, i32 29, i32 0
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_currentname(%struct.dns_message* noundef readonly %0, i32 noundef %1, %struct.dns_name** noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.dns_message* %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40
  %8 = icmp eq i32 %7, 1297303360
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2412, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

10:                                               ; preds = %5
  %11 = icmp ult i32 %1, 4
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2413, i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #20
  unreachable

13:                                               ; preds = %10
  %14 = icmp eq %struct.dns_name** %2, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = load %struct.dns_name*, %struct.dns_name** %2, align 8, !tbaa !5
  %17 = icmp eq %struct.dns_name* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %13
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2414, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %15
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 9, i64 %20
  %22 = load %struct.dns_name*, %struct.dns_name** %21, align 8, !tbaa !5
  %23 = icmp eq %struct.dns_name* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2415, i32 noundef 0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #20
  unreachable

25:                                               ; preds = %19
  store %struct.dns_name* %22, %struct.dns_name** %2, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_findname(%struct.dns_message* noundef readonly %0, i32 noundef %1, %struct.dns_name* noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4, %struct.dns_name** noundef %5, %struct.dns_rdataset** noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.dns_name*, align 8
  %9 = bitcast %struct.dns_name** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #21
  %10 = icmp eq %struct.dns_message* %0, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2434, i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %7
  %13 = icmp ult i32 %1, 4
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2435, i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %12
  %16 = icmp eq %struct.dns_name* %2, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2436, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %15
  %19 = icmp eq %struct.dns_name** %5, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = load %struct.dns_name*, %struct.dns_name** %5, align 8, !tbaa !5
  %22 = icmp eq %struct.dns_name* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2437, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i64 0, i64 0)) #20
  unreachable

24:                                               ; preds = %20, %18
  %25 = icmp eq i16 %3, 255
  %26 = icmp eq %struct.dns_rdataset** %6, null
  br i1 %25, label %27, label %29

27:                                               ; preds = %24
  br i1 %26, label %34, label %28

28:                                               ; preds = %27
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2440, i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0)) #20
  unreachable

29:                                               ; preds = %24
  br i1 %26, label %34, label %30

30:                                               ; preds = %29
  %31 = load %struct.dns_rdataset*, %struct.dns_rdataset** %6, align 8, !tbaa !5
  %32 = icmp eq %struct.dns_rdataset* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2442, i32 noundef 0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0)) #20
  unreachable

34:                                               ; preds = %29, %30, %27
  %35 = zext i32 %1 to i64
  %36 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %35
  %37 = call fastcc i32 @findname(%struct.dns_name** noundef nonnull %8, %struct.dns_name* noundef nonnull %2, %struct.dns_namelist_t* noundef nonnull %36)
  switch i32 %37, label %38 [
    i32 23, label %48
    i32 0, label %39
  ]

38:                                               ; preds = %34
  br label %48

39:                                               ; preds = %34
  br i1 %19, label %42, label %40

40:                                               ; preds = %39
  %41 = load %struct.dns_name*, %struct.dns_name** %8, align 8, !tbaa !5
  store %struct.dns_name* %41, %struct.dns_name** %5, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %40, %39
  br i1 %25, label %48, label %43

43:                                               ; preds = %42
  %44 = load %struct.dns_name*, %struct.dns_name** %8, align 8, !tbaa !5
  %45 = call i32 @dns_message_findtype(%struct.dns_name* noundef %44, i16 noundef zeroext %3, i16 noundef zeroext %4, %struct.dns_rdataset** noundef %6)
  %46 = icmp eq i32 %45, 23
  %47 = select i1 %46, i32 230, i32 %45
  br label %48

48:                                               ; preds = %43, %42, %34, %38
  %49 = phi i32 [ %37, %38 ], [ 225, %34 ], [ 0, %42 ], [ %47, %43 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #21
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @findname(%struct.dns_name** noundef writeonly %0, %struct.dns_name* noundef %1, %struct.dns_namelist_t* nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dns_namelist_t, %struct.dns_namelist_t* %2, i64 0, i32 1
  %5 = load %struct.dns_name*, %struct.dns_name** %4, align 8, !tbaa !5
  %6 = icmp eq %struct.dns_name* %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %13
  %8 = phi %struct.dns_name* [ %15, %13 ], [ %5, %3 ]
  %9 = tail call zeroext i1 @dns_name_equal(%struct.dns_name* noundef nonnull %8, %struct.dns_name* noundef %1) #21
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = icmp eq %struct.dns_name** %0, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  store %struct.dns_name* %8, %struct.dns_name** %0, align 8, !tbaa !5
  br label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %8, i64 0, i32 7, i32 0
  %15 = load %struct.dns_name*, %struct.dns_name** %14, align 8, !tbaa !5
  %16 = icmp eq %struct.dns_name* %15, null
  br i1 %16, label %17, label %7, !llvm.loop !163

17:                                               ; preds = %13, %3, %10, %12
  %18 = phi i32 [ 0, %12 ], [ 0, %10 ], [ 23, %3 ], [ 23, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_movename(%struct.dns_message* noundef %0, %struct.dns_name* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.dns_message* %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2475, i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %9 = load i16, i16* %8, align 4
  %10 = and i16 %9, 3
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2476, i32 noundef 0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #20
  unreachable

13:                                               ; preds = %7
  %14 = icmp eq %struct.dns_name* %1, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2477, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #20
  unreachable

16:                                               ; preds = %13
  %17 = icmp ult i32 %2, 4
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2478, i32 noundef 0, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %16
  %20 = icmp ult i32 %3, 4
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2479, i32 noundef 0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0)) #20
  unreachable

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %1, i64 0, i32 7
  %24 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %1, i64 0, i32 7, i32 1
  %25 = load %struct.dns_name*, %struct.dns_name** %24, align 8, !tbaa !103
  %26 = icmp eq %struct.dns_name* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %23, i64 0, i32 0
  %29 = load %struct.dns_name*, %struct.dns_name** %28, align 8, !tbaa !102
  %30 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %25, i64 0, i32 7, i32 0
  store %struct.dns_name* %29, %struct.dns_name** %30, align 8, !tbaa !102
  br label %40

31:                                               ; preds = %22
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %32, i32 1
  %34 = load %struct.dns_name*, %struct.dns_name** %33, align 8, !tbaa !101
  %35 = icmp eq %struct.dns_name* %34, %1
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2484, i32 noundef 2, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i64 0, i64 0)) #20
  unreachable

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %23, i64 0, i32 0
  %39 = load %struct.dns_name*, %struct.dns_name** %38, align 8, !tbaa !102
  store %struct.dns_name* %39, %struct.dns_name** %33, align 8, !tbaa !101
  br label %40

40:                                               ; preds = %37, %27
  %41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %23, i64 0, i32 0
  %42 = load %struct.dns_name*, %struct.dns_name** %41, align 8, !tbaa !102
  %43 = icmp eq %struct.dns_name* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.dns_name*, %struct.dns_name** %24, align 8, !tbaa !103
  %46 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %42, i64 0, i32 7, i32 1
  store %struct.dns_name* %45, %struct.dns_name** %46, align 8, !tbaa !103
  br label %55

47:                                               ; preds = %40
  %48 = zext i32 %2 to i64
  %49 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %48, i32 0
  %50 = load %struct.dns_name*, %struct.dns_name** %49, align 8, !tbaa !100
  %51 = icmp eq %struct.dns_name* %50, %1
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2484, i32 noundef 2, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i64 0, i64 0)) #20
  unreachable

53:                                               ; preds = %47
  %54 = load %struct.dns_name*, %struct.dns_name** %24, align 8, !tbaa !103
  store %struct.dns_name* %54, %struct.dns_name** %49, align 8, !tbaa !100
  br label %55

55:                                               ; preds = %53, %44
  %56 = zext i32 %2 to i64
  %57 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %56, i32 0
  %58 = bitcast %struct.anon.0* %23 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %58, i8 -1, i64 16, i1 false)
  %59 = load %struct.dns_name*, %struct.dns_name** %57, align 8, !tbaa !100
  %60 = icmp eq %struct.dns_name* %59, %1
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2484, i32 noundef 2, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i64 0, i64 0)) #20
  unreachable

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %56, i32 1
  %64 = load %struct.dns_name*, %struct.dns_name** %63, align 8, !tbaa !101
  %65 = icmp eq %struct.dns_name* %64, %1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2484, i32 noundef 2, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i64 0, i64 0)) #20
  unreachable

67:                                               ; preds = %62
  %68 = zext i32 %3 to i64
  %69 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %68, i32 1
  %70 = load %struct.dns_name*, %struct.dns_name** %69, align 8, !tbaa !101
  %71 = icmp eq %struct.dns_name* %70, null
  %72 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %68, i32 0
  %73 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %70, i64 0, i32 7, i32 1
  %74 = select i1 %71, %struct.dns_name** %72, %struct.dns_name** %73
  store %struct.dns_name* %1, %struct.dns_name** %74, align 8, !tbaa !5
  %75 = load %struct.dns_name*, %struct.dns_name** %69, align 8, !tbaa !101
  store %struct.dns_name* %75, %struct.dns_name** %41, align 8, !tbaa !102
  store %struct.dns_name* null, %struct.dns_name** %24, align 8, !tbaa !103
  store %struct.dns_name* %1, %struct.dns_name** %69, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_addname(%struct.dns_message* noundef %0, %struct.dns_name* noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.dns_message* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2491, i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %8 = load i16, i16* %7, align 4
  %9 = and i16 %8, 3
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2492, i32 noundef 0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %6
  %13 = icmp eq %struct.dns_name* %1, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2493, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %12
  %16 = icmp ult i32 %2, 4
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2494, i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %15
  %19 = zext i32 %2 to i64
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %19, i32 1
  %21 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !101
  %22 = icmp eq %struct.dns_name* %21, null
  %23 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %19, i32 0
  %24 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %21, i64 0, i32 7, i32 1
  %25 = select i1 %22, %struct.dns_name** %23, %struct.dns_name** %24
  store %struct.dns_name* %1, %struct.dns_name** %25, align 8, !tbaa !5
  %26 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %1, i64 0, i32 7, i32 0
  store %struct.dns_name* %26, %struct.dns_name** %27, align 8, !tbaa !102
  %28 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %1, i64 0, i32 7, i32 1
  store %struct.dns_name* null, %struct.dns_name** %28, align 8, !tbaa !103
  store %struct.dns_name* %1, %struct.dns_name** %20, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_removename(%struct.dns_message* noundef %0, %struct.dns_name* noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.dns_message* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2502, i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %8 = load i16, i16* %7, align 4
  %9 = and i16 %8, 3
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2503, i32 noundef 0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %6
  %13 = icmp eq %struct.dns_name* %1, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2504, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %12
  %16 = icmp ult i32 %2, 4
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2505, i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %1, i64 0, i32 7
  %20 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %1, i64 0, i32 7, i32 1
  %21 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !103
  %22 = icmp eq %struct.dns_name* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i64 0, i32 0
  %25 = load %struct.dns_name*, %struct.dns_name** %24, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %21, i64 0, i32 7, i32 0
  store %struct.dns_name* %25, %struct.dns_name** %26, align 8, !tbaa !102
  br label %36

27:                                               ; preds = %18
  %28 = zext i32 %2 to i64
  %29 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %28, i32 1
  %30 = load %struct.dns_name*, %struct.dns_name** %29, align 8, !tbaa !101
  %31 = icmp eq %struct.dns_name* %30, %1
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2507, i32 noundef 2, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0)) #20
  unreachable

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i64 0, i32 0
  %35 = load %struct.dns_name*, %struct.dns_name** %34, align 8, !tbaa !102
  store %struct.dns_name* %35, %struct.dns_name** %29, align 8, !tbaa !101
  br label %36

36:                                               ; preds = %33, %23
  %37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i64 0, i32 0
  %38 = load %struct.dns_name*, %struct.dns_name** %37, align 8, !tbaa !102
  %39 = icmp eq %struct.dns_name* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !103
  %42 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %38, i64 0, i32 7, i32 1
  store %struct.dns_name* %41, %struct.dns_name** %42, align 8, !tbaa !103
  br label %51

43:                                               ; preds = %36
  %44 = zext i32 %2 to i64
  %45 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %44, i32 0
  %46 = load %struct.dns_name*, %struct.dns_name** %45, align 8, !tbaa !100
  %47 = icmp eq %struct.dns_name* %46, %1
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2507, i32 noundef 2, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0)) #20
  unreachable

49:                                               ; preds = %43
  %50 = load %struct.dns_name*, %struct.dns_name** %20, align 8, !tbaa !103
  store %struct.dns_name* %50, %struct.dns_name** %45, align 8, !tbaa !100
  br label %51

51:                                               ; preds = %49, %40
  %52 = zext i32 %2 to i64
  %53 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %52, i32 0
  %54 = bitcast %struct.anon.0* %19 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %54, i8 -1, i64 16, i1 false)
  %55 = load %struct.dns_name*, %struct.dns_name** %53, align 8, !tbaa !100
  %56 = icmp eq %struct.dns_name* %55, %1
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2507, i32 noundef 2, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #20
  unreachable

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %52, i32 1
  %60 = load %struct.dns_name*, %struct.dns_name** %59, align 8, !tbaa !101
  %61 = icmp eq %struct.dns_name* %60, %1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2507, i32 noundef 2, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0)) #20
  unreachable

63:                                               ; preds = %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_gettempname(%struct.dns_message* noundef readonly %0, %struct.dns_name** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2514, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_name** %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_name*, %struct.dns_name** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_name* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2515, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 23
  %17 = load %struct.isc_mempool*, %struct.isc_mempool** %16, align 8, !tbaa !162
  %18 = tail call noalias i8* @isc__mempool_get(%struct.isc_mempool* noundef %17) #21
  %19 = bitcast i8* %18 to %struct.dns_fixedname*
  %20 = tail call %struct.dns_name* @dns_fixedname_initname(%struct.dns_fixedname* noundef %19) #21
  store %struct.dns_name* %20, %struct.dns_name** %1, align 8, !tbaa !5
  ret void
}

declare noalias i8* @isc__mempool_get(%struct.isc_mempool* noundef) local_unnamed_addr #3

declare %struct.dns_name* @dns_fixedname_initname(%struct.dns_fixedname* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_gettemprdata(%struct.dns_message* noundef %0, %struct.dns_rdata** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2523, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_rdata** %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_rdata*, %struct.dns_rdata** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_rdata* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2524, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  %16 = tail call fastcc %struct.dns_rdata* @newrdata(%struct.dns_message* noundef nonnull %0)
  store %struct.dns_rdata* %16, %struct.dns_rdata** %1, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dns_rdata* @newrdata(%struct.dns_message* nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 30, i32 0
  %3 = load %struct.dns_rdata*, %struct.dns_rdata** %2, align 8, !tbaa !42
  %4 = icmp eq %struct.dns_rdata* %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %3, i64 0, i32 5
  %7 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %3, i64 0, i32 5, i32 1
  %8 = load %struct.dns_rdata*, %struct.dns_rdata** %7, align 8, !tbaa !43
  %9 = icmp eq %struct.dns_rdata* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i64 0, i32 0
  %12 = load %struct.dns_rdata*, %struct.dns_rdata** %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %8, i64 0, i32 5, i32 0
  store %struct.dns_rdata* %12, %struct.dns_rdata** %13, align 8, !tbaa !45
  br label %22

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 30, i32 1
  %16 = load %struct.dns_rdata*, %struct.dns_rdata** %15, align 8, !tbaa !46
  %17 = icmp eq %struct.dns_rdata* %16, %3
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.174, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i64 0, i32 0
  %21 = load %struct.dns_rdata*, %struct.dns_rdata** %20, align 8, !tbaa !45
  store %struct.dns_rdata* %21, %struct.dns_rdata** %15, align 8, !tbaa !46
  br label %22

22:                                               ; preds = %19, %10
  %23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i64 0, i32 0
  %24 = load %struct.dns_rdata*, %struct.dns_rdata** %23, align 8, !tbaa !45
  %25 = icmp eq %struct.dns_rdata* %24, null
  %26 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %24, i64 0, i32 5, i32 1
  %27 = select i1 %25, %struct.dns_rdata** %2, %struct.dns_rdata** %26
  store %struct.dns_rdata* %8, %struct.dns_rdata** %27, align 8, !tbaa !5
  %28 = bitcast %struct.anon.2* %6 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %28, i8 -1, i64 16, i1 false)
  %29 = load %struct.dns_rdata*, %struct.dns_rdata** %2, align 8, !tbaa !42
  %30 = icmp eq %struct.dns_rdata* %29, %3
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.176, i64 0, i64 0)) #20
  unreachable

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 30, i32 1
  %34 = load %struct.dns_rdata*, %struct.dns_rdata** %33, align 8, !tbaa !46
  %35 = icmp eq %struct.dns_rdata* %34, %3
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i32 noundef 2, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.177, i64 0, i64 0)) #20
  unreachable

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 27, i32 1
  %39 = load %struct.dns_msgblock*, %struct.dns_msgblock** %38, align 8, !tbaa !62
  %40 = tail call fastcc i8* @msgblock_internalget(%struct.dns_msgblock* noundef %39, i32 noundef 40)
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %44 = load %struct.isc_mem*, %struct.isc_mem** %43, align 8, !tbaa !63
  %45 = tail call fastcc %struct.dns_msgblock* @msgblock_allocate(%struct.isc_mem* noundef %44, i32 noundef 40, i32 noundef 8)
  %46 = load %struct.dns_msgblock*, %struct.dns_msgblock** %38, align 8, !tbaa !62
  %47 = icmp eq %struct.dns_msgblock* %46, null
  %48 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 27, i32 0
  %49 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %46, i64 0, i32 2, i32 1
  %50 = select i1 %47, %struct.dns_msgblock** %48, %struct.dns_msgblock** %49
  store %struct.dns_msgblock* %45, %struct.dns_msgblock** %50, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %45, i64 0, i32 2, i32 0
  store %struct.dns_msgblock* %46, %struct.dns_msgblock** %51, align 8, !tbaa !61
  %52 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %45, i64 0, i32 2, i32 1
  store %struct.dns_msgblock* null, %struct.dns_msgblock** %52, align 8, !tbaa !59
  store %struct.dns_msgblock* %45, %struct.dns_msgblock** %38, align 8, !tbaa !62
  %53 = tail call fastcc i8* @msgblock_internalget(%struct.dns_msgblock* noundef %45, i32 noundef 40)
  br label %54

54:                                               ; preds = %42, %37
  %55 = phi i8* [ %53, %42 ], [ %40, %37 ]
  %56 = bitcast i8* %55 to %struct.dns_rdata*
  tail call void @dns_rdata_init(%struct.dns_rdata* noundef %56) #21
  br label %57

57:                                               ; preds = %32, %54
  %58 = phi %struct.dns_rdata* [ %56, %54 ], [ %3, %32 ]
  ret %struct.dns_rdata* %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_gettemprdataset(%struct.dns_message* noundef readonly %0, %struct.dns_rdataset** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2531, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_rdataset** %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_rdataset*, %struct.dns_rdataset** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_rdataset* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2532, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 24
  %17 = load %struct.isc_mempool*, %struct.isc_mempool** %16, align 8, !tbaa !105
  %18 = tail call noalias i8* @isc__mempool_get(%struct.isc_mempool* noundef %17) #21
  %19 = bitcast i8* %18 to %struct.dns_rdataset*
  %20 = bitcast %struct.dns_rdataset** %1 to i8**
  store i8* %18, i8** %20, align 8, !tbaa !5
  tail call void @dns_rdataset_init(%struct.dns_rdataset* noundef %19) #21
  ret void
}

declare void @dns_rdataset_init(%struct.dns_rdataset* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_gettemprdatalist(%struct.dns_message* noundef %0, %struct.dns_rdatalist** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2540, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_rdatalist** %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_rdatalist* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2541, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  %16 = tail call fastcc %struct.dns_rdatalist* @newrdatalist(%struct.dns_message* noundef nonnull %0)
  store %struct.dns_rdatalist* %16, %struct.dns_rdatalist** %1, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dns_rdatalist* @newrdatalist(%struct.dns_message* nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 31, i32 0
  %3 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %2, align 8, !tbaa !50
  %4 = icmp eq %struct.dns_rdatalist* %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %3, i64 0, i32 5
  %7 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %3, i64 0, i32 5, i32 1
  %8 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %7, align 8, !tbaa !51
  %9 = icmp eq %struct.dns_rdatalist* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %6, i64 0, i32 0
  %12 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %8, i64 0, i32 5, i32 0
  store %struct.dns_rdatalist* %12, %struct.dns_rdatalist** %13, align 8, !tbaa !53
  br label %22

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 31, i32 1
  %16 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %15, align 8, !tbaa !54
  %17 = icmp eq %struct.dns_rdatalist* %16, %3
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.178, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %6, i64 0, i32 0
  %21 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %20, align 8, !tbaa !53
  store %struct.dns_rdatalist* %21, %struct.dns_rdatalist** %15, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %19, %10
  %23 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %6, i64 0, i32 0
  %24 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %23, align 8, !tbaa !53
  %25 = icmp eq %struct.dns_rdatalist* %24, null
  %26 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %24, i64 0, i32 5, i32 1
  %27 = select i1 %25, %struct.dns_rdatalist** %2, %struct.dns_rdatalist** %26
  store %struct.dns_rdatalist* %8, %struct.dns_rdatalist** %27, align 8, !tbaa !5
  %28 = bitcast %struct.anon.9* %6 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %28, i8 -1, i64 16, i1 false)
  %29 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %2, align 8, !tbaa !50
  %30 = icmp eq %struct.dns_rdatalist* %29, %3
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.180, i64 0, i64 0)) #20
  unreachable

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 31, i32 1
  %34 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %33, align 8, !tbaa !54
  %35 = icmp eq %struct.dns_rdatalist* %34, %3
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i32 noundef 2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.181, i64 0, i64 0)) #20
  unreachable

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 28, i32 1
  %39 = load %struct.dns_msgblock*, %struct.dns_msgblock** %38, align 8, !tbaa !66
  %40 = tail call fastcc i8* @msgblock_internalget(%struct.dns_msgblock* noundef %39, i32 noundef 80)
  %41 = bitcast i8* %40 to %struct.dns_rdatalist*
  %42 = icmp eq i8* %40, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %45 = load %struct.isc_mem*, %struct.isc_mem** %44, align 8, !tbaa !63
  %46 = tail call fastcc %struct.dns_msgblock* @msgblock_allocate(%struct.isc_mem* noundef %45, i32 noundef 80, i32 noundef 8)
  %47 = load %struct.dns_msgblock*, %struct.dns_msgblock** %38, align 8, !tbaa !66
  %48 = icmp eq %struct.dns_msgblock* %47, null
  %49 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 28, i32 0
  %50 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %47, i64 0, i32 2, i32 1
  %51 = select i1 %48, %struct.dns_msgblock** %49, %struct.dns_msgblock** %50
  store %struct.dns_msgblock* %46, %struct.dns_msgblock** %51, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %46, i64 0, i32 2, i32 0
  store %struct.dns_msgblock* %47, %struct.dns_msgblock** %52, align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %46, i64 0, i32 2, i32 1
  store %struct.dns_msgblock* null, %struct.dns_msgblock** %53, align 8, !tbaa !59
  store %struct.dns_msgblock* %46, %struct.dns_msgblock** %38, align 8, !tbaa !66
  %54 = tail call fastcc i8* @msgblock_internalget(%struct.dns_msgblock* noundef %46, i32 noundef 80)
  %55 = bitcast i8* %54 to %struct.dns_rdatalist*
  br label %56

56:                                               ; preds = %32, %37, %43
  %57 = phi %struct.dns_rdatalist* [ %55, %43 ], [ %41, %37 ], [ %3, %32 ]
  tail call void @dns_rdatalist_init(%struct.dns_rdatalist* noundef %57) #21
  ret %struct.dns_rdatalist* %57
}

declare zeroext i1 @dns_name_dynamic(%struct.dns_name* noundef) local_unnamed_addr #3

declare void @dns_name_free(%struct.dns_name* noundef, %struct.isc_mem* noundef) local_unnamed_addr #3

declare void @isc__mempool_put(%struct.isc_mempool* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_puttemprdata(%struct.dns_message* noundef %0, %struct.dns_rdata** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2576, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_rdata** %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_rdata*, %struct.dns_rdata** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_rdata* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2577, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  tail call fastcc void @releaserdata(%struct.dns_message* noundef nonnull %0, %struct.dns_rdata* noundef nonnull %12)
  store %struct.dns_rdata* null, %struct.dns_rdata** %1, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc void @releaserdata(%struct.dns_message* nocapture noundef %0, %struct.dns_rdata* noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 30, i32 0
  %4 = load %struct.dns_rdata*, %struct.dns_rdata** %3, align 8, !tbaa !42
  %5 = icmp eq %struct.dns_rdata* %4, null
  %6 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 30, i32 1
  %7 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %4, i64 0, i32 5, i32 0
  %8 = select i1 %5, %struct.dns_rdata** %6, %struct.dns_rdata** %7
  store %struct.dns_rdata* %1, %struct.dns_rdata** %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %1, i64 0, i32 5, i32 0
  store %struct.dns_rdata* null, %struct.dns_rdata** %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %1, i64 0, i32 5, i32 1
  store %struct.dns_rdata* %4, %struct.dns_rdata** %10, align 8, !tbaa !43
  store %struct.dns_rdata* %1, %struct.dns_rdata** %3, align 8, !tbaa !42
  ret void
}

declare zeroext i1 @dns_rdataset_isassociated(%struct.dns_rdataset* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_puttemprdatalist(%struct.dns_message* noundef %0, %struct.dns_rdatalist** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2595, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_rdatalist** %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_rdatalist* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2596, i32 noundef 0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  tail call fastcc void @releaserdatalist(%struct.dns_message* noundef nonnull %0, %struct.dns_rdatalist* noundef nonnull %12)
  store %struct.dns_rdatalist* null, %struct.dns_rdatalist** %1, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc void @releaserdatalist(%struct.dns_message* nocapture noundef %0, %struct.dns_rdatalist* noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 31, i32 0
  %4 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %3, align 8, !tbaa !50
  %5 = icmp eq %struct.dns_rdatalist* %4, null
  %6 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 31, i32 1
  %7 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %4, i64 0, i32 5, i32 0
  %8 = select i1 %5, %struct.dns_rdatalist** %6, %struct.dns_rdatalist** %7
  store %struct.dns_rdatalist* %1, %struct.dns_rdatalist** %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %1, i64 0, i32 5, i32 0
  store %struct.dns_rdatalist* null, %struct.dns_rdatalist** %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %1, i64 0, i32 5, i32 1
  store %struct.dns_rdatalist* %4, %struct.dns_rdatalist** %10, align 8, !tbaa !51
  store %struct.dns_rdatalist* %1, %struct.dns_rdatalist** %3, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_peekheader(%struct.isc_buffer* noundef readonly %0, i16* noundef writeonly %1, i32* noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.isc_region, align 8
  %5 = alloca %struct.isc_buffer, align 8
  %6 = bitcast %struct.isc_region* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #21
  %7 = bitcast %struct.isc_buffer* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #21
  %8 = icmp eq %struct.isc_buffer* %0, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2610, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0)) #20
  unreachable

10:                                               ; preds = %3
  %11 = bitcast %struct.isc_buffer* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %7, i8* noundef nonnull align 8 dereferenceable(64) %11, i64 64, i1 false), !tbaa.struct !85
  call fastcc void @isc_buffer_remainingregion(%struct.isc_buffer* noundef nonnull %5, %struct.isc_region* noundef nonnull %4)
  %12 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %4, i64 0, i32 1
  %13 = load i32, i32* %12, align 8, !tbaa !89
  %14 = icmp ult i32 %13, 12
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %5)
  %17 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %5)
  %18 = icmp eq i32* %2, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = and i16 %17, -28688
  %21 = zext i16 %20 to i32
  store i32 %21, i32* %2, align 4, !tbaa !10
  br label %22

22:                                               ; preds = %19, %15
  %23 = icmp eq i16* %1, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  store i16 %16, i16* %1, align 2, !tbaa !13
  br label %25

25:                                               ; preds = %22, %24, %10
  %26 = phi i32 [ 24, %10 ], [ 0, %24 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #21
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_reply(%struct.dns_message* noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2634, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 4, !tbaa !93
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2635, i32 noundef 0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %17 = load i16, i16* %16, align 4
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %74, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 5
  %22 = load i16, i16* %21, align 2, !tbaa !91
  switch i16 %22, label %23 [
    i16 0, label %24
    i16 4, label %24
  ]

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %20, %20, %23
  %25 = phi i1 [ false, %23 ], [ %1, %20 ], [ %1, %20 ]
  %26 = icmp eq i16 %22, 5
  %27 = xor i1 %25, true
  %28 = or i1 %26, %27
  %29 = zext i1 %26 to i32
  br i1 %28, label %33, label %30

30:                                               ; preds = %24
  %31 = and i16 %17, 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %24, %30
  %34 = phi i32 [ %29, %24 ], [ 1, %30 ]
  %35 = and i16 %17, -4
  %36 = or i16 %35, 2
  store i16 %36, i16* %16, align 4
  tail call fastcc void @msgresetnames(%struct.dns_message* noundef nonnull %0, i32 noundef %34)
  tail call fastcc void @msgresetopt(%struct.dns_message* noundef nonnull %0)
  tail call fastcc void @msgresetsigs(%struct.dns_message* noundef nonnull %0, i1 noundef zeroext true)
  tail call fastcc void @msginitprivate(%struct.dns_message* noundef nonnull %0)
  %37 = load i16, i16* %21, align 2, !tbaa !91
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4, !tbaa !93
  %41 = and i32 %40, 272
  %42 = or i32 %41, 32768
  br label %43

43:                                               ; preds = %33, %39
  %44 = phi i32 [ %42, %39 ], [ 32768, %33 ]
  store i32 %44, i32* %10, align 4, !tbaa !93
  %45 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %46 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %45, align 8, !tbaa !71
  %47 = icmp eq %struct.dns_tsigkey* %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 32
  %50 = load i16, i16* %49, align 8, !tbaa !164
  %51 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 33
  store i16 %50, i16* %51, align 2, !tbaa !165
  store i16 0, i16* %49, align 8, !tbaa !164
  %52 = icmp eq i16 %50, 18
  %53 = select i1 %52, i32 6, i32 0
  %54 = tail call fastcc i32 @spacefortsig(%struct.dns_tsigkey* noundef nonnull %46, i32 noundef %53)
  %55 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 16
  store i32 %54, i32* %55, align 4, !tbaa !152
  %56 = tail call i32 @dns_message_renderreserve(%struct.dns_message* noundef nonnull %0, i32 noundef %54)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  store i32 0, i32* %55, align 4, !tbaa !152
  br label %74

59:                                               ; preds = %48, %43
  %60 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 0
  %61 = load i8*, i8** %60, align 8, !tbaa !34
  %62 = icmp eq i8* %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 0
  store i8* %61, i8** %64, align 8, !tbaa !32
  %65 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 1
  %66 = load i32, i32* %65, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 1
  store i32 %66, i32* %67, align 8, !tbaa !33
  %68 = load i16, i16* %16, align 4
  %69 = lshr i16 %68, 1
  %70 = and i16 %69, 128
  %71 = and i16 %68, -129
  %72 = or i16 %70, %71
  store i16 %72, i16* %16, align 4
  store i8* null, i8** %60, align 8, !tbaa !34
  store i32 0, i32* %65, align 8, !tbaa !35
  %73 = and i16 %72, -257
  store i16 %73, i16* %16, align 4
  br label %74

74:                                               ; preds = %58, %59, %63, %30, %15
  %75 = phi i32 [ %56, %58 ], [ 223, %15 ], [ 223, %30 ], [ 0, %63 ], [ 0, %59 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @msgresetopt(%struct.dns_message* noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 10
  %3 = load %struct.dns_rdataset*, %struct.dns_rdataset** %2, align 8, !tbaa !113
  %4 = icmp eq %struct.dns_rdataset* %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 15
  %7 = load i32, i32* %6, align 8, !tbaa !149
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @dns_message_renderrelease(%struct.dns_message* noundef %0, i32 noundef %7)
  store i32 0, i32* %6, align 8, !tbaa !149
  br label %10

10:                                               ; preds = %9, %5
  %11 = load %struct.dns_rdataset*, %struct.dns_rdataset** %2, align 8, !tbaa !113
  %12 = tail call zeroext i1 @dns_rdataset_isassociated(%struct.dns_rdataset* noundef %11) #21
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 474, i32 noundef 2, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.232, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %10
  %15 = load %struct.dns_rdataset*, %struct.dns_rdataset** %2, align 8, !tbaa !113
  tail call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef %15) #21
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 24
  %17 = load %struct.isc_mempool*, %struct.isc_mempool** %16, align 8, !tbaa !105
  %18 = bitcast %struct.dns_rdataset** %2 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !113
  tail call void @isc__mempool_put(%struct.isc_mempool* noundef %17, i8* noundef %19) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %2, align 8, !tbaa !113
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %21 = load i16, i16* %20, align 4
  %22 = and i16 %21, -1537
  store i16 %22, i16* %20, align 4
  br label %23

23:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @msgresetsigs(%struct.dns_message* noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 16
  %4 = load i32, i32* %3, align 4, !tbaa !152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @dns_message_renderrelease(%struct.dns_message* noundef %0, i32 noundef %4)
  store i32 0, i32* %3, align 4, !tbaa !152
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 12
  %9 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !127
  %10 = icmp eq %struct.dns_rdataset* %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i1 @dns_rdataset_isassociated(%struct.dns_rdataset* noundef nonnull %9) #21
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 490, i32 noundef 2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.233, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 23
  %16 = load %struct.isc_mempool*, %struct.isc_mempool** %15, align 8, !tbaa !162
  %17 = icmp eq %struct.isc_mempool* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 491, i32 noundef 2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.234, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %14
  br i1 %1, label %20, label %27

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 35
  %22 = load %struct.dns_rdataset*, %struct.dns_rdataset** %21, align 8, !tbaa !36
  %23 = icmp eq %struct.dns_rdataset* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 493, i32 noundef 2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0)) #20
  unreachable

25:                                               ; preds = %20
  %26 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !127
  store %struct.dns_rdataset* %26, %struct.dns_rdataset** %21, align 8, !tbaa !36
  br label %40

27:                                               ; preds = %19
  %28 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !127
  tail call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef %28) #21
  %29 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 24
  %30 = load %struct.isc_mempool*, %struct.isc_mempool** %29, align 8, !tbaa !105
  %31 = bitcast %struct.dns_rdataset** %8 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !127
  tail call void @isc__mempool_put(%struct.isc_mempool* noundef %30, i8* noundef %32) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !127
  %33 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 35
  %34 = load %struct.dns_rdataset*, %struct.dns_rdataset** %33, align 8, !tbaa !36
  %35 = icmp eq %struct.dns_rdataset* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  tail call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef nonnull %34) #21
  %37 = load %struct.isc_mempool*, %struct.isc_mempool** %29, align 8, !tbaa !105
  %38 = bitcast %struct.dns_rdataset** %33 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !36
  tail call void @isc__mempool_put(%struct.isc_mempool* noundef %37, i8* noundef %39) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %33, align 8, !tbaa !36
  br label %40

40:                                               ; preds = %27, %36, %25
  %41 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 34
  tail call void @dns_message_puttempname(%struct.dns_message* noundef %0, %struct.dns_name** noundef nonnull %41)
  br label %52

42:                                               ; preds = %7
  %43 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 35
  %44 = load %struct.dns_rdataset*, %struct.dns_rdataset** %43, align 8, !tbaa !36
  %45 = icmp eq %struct.dns_rdataset* %44, null
  %46 = or i1 %45, %1
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  tail call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef nonnull %44) #21
  %48 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 24
  %49 = load %struct.isc_mempool*, %struct.isc_mempool** %48, align 8, !tbaa !105
  %50 = bitcast %struct.dns_rdataset** %43 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !36
  tail call void @isc__mempool_put(%struct.isc_mempool* noundef %49, i8* noundef %51) #21
  br label %52

52:                                               ; preds = %40, %47
  %53 = phi %struct.dns_rdataset** [ %43, %47 ], [ %8, %40 ]
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %53, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %52, %42
  %55 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 11
  %56 = load %struct.dns_rdataset*, %struct.dns_rdataset** %55, align 8, !tbaa !124
  %57 = icmp eq %struct.dns_rdataset* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = tail call zeroext i1 @dns_rdataset_isassociated(%struct.dns_rdataset* noundef nonnull %56) #21
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 511, i32 noundef 2, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.235, i64 0, i64 0)) #20
  unreachable

61:                                               ; preds = %58
  %62 = load %struct.dns_rdataset*, %struct.dns_rdataset** %55, align 8, !tbaa !124
  tail call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef %62) #21
  %63 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 24
  %64 = load %struct.isc_mempool*, %struct.isc_mempool** %63, align 8, !tbaa !105
  %65 = bitcast %struct.dns_rdataset** %55 to i8**
  %66 = load i8*, i8** %65, align 8, !tbaa !124
  tail call void @isc__mempool_put(%struct.isc_mempool* noundef %64, i8* noundef %66) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %55, align 8, !tbaa !124
  br label %67

67:                                               ; preds = %61, %54
  %68 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 40
  %69 = load %struct.dns_name*, %struct.dns_name** %68, align 8, !tbaa !125
  %70 = icmp eq %struct.dns_name* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void @dns_message_puttempname(%struct.dns_message* noundef %0, %struct.dns_name** noundef nonnull %68)
  br label %72

72:                                               ; preds = %71, %67
  ret void
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define internal fastcc void @msginitprivate(%struct.dns_message* nocapture noundef writeonly %0) unnamed_addr #10 {
  %2 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 0
  %3 = bitcast i32* %2 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false), !tbaa !10
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 9, i64 %5
  store %struct.dns_name* null, %struct.dns_name** %6, align 8, !tbaa !5
  %7 = add nuw nsw i64 %5, 1
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %4, !llvm.loop !166

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 10
  %11 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 40
  store %struct.dns_name* null, %struct.dns_name** %11, align 8, !tbaa !125
  %12 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 34
  store %struct.dns_name* null, %struct.dns_name** %12, align 8, !tbaa !128
  %13 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 13
  %14 = bitcast %struct.dns_rdataset** %10 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store i32 -1, i32* %13, align 8, !tbaa !94
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 15
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 19
  store i32 0, i32* %16, align 8, !tbaa !150
  %17 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 20
  store %struct.isc_buffer* null, %struct.isc_buffer** %17, align 8, !tbaa !130
  %18 = bitcast i32* %15 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(14) %18, i8 0, i64 14, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @spacefortsig(%struct.dns_tsigkey* nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.isc_region, align 8
  %4 = alloca %struct.isc_region, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.isc_region* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #21
  %7 = bitcast %struct.isc_region* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #21
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #21
  %9 = getelementptr inbounds %struct.dns_tsigkey, %struct.dns_tsigkey* %0, i64 0, i32 4
  %10 = load %struct.dns_name*, %struct.dns_name** %9, align 8, !tbaa !167
  call fastcc void @dns_name_toregion(%struct.dns_name* noundef %10, %struct.isc_region* noundef nonnull %3)
  %11 = getelementptr inbounds %struct.dns_tsigkey, %struct.dns_tsigkey* %0, i64 0, i32 5
  %12 = load %struct.dns_name*, %struct.dns_name** %11, align 8, !tbaa !170
  call fastcc void @dns_name_toregion(%struct.dns_name* noundef %12, %struct.isc_region* noundef nonnull %4)
  %13 = getelementptr inbounds %struct.dns_tsigkey, %struct.dns_tsigkey* %0, i64 0, i32 2
  %14 = load %struct.dst_key*, %struct.dst_key** %13, align 8, !tbaa !171
  %15 = icmp eq %struct.dst_key* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4, !tbaa !10
  br label %21

17:                                               ; preds = %2
  %18 = call i32 @dst_key_sigsize(%struct.dst_key* noundef nonnull %14, i32* noundef nonnull %5) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %5, align 4, !tbaa !10
  br label %21

21:                                               ; preds = %17, %20, %16
  %22 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %3, i64 0, i32 1
  %23 = load i32, i32* %22, align 8, !tbaa !89
  %24 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %4, i64 0, i32 1
  %25 = load i32, i32* %24, align 8, !tbaa !89
  %26 = load i32, i32* %5, align 4, !tbaa !10
  %27 = add i32 %1, 26
  %28 = add i32 %27, %23
  %29 = add i32 %28, %25
  %30 = add i32 %29, %26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #21
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dns_rdataset* @dns_message_getopt(%struct.dns_message* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1297303360
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2706, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 10
  %10 = load %struct.dns_rdataset*, %struct.dns_rdataset** %9, align 8, !tbaa !113
  ret %struct.dns_rdataset* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_setopt(%struct.dns_message* noundef %0, %struct.dns_rdataset* noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dns_rdataset*, align 8
  %4 = alloca %struct.dns_rdata, align 8
  store %struct.dns_rdataset* %1, %struct.dns_rdataset** %3, align 8, !tbaa !5
  %5 = bitcast %struct.dns_rdata* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %6 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %4, i64 0, i32 5, i32 0
  %7 = icmp eq %struct.dns_message* %0, null
  %8 = bitcast %struct.dns_rdata** %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8 -1, i64 16, i1 false)
  br i1 %7, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !40
  %12 = icmp eq i32 %11, 1297303360
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2734, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %1, i64 0, i32 4
  %16 = load i16, i16* %15, align 2, !tbaa !81
  %17 = icmp eq i16 %16, 41
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2735, i32 noundef 0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.52, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %21 = load i16, i16* %20, align 4
  %22 = and i16 %21, 3
  %23 = icmp eq i16 %22, 2
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2736, i32 noundef 0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #20
  unreachable

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 13
  %27 = load i32, i32* %26, align 8, !tbaa !94
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2737, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #20
  unreachable

30:                                               ; preds = %25
  tail call fastcc void @msgresetopt(%struct.dns_message* noundef nonnull %0)
  %31 = load %struct.dns_rdataset*, %struct.dns_rdataset** %3, align 8, !tbaa !5
  %32 = tail call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef %31) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.dns_rdataset*, %struct.dns_rdataset** %3, align 8, !tbaa !5
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef %35, %struct.dns_rdata* noundef nonnull %4) #21
  %36 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %4, i64 0, i32 1
  %37 = load i32, i32* %36, align 8, !tbaa !115
  %38 = add i32 %37, 11
  %39 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 15
  store i32 %38, i32* %39, align 8, !tbaa !149
  %40 = call i32 @dns_message_renderreserve(%struct.dns_message* noundef nonnull %0, i32 noundef %38)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 0, i32* %39, align 8, !tbaa !149
  br label %46

43:                                               ; preds = %34
  %44 = load %struct.dns_rdataset*, %struct.dns_rdataset** %3, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 10
  store %struct.dns_rdataset* %44, %struct.dns_rdataset** %45, align 8, !tbaa !113
  br label %49

46:                                               ; preds = %30, %42
  %47 = phi i32 [ %32, %30 ], [ %40, %42 ]
  %48 = load %struct.dns_rdataset*, %struct.dns_rdataset** %3, align 8, !tbaa !5
  call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef %48) #21
  call void @dns_message_puttemprdataset(%struct.dns_message* noundef nonnull %0, %struct.dns_rdataset** noundef nonnull %3)
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %47, %46 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #21
  ret i32 %50
}

declare i32 @dns_rdataset_first(%struct.dns_rdataset* noundef) local_unnamed_addr #3

declare void @dns_rdataset_current(%struct.dns_rdataset* noundef, %struct.dns_rdata* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dns_rdataset* @dns_message_gettsig(%struct.dns_message* noundef readonly %0, %struct.dns_name** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2769, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_name** %1, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_name*, %struct.dns_name** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_name* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2770, i32 noundef 0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.54, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 34
  %17 = load %struct.dns_name*, %struct.dns_name** %16, align 8, !tbaa !128
  store %struct.dns_name* %17, %struct.dns_name** %1, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %9, %15
  %19 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 12
  %20 = load %struct.dns_rdataset*, %struct.dns_rdataset** %19, align 8, !tbaa !127
  ret %struct.dns_rdataset* %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_settsigkey(%struct.dns_message* noundef %0, %struct.dns_tsigkey* noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2784, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_tsigkey* %1, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %13 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %12, align 8, !tbaa !71
  %14 = icmp eq %struct.dns_tsigkey* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 16
  %17 = load i32, i32* %16, align 4, !tbaa !152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @dns_message_renderrelease(%struct.dns_message* noundef nonnull %0, i32 noundef %17)
  store i32 0, i32* %16, align 4, !tbaa !152
  br label %20

20:                                               ; preds = %19, %15
  tail call void @dns_tsigkey_detach(%struct.dns_tsigkey** noundef nonnull %12) #21
  br label %21

21:                                               ; preds = %20, %11
  %22 = icmp eq %struct.dns_tsigkey* %1, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %9, %21
  %24 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %25 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %24, align 8, !tbaa !71
  %26 = icmp eq %struct.dns_tsigkey* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 41
  %29 = load %struct.dst_key*, %struct.dst_key** %28, align 8, !tbaa !148
  %30 = icmp eq %struct.dst_key* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %23
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2794, i32 noundef 0, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.55, i64 0, i64 0)) #20
  unreachable

32:                                               ; preds = %27
  tail call void @dns_tsigkey_attach(%struct.dns_tsigkey* noundef nonnull %1, %struct.dns_tsigkey** noundef nonnull %24) #21
  %33 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %34 = load i16, i16* %33, align 4
  %35 = and i16 %34, 3
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %24, align 8, !tbaa !71
  %39 = tail call fastcc i32 @spacefortsig(%struct.dns_tsigkey* noundef %38, i32 noundef 0)
  %40 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 16
  store i32 %39, i32* %40, align 4, !tbaa !152
  %41 = tail call i32 @dns_message_renderreserve(%struct.dns_message* noundef nonnull %0, i32 noundef %39)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @dns_tsigkey_detach(%struct.dns_tsigkey** noundef nonnull %24) #21
  store i32 0, i32* %40, align 4, !tbaa !152
  br label %44

44:                                               ; preds = %21, %37, %32, %43
  %45 = phi i32 [ %41, %43 ], [ 0, %32 ], [ 0, %37 ], [ 0, %21 ]
  ret i32 %45
}

declare void @dns_tsigkey_detach(%struct.dns_tsigkey** noundef) local_unnamed_addr #3

declare void @dns_tsigkey_attach(%struct.dns_tsigkey* noundef, %struct.dns_tsigkey** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dns_tsigkey* @dns_message_gettsigkey(%struct.dns_message* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1297303360
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2816, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %10 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %9, align 8, !tbaa !71
  ret %struct.dns_tsigkey* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_setquerytsig(%struct.dns_message* noundef %0, %struct.isc_buffer* noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dns_rdata*, align 8
  %4 = alloca %struct.dns_rdatalist*, align 8
  %5 = alloca %struct.dns_rdataset*, align 8
  %6 = alloca %struct.isc_buffer*, align 8
  %7 = alloca %struct.isc_region, align 8
  %8 = bitcast %struct.dns_rdata** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #21
  store %struct.dns_rdata* null, %struct.dns_rdata** %3, align 8, !tbaa !5
  %9 = bitcast %struct.dns_rdatalist** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #21
  store %struct.dns_rdatalist* null, %struct.dns_rdatalist** %4, align 8, !tbaa !5
  %10 = bitcast %struct.dns_rdataset** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %5, align 8, !tbaa !5
  %11 = bitcast %struct.isc_buffer** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #21
  store %struct.isc_buffer* null, %struct.isc_buffer** %6, align 8, !tbaa !5
  %12 = bitcast %struct.isc_region* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #21
  %13 = icmp eq %struct.dns_message* %0, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !40
  %17 = icmp eq i32 %16, 1297303360
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2829, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 35
  %21 = load %struct.dns_rdataset*, %struct.dns_rdataset** %20, align 8, !tbaa !36
  %22 = icmp eq %struct.dns_rdataset* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2830, i32 noundef 0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0)) #20
  unreachable

24:                                               ; preds = %19
  %25 = icmp eq %struct.isc_buffer* %1, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %24
  call void @dns_message_gettemprdata(%struct.dns_message* noundef nonnull %0, %struct.dns_rdata** noundef nonnull %3)
  call void @dns_message_gettemprdatalist(%struct.dns_message* noundef nonnull %0, %struct.dns_rdatalist** noundef nonnull %4)
  call void @dns_message_gettemprdataset(%struct.dns_message* noundef nonnull %0, %struct.dns_rdataset** noundef nonnull %5)
  call fastcc void @isc_buffer_usedregion(%struct.isc_buffer* noundef nonnull %1, %struct.isc_region* noundef nonnull %7)
  %27 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %28 = load %struct.isc_mem*, %struct.isc_mem** %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %7, i64 0, i32 1
  %30 = load i32, i32* %29, align 8, !tbaa !89
  call fastcc void @isc_buffer_allocate(%struct.isc_mem* noundef %28, %struct.isc_buffer** noundef nonnull %6, i32 noundef %30)
  %31 = load %struct.isc_buffer*, %struct.isc_buffer** %6, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %7, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !95
  %34 = load i32, i32* %29, align 8, !tbaa !89
  call fastcc void @isc_buffer_putmem(%struct.isc_buffer* noundef %31, i8* noundef %33, i32 noundef %34)
  %35 = load %struct.isc_buffer*, %struct.isc_buffer** %6, align 8, !tbaa !5
  call fastcc void @isc_buffer_usedregion(%struct.isc_buffer* noundef %35, %struct.isc_region* noundef nonnull %7)
  %36 = load %struct.dns_rdata*, %struct.dns_rdata** %3, align 8, !tbaa !5
  call void @dns_rdata_init(%struct.dns_rdata* noundef %36) #21
  %37 = load %struct.dns_rdata*, %struct.dns_rdata** %3, align 8, !tbaa !5
  call void @dns_rdata_fromregion(%struct.dns_rdata* noundef %37, i16 noundef zeroext 255, i16 noundef zeroext 250, %struct.isc_region* noundef nonnull %7) #21
  call void @dns_message_takebuffer(%struct.dns_message* noundef nonnull %0, %struct.isc_buffer** noundef nonnull %6)
  %38 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %4, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %38, i64 0, i32 4, i32 1
  %40 = load %struct.dns_rdata*, %struct.dns_rdata** %39, align 8, !tbaa !123
  %41 = icmp eq %struct.dns_rdata* %40, null
  %42 = load %struct.dns_rdata*, %struct.dns_rdata** %3, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %38, i64 0, i32 4, i32 0
  %44 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %40, i64 0, i32 5, i32 1
  %45 = select i1 %41, %struct.dns_rdata** %43, %struct.dns_rdata** %44
  store %struct.dns_rdata* %42, %struct.dns_rdata** %45, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %42, i64 0, i32 5, i32 0
  store %struct.dns_rdata* %40, %struct.dns_rdata** %46, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %42, i64 0, i32 5, i32 1
  store %struct.dns_rdata* null, %struct.dns_rdata** %47, align 8, !tbaa !43
  store %struct.dns_rdata* %42, %struct.dns_rdata** %39, align 8, !tbaa !123
  %48 = load %struct.dns_rdataset*, %struct.dns_rdataset** %5, align 8, !tbaa !5
  call void @dns_rdatalist_tordataset(%struct.dns_rdatalist* noundef %38, %struct.dns_rdataset* noundef %48) #21
  %49 = load %struct.dns_rdataset*, %struct.dns_rdataset** %5, align 8, !tbaa !5
  store %struct.dns_rdataset* %49, %struct.dns_rdataset** %20, align 8, !tbaa !36
  br label %50

50:                                               ; preds = %24, %26
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_putmem(%struct.isc_buffer* noalias noundef %0, i8* noalias nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq %struct.isc_buffer* %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40
  %8 = icmp eq i32 %7, 1114990113
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 971, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  %12 = load %struct.isc_mem*, %struct.isc_mem** %11, align 8, !tbaa !147
  %13 = icmp eq %struct.isc_mem* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @isc_buffer_reserve(%struct.isc_buffer* noundef nonnull %0, i32 noundef %2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 975, i32 noundef 0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 8, !tbaa !134
  %21 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %22 = load i32, i32* %21, align 4, !tbaa !87
  %23 = sub i32 %20, %22
  %24 = icmp ult i32 %23, %2
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 978, i32 noundef 0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.236, i64 0, i64 0)) #20
  unreachable

26:                                               ; preds = %18
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %30 = load i8*, i8** %29, align 8, !tbaa !88
  %31 = zext i32 %22 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %1, i64 %33, i1 false)
  %34 = load i32, i32* %21, align 4, !tbaa !87
  %35 = add i32 %34, %2
  store i32 %35, i32* %21, align 4, !tbaa !87
  br label %36

36:                                               ; preds = %28, %26
  ret void
}

declare void @dns_rdata_init(%struct.dns_rdata* noundef) local_unnamed_addr #3

declare void @dns_rdata_fromregion(%struct.dns_rdata* noundef, i16 noundef zeroext, i16 noundef zeroext, %struct.isc_region* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_takebuffer(%struct.dns_message* noundef %0, %struct.isc_buffer** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2969, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.isc_buffer** %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2970, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = load %struct.isc_buffer*, %struct.isc_buffer** %1, align 8, !tbaa !5
  %14 = icmp eq %struct.isc_buffer* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %13, i64 0, i32 0
  %17 = load i32, i32* %16, align 4, !tbaa !40
  %18 = icmp eq i32 %17, 1114990113
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2971, i32 noundef 0, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.59, i64 0, i64 0)) #20
  unreachable

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 26, i32 1
  %22 = load %struct.isc_buffer*, %struct.isc_buffer** %21, align 8, !tbaa !74
  %23 = icmp eq %struct.isc_buffer* %22, null
  %24 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 26, i32 0
  %25 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %22, i64 0, i32 8, i32 1
  %26 = select i1 %23, %struct.isc_buffer** %24, %struct.isc_buffer** %25
  store %struct.isc_buffer* %13, %struct.isc_buffer** %26, align 8, !tbaa !5
  %27 = load %struct.isc_buffer*, %struct.isc_buffer** %1, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %27, i64 0, i32 8, i32 0
  store %struct.isc_buffer* %22, %struct.isc_buffer** %28, align 8, !tbaa !28
  %29 = load %struct.isc_buffer*, %struct.isc_buffer** %1, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %29, i64 0, i32 8, i32 1
  store %struct.isc_buffer* null, %struct.isc_buffer** %30, align 8, !tbaa !31
  %31 = load %struct.isc_buffer*, %struct.isc_buffer** %1, align 8, !tbaa !5
  store %struct.isc_buffer* %31, %struct.isc_buffer** %21, align 8, !tbaa !74
  store %struct.isc_buffer* null, %struct.isc_buffer** %1, align 8, !tbaa !5
  ret void
}

declare void @dns_rdatalist_tordataset(%struct.dns_rdatalist* noundef, %struct.dns_rdataset* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_getquerytsig(%struct.dns_message* noundef readonly %0, %struct.isc_mem* noundef %1, %struct.isc_buffer** noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dns_rdata, align 8
  %5 = alloca %struct.isc_region, align 8
  %6 = bitcast %struct.dns_rdata* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  %7 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %4, i64 0, i32 5, i32 0
  %8 = bitcast %struct.isc_region* %5 to i8*
  %9 = bitcast %struct.dns_rdata** %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #21
  %10 = icmp eq %struct.dns_message* %0, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %13 = load i32, i32* %12, align 4, !tbaa !40
  %14 = icmp eq i32 %13, 1297303360
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2861, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

16:                                               ; preds = %11
  %17 = icmp eq %struct.isc_mem* %1, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2862, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %16
  %20 = icmp eq %struct.isc_buffer** %2, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = load %struct.isc_buffer*, %struct.isc_buffer** %2, align 8, !tbaa !5
  %23 = icmp eq %struct.isc_buffer* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %19
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2863, i32 noundef 0, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.57, i64 0, i64 0)) #20
  unreachable

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 12
  %27 = load %struct.dns_rdataset*, %struct.dns_rdataset** %26, align 8, !tbaa !127
  %28 = icmp eq %struct.dns_rdataset* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef nonnull %27) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.dns_rdataset*, %struct.dns_rdataset** %26, align 8, !tbaa !127
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef %33, %struct.dns_rdata* noundef nonnull %4) #21
  call void @dns_rdata_toregion(%struct.dns_rdata* noundef nonnull %4, %struct.isc_region* noundef nonnull %5) #21
  %34 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %5, i64 0, i32 1
  %35 = load i32, i32* %34, align 8, !tbaa !89
  call fastcc void @isc_buffer_allocate(%struct.isc_mem* noundef nonnull %1, %struct.isc_buffer** noundef nonnull %2, i32 noundef %35)
  %36 = load %struct.isc_buffer*, %struct.isc_buffer** %2, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %5, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8, !tbaa !95
  %39 = load i32, i32* %34, align 8, !tbaa !89
  call fastcc void @isc_buffer_putmem(%struct.isc_buffer* noundef %36, i8* noundef %38, i32 noundef %39)
  br label %40

40:                                               ; preds = %29, %25, %32
  %41 = phi i32 [ 0, %32 ], [ 0, %25 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #21
  ret i32 %41
}

declare void @dns_rdata_toregion(%struct.dns_rdata* noundef, %struct.isc_region* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dns_rdataset* @dns_message_getsig0(%struct.dns_message* noundef readonly %0, %struct.dns_name** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2887, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.dns_name** %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = load %struct.dns_name*, %struct.dns_name** %1, align 8, !tbaa !5
  %13 = icmp eq %struct.dns_name* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2888, i32 noundef 0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.54, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %11, %9
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 11
  %17 = load %struct.dns_rdataset*, %struct.dns_rdataset** %16, align 8, !tbaa !124
  %18 = icmp ne %struct.dns_rdataset* %17, null
  %19 = icmp ne %struct.dns_name** %1, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 40
  %23 = load %struct.dns_name*, %struct.dns_name** %22, align 8, !tbaa !125
  %24 = icmp eq %struct.dns_name* %23, null
  %25 = load %struct.dns_name*, %struct.dns_name** @dns_rootname, align 8
  %26 = select i1 %24, %struct.dns_name* %25, %struct.dns_name* %23
  store %struct.dns_name* %26, %struct.dns_name** %1, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.dns_rdataset*, %struct.dns_rdataset** %16, align 8, !tbaa !124
  ret %struct.dns_rdataset* %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_setsig0key(%struct.dns_message* noundef %0, %struct.dst_key* noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.isc_region, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.isc_region* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #21
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #21
  %7 = icmp eq %struct.dns_message* %0, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 1297303360
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2933, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %15 = load i16, i16* %14, align 4
  %16 = and i16 %15, 3
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2934, i32 noundef 0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 13
  %21 = load i32, i32* %20, align 8, !tbaa !94
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2935, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #20
  unreachable

24:                                               ; preds = %19
  %25 = icmp eq %struct.dst_key* %1, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 41
  %28 = load %struct.dst_key*, %struct.dst_key** %27, align 8, !tbaa !148
  %29 = icmp eq %struct.dst_key* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %32 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %31, align 8, !tbaa !71
  %33 = icmp eq %struct.dns_tsigkey* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %26
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2938, i32 noundef 0, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.58, i64 0, i64 0)) #20
  unreachable

35:                                               ; preds = %30
  %36 = tail call %struct.dns_name* @dst_key_name(%struct.dst_key* noundef nonnull %1) #21
  call fastcc void @dns_name_toregion(%struct.dns_name* noundef %36, %struct.isc_region* noundef nonnull %3)
  %37 = call i32 @dst_key_sigsize(%struct.dst_key* noundef nonnull %1, i32* noundef nonnull %4) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 16
  store i32 0, i32* %40, align 4, !tbaa !152
  br label %52

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %3, i64 0, i32 1
  %43 = load i32, i32* %42, align 8, !tbaa !89
  %44 = add i32 %43, 27
  %45 = load i32, i32* %4, align 4, !tbaa !10
  %46 = add i32 %44, %45
  %47 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 16
  store i32 %46, i32* %47, align 4, !tbaa !152
  %48 = call i32 @dns_message_renderreserve(%struct.dns_message* noundef nonnull %0, i32 noundef %46)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 0, i32* %47, align 4, !tbaa !152
  br label %52

51:                                               ; preds = %41
  store %struct.dst_key* %1, %struct.dst_key** %27, align 8, !tbaa !148
  br label %52

52:                                               ; preds = %24, %51, %50, %39
  %53 = phi i32 [ %37, %39 ], [ %48, %50 ], [ 0, %51 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #21
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dns_name_toregion(%struct.dns_name* noundef readonly %0, %struct.isc_region* noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq %struct.dns_name* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_name, %struct.dns_name* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1145983854
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.211, i64 0, i64 0), i32 noundef 705, i32 noundef 0, i8* noundef getelementptr inbounds ([118 x i8], [118 x i8]* @.str.212, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq %struct.isc_region* %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.211, i64 0, i64 0), i32 noundef 706, i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.207, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8, !tbaa !172
  %15 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %1, i64 0, i32 0
  store i8* %14, i8** %15, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 2
  %17 = load i32, i32* %16, align 8, !tbaa !173
  %18 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %1, i64 0, i32 1
  store i32 %17, i32* %18, align 8, !tbaa !89
  ret void
}

declare %struct.dns_name* @dst_key_name(%struct.dst_key* noundef) local_unnamed_addr #3

declare i32 @dst_key_sigsize(%struct.dst_key* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dst_key* @dns_message_getsig0key(%struct.dns_message* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1297303360
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2962, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 41
  %10 = load %struct.dst_key*, %struct.dst_key** %9, align 8, !tbaa !148
  ret %struct.dst_key* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_signer(%struct.dns_message* noundef %0, %struct.dns_name* noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.dns_rdata, align 8
  %4 = alloca %struct.isc_buffer*, align 8
  %5 = alloca %struct.dns_rdata_sig_t, align 8
  %6 = alloca %struct.dns_rdata_any_tsig, align 8
  %7 = bitcast %struct.dns_rdata* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %3, i64 0, i32 5, i32 0
  %9 = icmp eq %struct.dns_message* %0, null
  %10 = bitcast %struct.dns_rdata** %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %10, i8 -1, i64 16, i1 false)
  br i1 %9, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %13 = load i32, i32* %12, align 4, !tbaa !40
  %14 = icmp eq i32 %13, 1297303360
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2982, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

16:                                               ; preds = %11
  %17 = icmp eq %struct.dns_name* %1, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2983, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %21 = load i16, i16* %20, align 4
  %22 = and i16 %21, 3
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 2984, i32 noundef 0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0)) #20
  unreachable

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 12
  %27 = load %struct.dns_rdataset*, %struct.dns_rdataset** %26, align 8, !tbaa !127
  %28 = icmp eq %struct.dns_rdataset* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 11
  %31 = load %struct.dns_rdataset*, %struct.dns_rdataset** %30, align 8, !tbaa !124
  %32 = icmp eq %struct.dns_rdataset* %31, null
  br i1 %32, label %128, label %33

33:                                               ; preds = %29, %25
  %34 = and i16 %21, 64
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %128, label %36

36:                                               ; preds = %33
  %37 = tail call zeroext i1 @dns_name_hasbuffer(%struct.dns_name* noundef nonnull %1) #21
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = bitcast %struct.isc_buffer** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #21
  store %struct.isc_buffer* null, %struct.isc_buffer** %4, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %41 = load %struct.isc_mem*, %struct.isc_mem** %40, align 8, !tbaa !63
  call fastcc void @isc_buffer_allocate(%struct.isc_mem* noundef %41, %struct.isc_buffer** noundef nonnull %4, i32 noundef 512)
  %42 = load %struct.isc_buffer*, %struct.isc_buffer** %4, align 8, !tbaa !5
  call fastcc void @dns_name_setbuffer(%struct.dns_name* noundef nonnull %1, %struct.isc_buffer* noundef %42)
  call void @dns_message_takebuffer(%struct.dns_message* noundef nonnull %0, %struct.isc_buffer** noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #21
  br label %43

43:                                               ; preds = %38, %36
  %44 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 11
  %45 = load %struct.dns_rdataset*, %struct.dns_rdataset** %44, align 8, !tbaa !124
  %46 = icmp eq %struct.dns_rdataset* %45, null
  br i1 %46, label %70, label %47

47:                                               ; preds = %43
  %48 = bitcast %struct.dns_rdata_sig_t* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %48) #21
  %49 = call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef nonnull %45) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3005, i32 noundef 2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

52:                                               ; preds = %47
  %53 = load %struct.dns_rdataset*, %struct.dns_rdataset** %44, align 8, !tbaa !124
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef %53, %struct.dns_rdata* noundef nonnull %3) #21
  %54 = call i32 @dns_rdata_tostruct(%struct.dns_rdata* noundef nonnull %3, i8* noundef nonnull %48, %struct.isc_mem* noundef null) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i16, i16* %20, align 4
  %58 = and i16 %57, 32
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 42
  %62 = load i16, i16* %61, align 8, !tbaa !174
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %60, %64
  %66 = phi i32 [ 113, %64 ], [ 0, %60 ]
  %67 = getelementptr inbounds %struct.dns_rdata_sig_t, %struct.dns_rdata_sig_t* %5, i64 0, i32 9
  call void @dns_name_clone(%struct.dns_name* noundef nonnull %67, %struct.dns_name* noundef nonnull %1) #21
  call void @dns_rdata_freestruct(i8* noundef nonnull %48) #21
  br label %68

68:                                               ; preds = %52, %65
  %69 = phi i32 [ %66, %65 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %48) #21
  br i1 %55, label %126, label %128

70:                                               ; preds = %43
  %71 = bitcast %struct.dns_rdata_any_tsig* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %71) #21
  %72 = load %struct.dns_rdataset*, %struct.dns_rdataset** %26, align 8, !tbaa !127
  %73 = call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef %72) #21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3025, i32 noundef 2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

76:                                               ; preds = %70
  %77 = load %struct.dns_rdataset*, %struct.dns_rdataset** %26, align 8, !tbaa !127
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef %77, %struct.dns_rdata* noundef nonnull %3) #21
  %78 = call i32 @dns_rdata_tostruct(%struct.dns_rdata* noundef nonnull %3, i8* noundef nonnull %71, %struct.isc_mem* noundef null) #21
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3029, i32 noundef 2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

81:                                               ; preds = %76
  %82 = load i16, i16* %20, align 4
  %83 = and i16 %82, 32
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 32
  %87 = load i16, i16* %86, align 8, !tbaa !164
  %88 = icmp eq i16 %87, 0
  %89 = getelementptr inbounds %struct.dns_rdata_any_tsig, %struct.dns_rdata_any_tsig* %6, i64 0, i32 8
  %90 = load i16, i16* %89, align 2
  %91 = icmp eq i16 %90, 0
  %92 = select i1 %88, i1 %91, i1 false
  %93 = select i1 %92, i1 true, i1 %84
  %94 = select i1 %92, i32 128, i32 111
  %95 = select i1 %92, i32 0, i32 111
  br i1 %93, label %105, label %96

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 32
  %98 = load i16, i16* %97, align 8, !tbaa !164
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.dns_rdata_any_tsig, %struct.dns_rdata_any_tsig* %6, i64 0, i32 8
  %102 = load i16, i16* %101, align 2, !tbaa !175
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3039, i32 noundef 2, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.62, i64 0, i64 0)) #20
  unreachable

105:                                              ; preds = %81, %85, %100, %96
  %106 = phi i32 [ %94, %85 ], [ 111, %96 ], [ 112, %100 ], [ 111, %81 ]
  %107 = phi i1 [ %92, %85 ], [ false, %96 ], [ false, %100 ], [ false, %81 ]
  %108 = phi i32 [ %95, %85 ], [ 111, %96 ], [ 112, %100 ], [ 111, %81 ]
  call void @dns_rdata_freestruct(i8* noundef nonnull %71) #21
  %109 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %110 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %109, align 8, !tbaa !71
  %111 = icmp eq %struct.dns_tsigkey* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  br i1 %107, label %113, label %124

113:                                              ; preds = %112
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3051, i32 noundef 2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0)) #20
  unreachable

114:                                              ; preds = %105
  %115 = call %struct.dns_name* @dns_tsigkey_identity(%struct.dns_tsigkey* noundef nonnull %110) #21
  %116 = icmp eq %struct.dns_name* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %109, align 8, !tbaa !71
  %119 = getelementptr inbounds %struct.dns_tsigkey, %struct.dns_tsigkey* %118, i64 0, i32 4
  %120 = load %struct.dns_name*, %struct.dns_name** %119, align 8, !tbaa !167
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i32 [ %106, %117 ], [ %108, %114 ]
  %123 = phi %struct.dns_name* [ %120, %117 ], [ %115, %114 ]
  call void @dns_name_clone(%struct.dns_name* noundef %123, %struct.dns_name* noundef nonnull %1) #21
  br label %124

124:                                              ; preds = %112, %121
  %125 = phi i32 [ %122, %121 ], [ %108, %112 ]
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %71) #21
  br label %126

126:                                              ; preds = %68, %124
  %127 = phi i32 [ %69, %68 ], [ %125, %124 ]
  br label %128

128:                                              ; preds = %33, %29, %68, %126
  %129 = phi i32 [ %127, %126 ], [ %54, %68 ], [ 23, %29 ], [ 127, %33 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #21
  ret i32 %129
}

declare zeroext i1 @dns_name_hasbuffer(%struct.dns_name* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dns_name_setbuffer(%struct.dns_name* nocapture noundef %0, %struct.isc_buffer* noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.dns_name, %struct.dns_name* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !40
  %5 = icmp eq i32 %4, 1145983854
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.211, i64 0, i64 0), i32 noundef 313, i32 noundef 0, i8* noundef getelementptr inbounds ([118 x i8], [118 x i8]* @.str.212, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq %struct.isc_buffer* %1, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 6
  %11 = load %struct.isc_buffer*, %struct.isc_buffer** %10, align 8, !tbaa !178
  %12 = icmp eq %struct.isc_buffer* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.211, i64 0, i64 0), i32 noundef 314, i32 noundef 0, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.237, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %7, %9
  %15 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 6
  store %struct.isc_buffer* %1, %struct.isc_buffer** %15, align 8, !tbaa !178
  ret void
}

declare i32 @dns_rdata_tostruct(%struct.dns_rdata* noundef, i8* noundef, %struct.isc_mem* noundef) local_unnamed_addr #3

declare void @dns_name_clone(%struct.dns_name* noundef, %struct.dns_name* noundef) local_unnamed_addr #3

declare void @dns_rdata_freestruct(i8* noundef) local_unnamed_addr #3

declare %struct.dns_name* @dns_tsigkey_identity(%struct.dns_tsigkey* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_resetsig(%struct.dns_message* noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1297303360
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3069, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %10 = load i16, i16* %9, align 4
  %11 = and i16 %10, -97
  store i16 %11, i16* %9, align 4
  %12 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 32
  store i16 0, i16* %12, align 8, !tbaa !164
  %13 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 42
  store i16 0, i16* %13, align 8, !tbaa !174
  %14 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 39
  store i32 0, i32* %14, align 4, !tbaa !179
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %16 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %15, align 8, !tbaa !71
  %17 = icmp eq %struct.dns_tsigkey* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  tail call void @dns_tsigkey_detach(%struct.dns_tsigkey** noundef nonnull %15) #21
  store %struct.dns_tsigkey* null, %struct.dns_tsigkey** %15, align 8, !tbaa !71
  br label %19

19:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_rechecksig(%struct.dns_message* noundef %0, %struct.dns_view* noundef %1) local_unnamed_addr #0 {
  tail call void @dns_message_resetsig(%struct.dns_message* noundef %0)
  %3 = tail call i32 @dns_message_checksig(%struct.dns_message* noundef %0, %struct.dns_view* noundef %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_checksig(%struct.dns_message* noundef %0, %struct.dns_view* noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.isc_buffer, align 8
  %4 = alloca %struct.isc_buffer, align 8
  %5 = alloca %struct.dns_rdata, align 8
  %6 = alloca %struct.dns_rdata_sig_t, align 8
  %7 = alloca %struct.dns_rdataset, align 8
  %8 = alloca %struct.dst_key*, align 8
  %9 = bitcast %struct.isc_buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #21
  %10 = bitcast %struct.isc_buffer* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %10) #21
  %11 = icmp eq %struct.dns_message* %0, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %14 = load i32, i32* %13, align 4, !tbaa !40
  %15 = icmp eq i32 %14, 1297303360
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3119, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %19 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %18, align 8, !tbaa !71
  %20 = icmp eq %struct.dns_tsigkey* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 12
  %23 = load %struct.dns_rdataset*, %struct.dns_rdataset** %22, align 8, !tbaa !127
  %24 = icmp eq %struct.dns_rdataset* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 11
  %27 = load %struct.dns_rdataset*, %struct.dns_rdataset** %26, align 8, !tbaa !124
  %28 = icmp eq %struct.dns_rdataset* %27, null
  br i1 %28, label %141, label %29

29:                                               ; preds = %25, %21, %17
  %30 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 0
  %31 = load i8*, i8** %30, align 8, !tbaa !34
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3125, i32 noundef 2, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0)) #20
  unreachable

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 1
  %36 = load i32, i32* %35, align 8, !tbaa !35
  call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef nonnull %4, i8* noundef nonnull %31, i32 noundef %36)
  %37 = load i32, i32* %35, align 8, !tbaa !35
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef nonnull %4, i32 noundef %37)
  %38 = load %struct.dns_tsigkey*, %struct.dns_tsigkey** %18, align 8, !tbaa !71
  %39 = icmp eq %struct.dns_tsigkey* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 12
  %42 = load %struct.dns_rdataset*, %struct.dns_rdataset** %41, align 8, !tbaa !127
  %43 = icmp eq %struct.dns_rdataset* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40, %34
  %45 = icmp eq %struct.dns_view* %1, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = call i32 @dns_view_checksig(%struct.dns_view* noundef nonnull %1, %struct.isc_buffer* noundef nonnull %4, %struct.dns_message* noundef nonnull %0) #21
  br label %141

48:                                               ; preds = %44
  %49 = call i32 @dns_tsig_verify(%struct.isc_buffer* noundef nonnull %4, %struct.dns_message* noundef nonnull %0, %struct.dns_tsigkeyring* noundef null, %struct.dns_tsigkeyring* noundef null) #21
  br label %141

50:                                               ; preds = %40
  %51 = bitcast %struct.dns_rdata* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %51) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %51, i8 0, i64 40, i1 false)
  %52 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %5, i64 0, i32 5, i32 0
  %53 = bitcast %struct.dns_rdata_sig_t* %6 to i8*
  %54 = bitcast %struct.dns_rdata** %52 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %54, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %53) #21
  %55 = bitcast %struct.dns_rdataset* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %55) #21
  %56 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 11
  %57 = load %struct.dns_rdataset*, %struct.dns_rdataset** %56, align 8, !tbaa !124
  %58 = call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef %57) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3144, i32 noundef 2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

61:                                               ; preds = %50
  %62 = load %struct.dns_rdataset*, %struct.dns_rdataset** %56, align 8, !tbaa !124
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef %62, %struct.dns_rdata* noundef nonnull %5) #21
  %63 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %5, i64 0, i32 1
  %64 = load i32, i32* %63, align 8, !tbaa !115
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %139, label %66

66:                                               ; preds = %61
  %67 = call i32 @dns_rdata_tostruct(%struct.dns_rdata* noundef nonnull %5, i8* noundef nonnull %53, %struct.isc_mem* noundef null) #21
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %139

69:                                               ; preds = %66
  call void @dns_rdataset_init(%struct.dns_rdataset* noundef nonnull %7) #21
  %70 = icmp eq %struct.dns_view* %1, null
  br i1 %70, label %134, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.dns_rdata_sig_t, %struct.dns_rdata_sig_t* %6, i64 0, i32 9
  %73 = call i32 @dns_view_simplefind(%struct.dns_view* noundef nonnull %1, %struct.dns_name* noundef nonnull %72, i16 noundef zeroext 25, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, %struct.dns_rdataset* noundef nonnull %7, %struct.dns_rdataset* noundef null) #21
  %74 = icmp ne i32 %73, 0
  %75 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %7, i64 0, i32 6
  %76 = load i16, i16* %75, align 8
  %77 = icmp ult i16 %76, 8
  %78 = select i1 %74, i1 true, i1 %77
  br i1 %78, label %134, label %79

79:                                               ; preds = %71
  %80 = call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef nonnull %7) #21
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = bitcast %struct.dst_key** %8 to i8*
  %84 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %5, i64 0, i32 0
  %85 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %5, i64 0, i32 2
  %86 = getelementptr inbounds %struct.dns_view, %struct.dns_view* %1, i64 0, i32 1
  %87 = getelementptr inbounds %struct.dns_rdata_sig_t, %struct.dns_rdata_sig_t* %6, i64 0, i32 3
  %88 = getelementptr inbounds %struct.dns_rdata_sig_t, %struct.dns_rdata_sig_t* %6, i64 0, i32 8
  br label %90

89:                                               ; preds = %79
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3182, i32 noundef 2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

90:                                               ; preds = %82, %127
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83) #21
  store %struct.dst_key* null, %struct.dst_key** %8, align 8, !tbaa !5
  call void @dns_rdata_reset(%struct.dns_rdata* noundef nonnull %5) #21
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef nonnull %7, %struct.dns_rdata* noundef nonnull %5) #21
  %91 = load i8*, i8** %84, align 8, !tbaa !114
  %92 = load i32, i32* %63, align 8, !tbaa !115
  call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef nonnull %3, i8* noundef %91, i32 noundef %92)
  %93 = load i32, i32* %63, align 8, !tbaa !115
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef nonnull %3, i32 noundef %93)
  %94 = load i16, i16* %85, align 4, !tbaa !116
  %95 = load %struct.isc_mem*, %struct.isc_mem** %86, align 8, !tbaa !180
  %96 = call i32 @dst_key_fromdns(%struct.dns_name* noundef nonnull %72, i16 noundef zeroext %94, %struct.isc_buffer* noundef nonnull %3, %struct.isc_mem* noundef %95, %struct.dst_key** noundef nonnull %8) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %90
  %99 = load %struct.dst_key*, %struct.dst_key** %8, align 8, !tbaa !5
  %100 = call i32 @dst_key_alg(%struct.dst_key* noundef %99) #21
  %101 = load i8, i8* %87, align 2, !tbaa !182
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load %struct.dst_key*, %struct.dst_key** %8, align 8, !tbaa !5
  %106 = call zeroext i16 @dst_key_id(%struct.dst_key* noundef %105) #21
  %107 = load i16, i16* %88, align 8, !tbaa !184
  %108 = icmp eq i16 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.dst_key*, %struct.dst_key** %8, align 8, !tbaa !5
  %111 = call i32 @dst_key_proto(%struct.dst_key* noundef %110) #21
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load %struct.dst_key*, %struct.dst_key** %8, align 8, !tbaa !5
  %115 = call i32 @dst_key_proto(%struct.dst_key* noundef %114) #21
  %116 = icmp eq i32 %115, 255
  br i1 %116, label %118, label %117

117:                                              ; preds = %113, %104, %98
  call void @dst_key_free(%struct.dst_key** noundef nonnull %8) #21
  br label %123

118:                                              ; preds = %113, %109
  %119 = load %struct.dst_key*, %struct.dst_key** %8, align 8, !tbaa !5
  %120 = call i32 @dns_dnssec_verifymessage(%struct.isc_buffer* noundef nonnull %4, %struct.dns_message* noundef nonnull %0, %struct.dst_key* noundef %119) #21
  call void @dst_key_free(%struct.dst_key** noundef nonnull %8) #21
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 3, i32 0
  br label %123

123:                                              ; preds = %118, %90, %117
  %124 = phi i32 [ 5, %117 ], [ 5, %90 ], [ %122, %118 ]
  %125 = phi i32 [ 0, %117 ], [ %96, %90 ], [ %120, %118 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #21
  %126 = icmp eq i32 %124, 3
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = call i32 @dns_rdataset_next(%struct.dns_rdataset* noundef nonnull %7) #21
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %90, label %130, !llvm.loop !185

130:                                              ; preds = %123, %127
  %131 = phi i32 [ %125, %123 ], [ %128, %127 ]
  %132 = icmp eq i32 %131, 29
  %133 = select i1 %132, i32 116, i32 %131
  br label %134

134:                                              ; preds = %71, %69, %130
  %135 = phi i32 [ %133, %130 ], [ 116, %69 ], [ 116, %71 ]
  %136 = call zeroext i1 @dns_rdataset_isassociated(%struct.dns_rdataset* noundef nonnull %7) #21
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  call void @dns__rdataset_disassociate(%struct.dns_rdataset* noundef nonnull %7) #21
  br label %138

138:                                              ; preds = %137, %134
  call void @dns_rdata_freestruct(i8* noundef nonnull %53) #21
  br label %139

139:                                              ; preds = %66, %61, %138
  %140 = phi i32 [ %135, %138 ], [ 24, %61 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %55) #21
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %53) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %51) #21
  br label %141

141:                                              ; preds = %25, %139, %48, %46
  %142 = phi i32 [ %47, %46 ], [ %49, %48 ], [ %140, %139 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %10) #21
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #21
  ret i32 %142
}

declare i32 @dns_view_checksig(%struct.dns_view* noundef, %struct.isc_buffer* noundef, %struct.dns_message* noundef) local_unnamed_addr #3

declare i32 @dns_tsig_verify(%struct.isc_buffer* noundef, %struct.dns_message* noundef, %struct.dns_tsigkeyring* noundef, %struct.dns_tsigkeyring* noundef) local_unnamed_addr #3

declare i32 @dns_view_simplefind(%struct.dns_view* noundef, %struct.dns_name* noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext, %struct.dns_rdataset* noundef, %struct.dns_rdataset* noundef) local_unnamed_addr #3

declare void @dns_rdata_reset(%struct.dns_rdata* noundef) local_unnamed_addr #3

declare i32 @dst_key_fromdns(%struct.dns_name* noundef, i16 noundef zeroext, %struct.isc_buffer* noundef, %struct.isc_mem* noundef, %struct.dst_key** noundef) local_unnamed_addr #3

declare i32 @dst_key_alg(%struct.dst_key* noundef) local_unnamed_addr #3

declare zeroext i16 @dst_key_id(%struct.dst_key* noundef) local_unnamed_addr #3

declare i32 @dst_key_proto(%struct.dst_key* noundef) local_unnamed_addr #3

declare void @dst_key_free(%struct.dst_key** noundef) local_unnamed_addr #3

declare i32 @dns_dnssec_verifymessage(%struct.isc_buffer* noundef, %struct.dns_message* noundef, %struct.dst_key* noundef) local_unnamed_addr #3

declare i32 @dns_rdataset_next(%struct.dns_rdataset* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_sectiontotext(%struct.dns_message* noundef %0, i32 noundef %1, %struct.dns_master_style* noundef %2, i32 noundef %3, %struct.isc_buffer* noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.dns_name*, align 8
  %7 = bitcast %struct.dns_name** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #21
  %8 = icmp eq %struct.dns_message* %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !40
  %12 = icmp eq i32 %11, 1297303360
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %5
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3248, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %9
  %15 = icmp eq %struct.isc_buffer* %4, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3249, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #20
  unreachable

17:                                               ; preds = %14
  %18 = icmp ult i32 %1, 4
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3250, i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #20
  unreachable

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48
  %22 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %23 = load i64, i64* %22, align 8, !tbaa !38
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 8, i64 %24, i32 0
  %26 = load %struct.dns_name*, %struct.dns_name** %25, align 8, !tbaa !100
  %27 = icmp eq %struct.dns_name* %26, null
  br i1 %27, label %277, label %28

28:                                               ; preds = %20
  %29 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %30 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %31 = and i64 %30, 3221225472
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %21, i64 0, i32 0
  %35 = load i64, i64* %22, align 8, !tbaa !38
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %39 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %40

40:                                               ; preds = %37, %49
  %41 = phi i32 [ 0, %37 ], [ %50, %49 ]
  %42 = load i8*, i8** %34, align 8, !tbaa !37
  %43 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %42) #22
  %44 = load i32, i32* %38, align 8, !tbaa !134
  %45 = load i32, i32* %39, align 4, !tbaa !87
  %46 = sub i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %42)
  %50 = add i32 %41, 1
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %22, align 8, !tbaa !38
  %53 = icmp ugt i64 %52, %51
  br i1 %53, label %40, label %54, !llvm.loop !186

54:                                               ; preds = %40, %49, %33, %28
  %55 = phi i32 [ 0, %28 ], [ 0, %33 ], [ 0, %49 ], [ 19, %40 ]
  %56 = phi i32 [ 3, %28 ], [ 0, %33 ], [ 0, %49 ], [ 2, %40 ]
  switch i32 %56, label %279 [
    i32 0, label %57
    i32 3, label %57
    i32 2, label %277
  ]

57:                                               ; preds = %54, %54
  %58 = and i64 %29, 2147483648
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 5
  %62 = load i16, i16* %61, align 2, !tbaa !91
  %63 = icmp eq i16 %62, 5
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds [4 x i8*], [4 x i8*]* @sectiontext, i64 0, i64 %24
  %66 = load i8*, i8** %65, align 8, !tbaa !5
  %67 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %66) #22
  %68 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %69 = load i32, i32* %68, align 8, !tbaa !134
  %70 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %71 = load i32, i32* %70, align 4, !tbaa !87
  %72 = sub i32 %69, %71
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %67, %73
  br i1 %74, label %86, label %277

75:                                               ; preds = %60
  %76 = getelementptr inbounds [4 x i8*], [4 x i8*]* @updsectiontext, i64 0, i64 %24
  %77 = load i8*, i8** %76, align 8, !tbaa !5
  %78 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %77) #22
  %79 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %80 = load i32, i32* %79, align 8, !tbaa !134
  %81 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %82 = load i32, i32* %81, align 4, !tbaa !87
  %83 = sub i32 %80, %82
  %84 = zext i32 %83 to i64
  %85 = icmp ult i64 %78, %84
  br i1 %85, label %86, label %277

86:                                               ; preds = %75, %64
  %87 = phi i8* [ %66, %64 ], [ %77, %75 ]
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %87)
  %88 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %89 = load i32, i32* %88, align 8, !tbaa !134
  %90 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %91 = load i32, i32* %90, align 4, !tbaa !87
  %92 = sub i32 %89, %91
  %93 = icmp ult i32 %92, 11
  br i1 %93, label %277, label %132

94:                                               ; preds = %57
  %95 = and i32 %3, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %99 = load i32, i32* %98, align 8, !tbaa !134
  %100 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %101 = load i32, i32* %100, align 4, !tbaa !87
  %102 = sub i32 %99, %101
  %103 = icmp ult i32 %102, 4
  br i1 %103, label %277, label %104

104:                                              ; preds = %97
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 5
  %106 = load i16, i16* %105, align 2, !tbaa !91
  %107 = icmp eq i16 %106, 5
  br i1 %107, label %117, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds [4 x i8*], [4 x i8*]* @sectiontext, i64 0, i64 %24
  %110 = load i8*, i8** %109, align 8, !tbaa !5
  %111 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %110) #22
  %112 = load i32, i32* %98, align 8, !tbaa !134
  %113 = load i32, i32* %100, align 4, !tbaa !87
  %114 = sub i32 %112, %113
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %111, %115
  br i1 %116, label %126, label %277

117:                                              ; preds = %104
  %118 = getelementptr inbounds [4 x i8*], [4 x i8*]* @updsectiontext, i64 0, i64 %24
  %119 = load i8*, i8** %118, align 8, !tbaa !5
  %120 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %119) #22
  %121 = load i32, i32* %98, align 8, !tbaa !134
  %122 = load i32, i32* %100, align 4, !tbaa !87
  %123 = sub i32 %121, %122
  %124 = zext i32 %123 to i64
  %125 = icmp ult i64 %120, %124
  br i1 %125, label %126, label %277

126:                                              ; preds = %117, %108
  %127 = phi i8* [ %110, %108 ], [ %119, %117 ]
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %127)
  %128 = load i32, i32* %98, align 8, !tbaa !134
  %129 = load i32, i32* %100, align 4, !tbaa !87
  %130 = sub i32 %128, %129
  %131 = icmp ult i32 %130, 11
  br i1 %131, label %277, label %132

132:                                              ; preds = %126, %86
  %133 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i64 0, i64 0), %86 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i64 0, i64 0), %126 ]
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %133)
  br label %134

134:                                              ; preds = %132, %94
  %135 = tail call i32 @dns_message_firstname(%struct.dns_message* noundef nonnull %0, i32 noundef %1)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %277

137:                                              ; preds = %134
  br i1 %59, label %141, label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %22, align 8, !tbaa !38
  %140 = add i64 %139, 1
  store i64 %140, i64* %22, align 8, !tbaa !38
  br label %141

141:                                              ; preds = %138, %137
  %142 = icmp eq i32 %1, 1
  %143 = and i32 %3, 8
  %144 = icmp eq i32 %143, 0
  %145 = and i32 %3, 4
  %146 = icmp eq i32 %145, 0
  %147 = icmp eq i32 %1, 0
  %148 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %21, i64 0, i32 0
  %149 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %150 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %151 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %152 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %153 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %154 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %155

155:                                              ; preds = %225, %141
  %156 = phi i8 [ 0, %141 ], [ %226, %225 ]
  store %struct.dns_name* null, %struct.dns_name** %6, align 8, !tbaa !5
  call void @dns_message_currentname(%struct.dns_message* noundef nonnull %0, i32 noundef %1, %struct.dns_name** noundef nonnull %6)
  %157 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %158 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %157, i64 0, i32 8, i32 0
  %159 = load %struct.dns_rdataset*, %struct.dns_rdataset** %158, align 8, !tbaa !5
  %160 = icmp eq %struct.dns_rdataset* %159, null
  br i1 %160, label %225, label %161

161:                                              ; preds = %155, %220
  %162 = phi %struct.dns_rdataset* [ %223, %220 ], [ %159, %155 ]
  %163 = phi i8 [ %221, %220 ], [ %156, %155 ]
  br i1 %142, label %164, label %173

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %162, i64 0, i32 4
  %166 = load i16, i16* %165, align 2, !tbaa !81
  %167 = icmp eq i16 %166, 6
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  br i1 %144, label %169, label %220

169:                                              ; preds = %168
  %170 = and i8 %163, 1
  %171 = icmp eq i8 %170, 0
  %172 = or i1 %146, %171
  br i1 %172, label %173, label %220

173:                                              ; preds = %169, %164, %161
  %174 = phi i8 [ %163, %164 ], [ %163, %161 ], [ 1, %169 ]
  br i1 %147, label %175, label %214

175:                                              ; preds = %173
  %176 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %177 = and i64 %176, 3221225472
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %196, label %179

179:                                              ; preds = %175
  %180 = load i64, i64* %22, align 8, !tbaa !38
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %179, %191
  %183 = phi i32 [ %192, %191 ], [ 0, %179 ]
  %184 = load i8*, i8** %148, align 8, !tbaa !37
  %185 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %184) #22
  %186 = load i32, i32* %149, align 8, !tbaa !134
  %187 = load i32, i32* %150, align 4, !tbaa !87
  %188 = sub i32 %186, %187
  %189 = zext i32 %188 to i64
  %190 = icmp ult i64 %185, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %182
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %184)
  %192 = add i32 %183, 1
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* %22, align 8, !tbaa !38
  %195 = icmp ugt i64 %194, %193
  br i1 %195, label %182, label %196, !llvm.loop !187

196:                                              ; preds = %182, %191, %179, %175
  %197 = phi i32 [ 0, %175 ], [ 0, %179 ], [ 0, %191 ], [ 19, %182 ]
  %198 = phi i32 [ 13, %175 ], [ 0, %179 ], [ 0, %191 ], [ 2, %182 ]
  switch i32 %198, label %279 [
    i32 0, label %199
    i32 13, label %199
    i32 2, label %277
  ]

199:                                              ; preds = %196, %196
  br i1 %59, label %205, label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %151, align 8, !tbaa !134
  %202 = load i32, i32* %152, align 4, !tbaa !87
  %203 = sub i32 %201, %202
  %204 = icmp ult i32 %203, 3
  br i1 %204, label %277, label %210

205:                                              ; preds = %199
  %206 = load i32, i32* %153, align 8, !tbaa !134
  %207 = load i32, i32* %154, align 4, !tbaa !87
  %208 = sub i32 %206, %207
  %209 = icmp ult i32 %208, 2
  br i1 %209, label %277, label %210

210:                                              ; preds = %205, %200
  %211 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), %200 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %205 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %211)
  %212 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %213 = call i32 @dns_master_questiontotext(%struct.dns_name* noundef %212, %struct.dns_rdataset* noundef nonnull %162, %struct.dns_master_style* noundef %2, %struct.isc_buffer* noundef %4) #21
  br label %217

214:                                              ; preds = %173
  %215 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %216 = call i32 @dns_master_rdatasettotext(%struct.dns_name* noundef %215, %struct.dns_rdataset* noundef nonnull %162, %struct.dns_master_style* noundef %2, %struct.dns_indent_t* noundef nonnull %21, %struct.isc_buffer* noundef %4) #21
  br label %217

217:                                              ; preds = %214, %210
  %218 = phi i32 [ %213, %210 ], [ %216, %214 ]
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %277

220:                                              ; preds = %169, %217, %168
  %221 = phi i8 [ %163, %168 ], [ %174, %217 ], [ %163, %169 ]
  %222 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %162, i64 0, i32 2, i32 1
  %223 = load %struct.dns_rdataset*, %struct.dns_rdataset** %222, align 8, !tbaa !5
  %224 = icmp eq %struct.dns_rdataset* %223, null
  br i1 %224, label %225, label %161, !llvm.loop !188

225:                                              ; preds = %220, %155
  %226 = phi i8 [ %156, %155 ], [ %221, %220 ]
  %227 = call i32 @dns_message_nextname(%struct.dns_message* noundef nonnull %0, i32 noundef %1)
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %155, label %229, !llvm.loop !189

229:                                              ; preds = %225
  br i1 %59, label %233, label %230

230:                                              ; preds = %229
  %231 = load i64, i64* %22, align 8, !tbaa !38
  %232 = add i64 %231, -1
  store i64 %232, i64* %22, align 8, !tbaa !38
  br label %233

233:                                              ; preds = %230, %229
  %234 = and i32 %3, 3
  %235 = icmp eq i32 %234, 0
  %236 = select i1 %235, i1 %59, i1 false
  br i1 %236, label %237, label %273

237:                                              ; preds = %233
  %238 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %239 = and i64 %238, 3221225472
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %262, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %21, i64 0, i32 0
  %243 = load i64, i64* %22, align 8, !tbaa !38
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %262, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %247 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %248

248:                                              ; preds = %245, %257
  %249 = phi i32 [ 0, %245 ], [ %258, %257 ]
  %250 = load i8*, i8** %242, align 8, !tbaa !37
  %251 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %250) #22
  %252 = load i32, i32* %246, align 8, !tbaa !134
  %253 = load i32, i32* %247, align 4, !tbaa !87
  %254 = sub i32 %252, %253
  %255 = zext i32 %254 to i64
  %256 = icmp ult i64 %251, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %248
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %250)
  %258 = add i32 %249, 1
  %259 = zext i32 %258 to i64
  %260 = load i64, i64* %22, align 8, !tbaa !38
  %261 = icmp ugt i64 %260, %259
  br i1 %261, label %248, label %262, !llvm.loop !190

262:                                              ; preds = %248, %257, %241, %237
  %263 = phi i32 [ %227, %237 ], [ %227, %241 ], [ %227, %257 ], [ 19, %248 ]
  %264 = phi i32 [ 18, %237 ], [ 0, %241 ], [ 0, %257 ], [ 2, %248 ]
  switch i32 %264, label %279 [
    i32 0, label %265
    i32 18, label %265
    i32 2, label %277
  ]

265:                                              ; preds = %262, %262
  %266 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %267 = load i32, i32* %266, align 8, !tbaa !134
  %268 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %269 = load i32, i32* %268, align 4, !tbaa !87
  %270 = sub i32 %267, %269
  %271 = icmp ult i32 %270, 2
  br i1 %271, label %277, label %272

272:                                              ; preds = %265
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %273

273:                                              ; preds = %272, %233
  %274 = phi i32 [ %263, %272 ], [ %227, %233 ]
  %275 = icmp eq i32 %274, 29
  %276 = select i1 %275, i32 0, i32 %274
  br label %277

277:                                              ; preds = %205, %200, %217, %196, %265, %126, %117, %108, %97, %86, %75, %64, %134, %20, %273, %262, %54
  %278 = phi i32 [ 0, %20 ], [ %55, %54 ], [ %135, %134 ], [ %263, %262 ], [ %276, %273 ], [ 19, %64 ], [ 19, %75 ], [ 19, %86 ], [ 19, %97 ], [ 19, %108 ], [ 19, %117 ], [ 19, %126 ], [ 19, %265 ], [ %197, %196 ], [ %218, %217 ], [ 19, %200 ], [ 19, %205 ]
  store i64 %23, i64* %22, align 8, !tbaa !38
  br label %279

279:                                              ; preds = %196, %277, %262, %54
  %280 = phi i32 [ %278, %277 ], [ undef, %54 ], [ undef, %262 ], [ undef, %196 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #21
  ret i32 %280
}

declare i64 @dns_master_styleflags(%struct.dns_master_style* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_putstr(%struct.isc_buffer* noalias noundef %0, i8* noalias noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1005, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1006, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = tail call i64 @strlen(i8* noundef nonnull %1) #22
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  %16 = load %struct.isc_mem*, %struct.isc_mem** %15, align 8, !tbaa !147
  %17 = icmp eq %struct.isc_mem* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @isc_buffer_reserve(%struct.isc_buffer* noundef nonnull %0, i32 noundef %14)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1011, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 2
  %24 = load i32, i32* %23, align 8, !tbaa !134
  %25 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %26 = load i32, i32* %25, align 4, !tbaa !87
  %27 = sub i32 %24, %26
  %28 = icmp ult i32 %27, %14
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1014, i32 noundef 0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.238, i64 0, i64 0)) #20
  unreachable

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %32 = load i8*, i8** %31, align 8, !tbaa !88
  %33 = zext i32 %26 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = and i64 %13, 4294967295
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %34, i8* nonnull align 1 %1, i64 %35, i1 false)
  %36 = load i32, i32* %25, align 4, !tbaa !87
  %37 = add i32 %36, %14
  store i32 %37, i32* %25, align 4, !tbaa !87
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define internal fastcc void @dns_name_init(%struct.dns_name* nocapture noundef writeonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 0
  store i32 1145983854, i32* %2, align 8, !tbaa.struct !191
  %3 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 7, i32 0
  %6 = bitcast i8** %3 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(18) %6, i8 0, i64 18, i1 false)
  %7 = bitcast i8** %4 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 8, i32 0
  %9 = bitcast %struct.dns_name** %5 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  %10 = bitcast %struct.dns_rdataset** %8 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @dns_master_questiontotext(%struct.dns_name* noundef, %struct.dns_rdataset* noundef, %struct.dns_master_style* noundef, %struct.isc_buffer* noundef) local_unnamed_addr #3

declare i32 @dns_master_rdatasettotext(%struct.dns_name* noundef, %struct.dns_rdataset* noundef, %struct.dns_master_style* noundef, %struct.dns_indent_t* noundef, %struct.isc_buffer* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_pseudosectiontotext(%struct.dns_message* noundef %0, i32 noundef %1, %struct.dns_master_style* noundef %2, i32 noundef %3, %struct.isc_buffer* noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.dns_name*, align 8
  %7 = alloca [15 x i8], align 1
  %8 = alloca %struct.dns_rdata, align 8
  %9 = alloca %struct.isc_buffer, align 8
  %10 = alloca %struct.isc_buffer, align 8
  %11 = bitcast %struct.dns_name** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #21
  store %struct.dns_name* null, %struct.dns_name** %6, align 8, !tbaa !5
  %12 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 15, i8* nonnull %12) #21
  %13 = bitcast %struct.dns_rdata* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #21
  %14 = bitcast %struct.isc_buffer* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %14) #21
  %15 = icmp eq %struct.dns_message* %0, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 4, !tbaa !40
  %19 = icmp eq i32 %18, 1297303360
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %5
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3831, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

21:                                               ; preds = %16
  %22 = icmp eq %struct.isc_buffer* %4, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3832, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #20
  unreachable

24:                                               ; preds = %21
  %25 = icmp ult i32 %1, 3
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3833, i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.71, i64 0, i64 0)) #20
  unreachable

27:                                               ; preds = %24
  %28 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %29 = and i64 %28, 2147483648
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @dns_message_pseudosectiontoyaml(%struct.dns_message* noundef nonnull %0, i32 noundef %1, %struct.dns_master_style* noundef %2, i32 noundef %3, %struct.isc_buffer* noundef %4)
  br label %814

33:                                               ; preds = %27
  switch i32 %1, label %814 [
    i32 0, label %34
    i32 1, label %700
    i32 2, label %756
  ]

34:                                               ; preds = %33
  %35 = tail call %struct.dns_rdataset* @dns_message_getopt(%struct.dns_message* noundef nonnull %0)
  %36 = icmp eq %struct.dns_rdataset* %35, null
  br i1 %36, label %814, label %37

37:                                               ; preds = %34
  %38 = and i32 %3, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %42 = and i64 %41, 3221225472
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %46 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %47 = load i64, i64* %46, align 8, !tbaa !38
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %51 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %52

52:                                               ; preds = %49, %61
  %53 = phi i32 [ 0, %49 ], [ %62, %61 ]
  %54 = load i8*, i8** %45, align 8, !tbaa !37
  %55 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %54) #22
  %56 = load i32, i32* %50, align 8, !tbaa !134
  %57 = load i32, i32* %51, align 4, !tbaa !87
  %58 = sub i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %54)
  %62 = add i32 %53, 1
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %46, align 8, !tbaa !38
  %65 = icmp ugt i64 %64, %63
  br i1 %65, label %52, label %66, !llvm.loop !192

66:                                               ; preds = %52, %61, %44, %40
  %67 = phi i32 [ 3, %40 ], [ 0, %44 ], [ 0, %61 ], [ 8, %52 ]
  switch i32 %67, label %814 [
    i32 0, label %68
    i32 3, label %68
  ]

68:                                               ; preds = %66, %66
  %69 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %70 = load i32, i32* %69, align 8, !tbaa !134
  %71 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %72 = load i32, i32* %71, align 4, !tbaa !87
  %73 = sub i32 %70, %72
  %74 = icmp ult i32 %73, 23
  br i1 %74, label %814, label %75

75:                                               ; preds = %68
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i64 0, i64 0))
  br label %76

76:                                               ; preds = %37, %75
  %77 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %78 = and i64 %77, 3221225472
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %102, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %82 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %83 = load i64, i64* %82, align 8, !tbaa !38
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %102, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %87 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %88

88:                                               ; preds = %85, %97
  %89 = phi i32 [ 0, %85 ], [ %98, %97 ]
  %90 = load i8*, i8** %81, align 8, !tbaa !37
  %91 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %90) #22
  %92 = load i32, i32* %86, align 8, !tbaa !134
  %93 = load i32, i32* %87, align 4, !tbaa !87
  %94 = sub i32 %92, %93
  %95 = zext i32 %94 to i64
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %90)
  %98 = add i32 %89, 1
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* %82, align 8, !tbaa !38
  %101 = icmp ugt i64 %100, %99
  br i1 %101, label %88, label %102, !llvm.loop !193

102:                                              ; preds = %88, %97, %80, %76
  %103 = phi i32 [ 9, %76 ], [ 0, %80 ], [ 0, %97 ], [ 8, %88 ]
  switch i32 %103, label %814 [
    i32 0, label %104
    i32 9, label %104
  ]

104:                                              ; preds = %102, %102
  %105 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %106 = load i32, i32* %105, align 8, !tbaa !134
  %107 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %108 = load i32, i32* %107, align 4, !tbaa !87
  %109 = sub i32 %106, %108
  %110 = icmp ult i32 %109, 18
  br i1 %110, label %814, label %111

111:                                              ; preds = %104
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i64 0, i64 0))
  %112 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %35, i64 0, i32 5
  %113 = load i32, i32* %112, align 4, !tbaa !122
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i32 noundef %115) #21
  %117 = call i64 @strlen(i8* noundef nonnull %12) #22
  %118 = load i32, i32* %105, align 8, !tbaa !134
  %119 = load i32, i32* %107, align 4, !tbaa !87
  %120 = sub i32 %118, %119
  %121 = zext i32 %120 to i64
  %122 = icmp ult i64 %117, %121
  br i1 %122, label %123, label %814

123:                                              ; preds = %111
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %124 = load i32, i32* %105, align 8, !tbaa !134
  %125 = load i32, i32* %107, align 4, !tbaa !87
  %126 = sub i32 %124, %125
  %127 = icmp ult i32 %126, 9
  br i1 %127, label %814, label %128

128:                                              ; preds = %123
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i64 0, i64 0))
  %129 = load i32, i32* %112, align 4, !tbaa !122
  %130 = and i32 %129, 32768
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %105, align 8, !tbaa !134
  %134 = load i32, i32* %107, align 4, !tbaa !87
  %135 = sub i32 %133, %134
  %136 = icmp ult i32 %135, 4
  br i1 %136, label %814, label %137

137:                                              ; preds = %132
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0))
  br label %138

138:                                              ; preds = %137, %128
  %139 = load i32, i32* %112, align 4, !tbaa !122
  %140 = and i32 %139, 32767
  %141 = icmp eq i32 %140, 0
  %142 = load i32, i32* %105, align 8, !tbaa !134
  %143 = load i32, i32* %107, align 4, !tbaa !87
  %144 = sub i32 %142, %143
  %145 = icmp ult i32 %144, 8
  br i1 %141, label %160, label %146

146:                                              ; preds = %138
  br i1 %145, label %814, label %147

147:                                              ; preds = %146
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0))
  %148 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i64 0, i64 0), i32 noundef %140) #21
  %149 = call i64 @strlen(i8* noundef nonnull %12) #22
  %150 = load i32, i32* %105, align 8, !tbaa !134
  %151 = load i32, i32* %107, align 4, !tbaa !87
  %152 = sub i32 %150, %151
  %153 = zext i32 %152 to i64
  %154 = icmp ult i64 %149, %153
  br i1 %154, label %155, label %814

155:                                              ; preds = %147
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %156 = load i32, i32* %105, align 8, !tbaa !134
  %157 = load i32, i32* %107, align 4, !tbaa !87
  %158 = sub i32 %156, %157
  %159 = icmp ult i32 %158, 8
  br i1 %159, label %814, label %161

160:                                              ; preds = %138
  br i1 %145, label %814, label %161

161:                                              ; preds = %160, %155
  %162 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0), %155 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), %160 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %162)
  %163 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %35, i64 0, i32 3
  %164 = load i16, i16* %163, align 8, !tbaa !79
  %165 = zext i16 %164 to i32
  %166 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i32 noundef %165) #21
  %167 = call i64 @strlen(i8* noundef nonnull %12) #22
  %168 = load i32, i32* %105, align 8, !tbaa !134
  %169 = load i32, i32* %107, align 4, !tbaa !87
  %170 = sub i32 %168, %169
  %171 = zext i32 %170 to i64
  %172 = icmp ult i64 %167, %171
  br i1 %172, label %173, label %814

173:                                              ; preds = %161
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %174 = call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef nonnull %35) #21
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %814

176:                                              ; preds = %173
  call void @dns_rdata_init(%struct.dns_rdata* noundef nonnull %8) #21
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef nonnull %35, %struct.dns_rdata* noundef nonnull %8) #21
  %177 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %8, i64 0, i32 0
  %178 = load i8*, i8** %177, align 8, !tbaa !114
  %179 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %8, i64 0, i32 1
  %180 = load i32, i32* %179, align 8, !tbaa !115
  call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef nonnull %9, i8* noundef %178, i32 noundef %180)
  %181 = load i32, i32* %179, align 8, !tbaa !115
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef nonnull %9, i32 noundef %181)
  %182 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 3
  %183 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 4
  %184 = load i32, i32* %182, align 4, !tbaa !87
  %185 = load i32, i32* %183, align 8, !tbaa !96
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %814, label %187

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %189 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %190 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 1
  %191 = bitcast %struct.isc_buffer* %10 to i8*
  %192 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 1
  %193 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 1
  %194 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  br label %195

195:                                              ; preds = %187, %254
  %196 = phi i32 [ %185, %187 ], [ %258, %254 ]
  %197 = phi i32 [ %184, %187 ], [ %257, %254 ]
  %198 = phi i32 [ undef, %187 ], [ %256, %254 ]
  %199 = phi i32 [ 0, %187 ], [ %255, %254 ]
  %200 = sub i32 %197, %196
  %201 = icmp ugt i32 %200, 3
  br i1 %201, label %203, label %202

202:                                              ; preds = %195
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3891, i32 noundef 2, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.82, i64 0, i64 0)) #20
  unreachable

203:                                              ; preds = %195
  %204 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %205 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %206 = load i32, i32* %182, align 4, !tbaa !87
  %207 = load i32, i32* %183, align 8, !tbaa !96
  %208 = sub i32 %206, %207
  %209 = zext i16 %205 to i32
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3895, i32 noundef 2, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0)) #20
  unreachable

212:                                              ; preds = %203
  %213 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %214 = and i64 %213, 3221225472
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %233, label %216

216:                                              ; preds = %212
  %217 = load i64, i64* %189, align 8, !tbaa !38
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %233, label %219

219:                                              ; preds = %216, %228
  %220 = phi i32 [ %229, %228 ], [ 0, %216 ]
  %221 = load i8*, i8** %188, align 8, !tbaa !37
  %222 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %221) #22
  %223 = load i32, i32* %105, align 8, !tbaa !134
  %224 = load i32, i32* %107, align 4, !tbaa !87
  %225 = sub i32 %223, %224
  %226 = zext i32 %225 to i64
  %227 = icmp ult i64 %222, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %219
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %221)
  %229 = add i32 %220, 1
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %189, align 8, !tbaa !38
  %232 = icmp ugt i64 %231, %230
  br i1 %232, label %219, label %233, !llvm.loop !194

233:                                              ; preds = %219, %228, %216, %212
  %234 = phi i32 [ 16, %212 ], [ 0, %216 ], [ 0, %228 ], [ 8, %219 ]
  %235 = phi i32 [ %199, %212 ], [ %199, %216 ], [ %199, %228 ], [ 19, %219 ]
  switch i32 %234, label %814 [
    i32 0, label %236
    i32 16, label %236
    i32 8, label %812
  ]

236:                                              ; preds = %233, %233
  %237 = zext i16 %204 to i32
  switch i16 %204, label %534 [
    i16 1, label %238
    i16 3, label %260
    i16 10, label %266
    i16 8, label %272
    i16 9, label %294
    i16 11, label %328
    i16 12, label %356
    i16 14, label %378
    i16 15, label %412
    i16 16, label %490
    i16 17, label %512
  ]

238:                                              ; preds = %236
  %239 = load i32, i32* %105, align 8, !tbaa !134
  %240 = load i32, i32* %107, align 4, !tbaa !87
  %241 = sub i32 %239, %240
  %242 = icmp ult i32 %241, 7
  br i1 %242, label %812, label %243

243:                                              ; preds = %238
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0))
  %244 = icmp eq i16 %205, 18
  br i1 %244, label %245, label %548

245:                                              ; preds = %243
  %246 = call fastcc i32 @render_llq(%struct.isc_buffer* noundef nonnull %9, %struct.isc_buffer* noundef %4)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %814

248:                                              ; preds = %245
  %249 = load i32, i32* %105, align 8, !tbaa !134
  %250 = load i32, i32* %107, align 4, !tbaa !87
  %251 = sub i32 %249, %250
  %252 = icmp ult i32 %251, 2
  br i1 %252, label %812, label %253

253:                                              ; preds = %248
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %254

254:                                              ; preds = %253, %290, %324, %353, %377, %409, %489, %508, %530, %688, %699
  %255 = phi i32 [ 0, %253 ], [ %690, %688 ], [ %693, %699 ], [ %292, %290 ], [ %326, %324 ], [ %355, %353 ], [ %235, %377 ], [ %411, %409 ], [ %235, %489 ], [ %511, %508 ], [ %533, %530 ]
  %256 = phi i32 [ %198, %253 ], [ %691, %688 ], [ %694, %699 ], [ %293, %290 ], [ %327, %324 ], [ %198, %353 ], [ %198, %377 ], [ %198, %409 ], [ %198, %489 ], [ %198, %508 ], [ %198, %530 ]
  %257 = load i32, i32* %182, align 4, !tbaa !87
  %258 = load i32, i32* %183, align 8, !tbaa !96
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %814, label %195, !llvm.loop !195

260:                                              ; preds = %236
  %261 = load i32, i32* %105, align 8, !tbaa !134
  %262 = load i32, i32* %107, align 4, !tbaa !87
  %263 = sub i32 %261, %262
  %264 = icmp ult i32 %263, 8
  br i1 %264, label %812, label %265

265:                                              ; preds = %260
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0))
  br label %548

266:                                              ; preds = %236
  %267 = load i32, i32* %105, align 8, !tbaa !134
  %268 = load i32, i32* %107, align 4, !tbaa !87
  %269 = sub i32 %267, %268
  %270 = icmp ult i32 %269, 10
  br i1 %270, label %812, label %271

271:                                              ; preds = %266
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i64 0, i64 0))
  br label %548

272:                                              ; preds = %236
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %191) #21
  %273 = load i32, i32* %105, align 8, !tbaa !134
  %274 = load i32, i32* %107, align 4, !tbaa !87
  %275 = sub i32 %273, %274
  %276 = icmp ult i32 %275, 17
  br i1 %276, label %290, label %277

277:                                              ; preds = %272
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.87, i64 0, i64 0))
  %278 = load i8*, i8** %192, align 8, !tbaa !88
  %279 = load i32, i32* %183, align 8, !tbaa !96
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef nonnull %10, i8* noundef %281, i32 noundef %209)
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef nonnull %10, i32 noundef %209)
  %282 = call fastcc i32 @render_ecs(%struct.isc_buffer* noundef nonnull %10, %struct.isc_buffer* noundef %4)
  switch i32 %282, label %289 [
    i32 19, label %290
    i32 0, label %283
  ]

283:                                              ; preds = %277
  call fastcc void @isc_buffer_forward(%struct.isc_buffer* noundef nonnull %9, i32 noundef %209)
  %284 = load i32, i32* %105, align 8, !tbaa !134
  %285 = load i32, i32* %107, align 4, !tbaa !87
  %286 = sub i32 %284, %285
  %287 = icmp ult i32 %286, 2
  br i1 %287, label %290, label %288

288:                                              ; preds = %283
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %290, !llvm.loop !195

289:                                              ; preds = %277
  br label %290

290:                                              ; preds = %283, %277, %272, %289, %288
  %291 = phi i32 [ 14, %288 ], [ 0, %289 ], [ 8, %272 ], [ 1, %277 ], [ 8, %283 ]
  %292 = phi i32 [ 0, %288 ], [ %282, %289 ], [ 19, %272 ], [ %282, %277 ], [ 19, %283 ]
  %293 = phi i32 [ %198, %288 ], [ %198, %289 ], [ %198, %272 ], [ %282, %277 ], [ %198, %283 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %191) #21
  switch i32 %291, label %814 [
    i32 0, label %548
    i32 14, label %254
    i32 8, label %812
  ]

294:                                              ; preds = %236
  %295 = load i32, i32* %105, align 8, !tbaa !134
  %296 = load i32, i32* %107, align 4, !tbaa !87
  %297 = sub i32 %295, %296
  %298 = icmp ult i32 %297, 10
  br i1 %298, label %812, label %299

299:                                              ; preds = %294
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i64 0, i64 0))
  %300 = icmp eq i16 %205, 4
  br i1 %300, label %301, label %548

301:                                              ; preds = %299
  %302 = call fastcc i32 @isc_buffer_getuint32(%struct.isc_buffer* noundef nonnull %9)
  %303 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0), i32 noundef %302) #21
  %304 = call i64 @strlen(i8* noundef nonnull %12) #22
  %305 = load i32, i32* %105, align 8, !tbaa !134
  %306 = load i32, i32* %107, align 4, !tbaa !87
  %307 = sub i32 %305, %306
  %308 = zext i32 %307 to i64
  %309 = icmp ult i64 %304, %308
  br i1 %309, label %310, label %324

310:                                              ; preds = %301
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %311 = load i32, i32* %105, align 8, !tbaa !134
  %312 = load i32, i32* %107, align 4, !tbaa !87
  %313 = sub i32 %311, %312
  %314 = icmp ult i32 %313, 3
  br i1 %314, label %324, label %315

315:                                              ; preds = %310
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0))
  %316 = call i32 @dns_ttl_totext(i32 noundef %302, i1 noundef zeroext true, i1 noundef zeroext true, %struct.isc_buffer* noundef %4) #21
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %315
  %319 = load i32, i32* %105, align 8, !tbaa !134
  %320 = load i32, i32* %107, align 4, !tbaa !87
  %321 = sub i32 %319, %320
  %322 = icmp ult i32 %321, 3
  br i1 %322, label %324, label %323

323:                                              ; preds = %318
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i64 0, i64 0))
  br label %324, !llvm.loop !195

324:                                              ; preds = %318, %315, %310, %301, %323
  %325 = phi i32 [ 14, %323 ], [ 8, %301 ], [ 8, %310 ], [ 1, %315 ], [ 8, %318 ]
  %326 = phi i32 [ 0, %323 ], [ 19, %301 ], [ 19, %310 ], [ %316, %315 ], [ 19, %318 ]
  %327 = phi i32 [ %198, %323 ], [ %198, %301 ], [ %198, %310 ], [ %316, %315 ], [ %198, %318 ]
  switch i32 %325, label %814 [
    i32 14, label %254
    i32 8, label %812
  ]

328:                                              ; preds = %236
  %329 = load i32, i32* %105, align 8, !tbaa !134
  %330 = load i32, i32* %107, align 4, !tbaa !87
  %331 = sub i32 %329, %330
  %332 = icmp ult i32 %331, 17
  br i1 %332, label %812, label %333

333:                                              ; preds = %328
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i64 0, i64 0))
  %334 = icmp eq i16 %205, 2
  br i1 %334, label %335, label %548

335:                                              ; preds = %333
  %336 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %337 = zext i16 %336 to i32
  %338 = udiv i32 %337, 10
  %339 = urem i32 %337, 10
  %340 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0), i32 noundef %338, i32 noundef %339) #21
  %341 = call i64 @strlen(i8* noundef nonnull %12) #22
  %342 = load i32, i32* %105, align 8, !tbaa !134
  %343 = load i32, i32* %107, align 4, !tbaa !87
  %344 = sub i32 %342, %343
  %345 = zext i32 %344 to i64
  %346 = icmp ult i64 %341, %345
  br i1 %346, label %347, label %353

347:                                              ; preds = %335
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %348 = load i32, i32* %105, align 8, !tbaa !134
  %349 = load i32, i32* %107, align 4, !tbaa !87
  %350 = sub i32 %348, %349
  %351 = icmp ult i32 %350, 7
  br i1 %351, label %353, label %352

352:                                              ; preds = %347
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0))
  br label %353, !llvm.loop !195

353:                                              ; preds = %347, %335, %352
  %354 = phi i32 [ 14, %352 ], [ 8, %335 ], [ 8, %347 ]
  %355 = phi i32 [ %235, %352 ], [ 19, %335 ], [ 19, %347 ]
  switch i32 %354, label %814 [
    i32 14, label %254
    i32 8, label %812
  ]

356:                                              ; preds = %236
  %357 = load i32, i32* %105, align 8, !tbaa !134
  %358 = load i32, i32* %107, align 4, !tbaa !87
  %359 = sub i32 %357, %358
  %360 = icmp ult i32 %359, 7
  br i1 %360, label %812, label %361

361:                                              ; preds = %356
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0))
  %362 = icmp eq i16 %205, 0
  br i1 %362, label %372, label %363

363:                                              ; preds = %361
  %364 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i32 noundef %209) #21
  %365 = call i64 @strlen(i8* noundef nonnull %12) #22
  %366 = load i32, i32* %105, align 8, !tbaa !134
  %367 = load i32, i32* %107, align 4, !tbaa !87
  %368 = sub i32 %366, %367
  %369 = zext i32 %368 to i64
  %370 = icmp ult i64 %365, %369
  br i1 %370, label %371, label %812

371:                                              ; preds = %363
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  call fastcc void @isc_buffer_forward(%struct.isc_buffer* noundef nonnull %9, i32 noundef %209)
  br label %372

372:                                              ; preds = %371, %361
  %373 = load i32, i32* %105, align 8, !tbaa !134
  %374 = load i32, i32* %107, align 4, !tbaa !87
  %375 = sub i32 %373, %374
  %376 = icmp ult i32 %375, 2
  br i1 %376, label %812, label %377

377:                                              ; preds = %372
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %254

378:                                              ; preds = %236
  %379 = load i32, i32* %105, align 8, !tbaa !134
  %380 = load i32, i32* %107, align 4, !tbaa !87
  %381 = sub i32 %379, %380
  %382 = icmp ult i32 %381, 11
  br i1 %382, label %812, label %383

383:                                              ; preds = %378
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i64 0, i64 0))
  %384 = icmp ne i16 %205, 0
  %385 = and i32 %209, 1
  %386 = icmp eq i32 %385, 0
  %387 = select i1 %384, i1 %386, i1 false
  br i1 %387, label %388, label %548

388:                                              ; preds = %383, %400
  %389 = phi i16 [ %401, %400 ], [ %205, %383 ]
  %390 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0), %400 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %383 ]
  %391 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %392 = zext i16 %391 to i32
  %393 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), i8* noundef %390, i32 noundef %392) #21
  %394 = call i64 @strlen(i8* noundef nonnull %12) #22
  %395 = load i32, i32* %105, align 8, !tbaa !134
  %396 = load i32, i32* %107, align 4, !tbaa !87
  %397 = sub i32 %395, %396
  %398 = zext i32 %397 to i64
  %399 = icmp ult i64 %394, %398
  br i1 %399, label %400, label %409

400:                                              ; preds = %388
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %401 = add i16 %389, -2
  %402 = icmp eq i16 %401, 0
  br i1 %402, label %403, label %388, !llvm.loop !196

403:                                              ; preds = %400
  %404 = load i32, i32* %105, align 8, !tbaa !134
  %405 = load i32, i32* %107, align 4, !tbaa !87
  %406 = sub i32 %404, %405
  %407 = icmp ult i32 %406, 2
  br i1 %407, label %409, label %408

408:                                              ; preds = %403
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %409, !llvm.loop !195

409:                                              ; preds = %388, %403, %408
  %410 = phi i32 [ 14, %408 ], [ 8, %403 ], [ 8, %388 ]
  %411 = phi i32 [ %235, %408 ], [ 19, %403 ], [ 19, %388 ]
  switch i32 %410, label %814 [
    i32 14, label %254
    i32 8, label %812
  ]

412:                                              ; preds = %236
  %413 = load i32, i32* %105, align 8, !tbaa !134
  %414 = load i32, i32* %107, align 4, !tbaa !87
  %415 = sub i32 %413, %414
  %416 = icmp ult i32 %415, 7
  br i1 %416, label %812, label %417

417:                                              ; preds = %412
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i64 0, i64 0))
  %418 = icmp ugt i16 %205, 1
  br i1 %418, label %419, label %465

419:                                              ; preds = %417
  %420 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %421 = zext i16 %420 to i32
  %422 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0), i32 noundef %421) #21
  %423 = call i64 @strlen(i8* noundef nonnull %12) #22
  %424 = load i32, i32* %105, align 8, !tbaa !134
  %425 = load i32, i32* %107, align 4, !tbaa !87
  %426 = sub i32 %424, %425
  %427 = zext i32 %426 to i64
  %428 = icmp ult i64 %423, %427
  br i1 %428, label %429, label %461

429:                                              ; preds = %419
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %430 = zext i16 %420 to i64
  %431 = icmp ult i16 %420, 25
  br i1 %431, label %432, label %452

432:                                              ; preds = %429
  %433 = load i32, i32* %105, align 8, !tbaa !134
  %434 = load i32, i32* %107, align 4, !tbaa !87
  %435 = sub i32 %433, %434
  %436 = icmp ult i32 %435, 3
  br i1 %436, label %461, label %437

437:                                              ; preds = %432
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0))
  %438 = getelementptr inbounds [25 x i8*], [25 x i8*]* @edetext, i64 0, i64 %430
  %439 = load i8*, i8** %438, align 8, !tbaa !5
  %440 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %439) #22
  %441 = load i32, i32* %105, align 8, !tbaa !134
  %442 = load i32, i32* %107, align 4, !tbaa !87
  %443 = sub i32 %441, %442
  %444 = zext i32 %443 to i64
  %445 = icmp ult i64 %440, %444
  br i1 %445, label %446, label %461

446:                                              ; preds = %437
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %439)
  %447 = load i32, i32* %105, align 8, !tbaa !134
  %448 = load i32, i32* %107, align 4, !tbaa !87
  %449 = sub i32 %447, %448
  %450 = icmp ult i32 %449, 2
  br i1 %450, label %461, label %451

451:                                              ; preds = %446
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0))
  br label %452

452:                                              ; preds = %451, %429
  %453 = add i16 %205, -2
  %454 = icmp eq i16 %453, 0
  br i1 %454, label %461, label %455

455:                                              ; preds = %452
  %456 = load i32, i32* %105, align 8, !tbaa !134
  %457 = load i32, i32* %107, align 4, !tbaa !87
  %458 = sub i32 %456, %457
  %459 = icmp ult i32 %458, 2
  br i1 %459, label %461, label %460

460:                                              ; preds = %455
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0))
  br label %461

461:                                              ; preds = %452, %460, %455, %446, %437, %432, %419
  %462 = phi i1 [ true, %452 ], [ true, %460 ], [ false, %455 ], [ false, %446 ], [ false, %437 ], [ false, %432 ], [ false, %419 ]
  %463 = phi i16 [ %453, %452 ], [ %453, %460 ], [ %453, %455 ], [ %205, %446 ], [ %205, %437 ], [ %205, %432 ], [ %205, %419 ]
  %464 = phi i32 [ %235, %452 ], [ %235, %460 ], [ 19, %455 ], [ 19, %446 ], [ 19, %437 ], [ 19, %432 ], [ 19, %419 ]
  br i1 %462, label %548, label %812

465:                                              ; preds = %417
  %466 = icmp eq i16 %205, 1
  br i1 %466, label %467, label %548

467:                                              ; preds = %465
  %468 = load i8*, i8** %190, align 8, !tbaa !88
  %469 = load i32, i32* %183, align 8, !tbaa !96
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %468, i64 %470
  %472 = load i8, i8* %471, align 1, !tbaa !12
  %473 = zext i8 %472 to i32
  %474 = tail call i16** @__ctype_b_loc() #23
  %475 = load i16*, i16** %474, align 8, !tbaa !5
  %476 = zext i8 %472 to i64
  %477 = getelementptr inbounds i16, i16* %475, i64 %476
  %478 = load i16, i16* %477, align 2, !tbaa !13
  %479 = and i16 %478, 16384
  %480 = icmp eq i16 %479, 0
  %481 = select i1 %480, i32 46, i32 %473
  %482 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i64 0, i64 0), i32 noundef %473, i32 noundef %481) #21
  call fastcc void @isc_buffer_forward(%struct.isc_buffer* noundef nonnull %9, i32 noundef 1)
  %483 = call i64 @strlen(i8* noundef nonnull %12) #22
  %484 = load i32, i32* %105, align 8, !tbaa !134
  %485 = load i32, i32* %107, align 4, !tbaa !87
  %486 = sub i32 %484, %485
  %487 = zext i32 %486 to i64
  %488 = icmp ult i64 %483, %487
  br i1 %488, label %489, label %812

489:                                              ; preds = %467
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %254

490:                                              ; preds = %236
  %491 = load i32, i32* %105, align 8, !tbaa !134
  %492 = load i32, i32* %107, align 4, !tbaa !87
  %493 = sub i32 %491, %492
  %494 = icmp ult i32 %493, 14
  br i1 %494, label %508, label %495

495:                                              ; preds = %490
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.105, i64 0, i64 0))
  %496 = icmp eq i16 %205, 2
  br i1 %496, label %497, label %508

497:                                              ; preds = %495
  %498 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %499 = zext i16 %498 to i32
  %500 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i32 noundef %499) #21
  %501 = call i64 @strlen(i8* noundef nonnull %12) #22
  %502 = load i32, i32* %105, align 8, !tbaa !134
  %503 = load i32, i32* %107, align 4, !tbaa !87
  %504 = sub i32 %502, %503
  %505 = zext i32 %504 to i64
  %506 = icmp ult i64 %501, %505
  br i1 %506, label %507, label %508

507:                                              ; preds = %497
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %508, !llvm.loop !195

508:                                              ; preds = %495, %497, %490, %507
  %509 = phi i32 [ 14, %507 ], [ 8, %490 ], [ 8, %497 ], [ 0, %495 ]
  %510 = phi i16 [ 0, %507 ], [ %205, %490 ], [ %205, %497 ], [ %205, %495 ]
  %511 = phi i32 [ %235, %507 ], [ 19, %490 ], [ 19, %497 ], [ %235, %495 ]
  switch i32 %509, label %814 [
    i32 0, label %548
    i32 14, label %254
    i32 8, label %812
  ]

512:                                              ; preds = %236
  %513 = load i32, i32* %105, align 8, !tbaa !134
  %514 = load i32, i32* %107, align 4, !tbaa !87
  %515 = sub i32 %513, %514
  %516 = icmp ult i32 %515, 14
  br i1 %516, label %530, label %517

517:                                              ; preds = %512
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i64 0, i64 0))
  %518 = icmp eq i16 %205, 2
  br i1 %518, label %519, label %530

519:                                              ; preds = %517
  %520 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %521 = zext i16 %520 to i32
  %522 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i32 noundef %521) #21
  %523 = call i64 @strlen(i8* noundef nonnull %12) #22
  %524 = load i32, i32* %105, align 8, !tbaa !134
  %525 = load i32, i32* %107, align 4, !tbaa !87
  %526 = sub i32 %524, %525
  %527 = zext i32 %526 to i64
  %528 = icmp ult i64 %523, %527
  br i1 %528, label %529, label %530

529:                                              ; preds = %519
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %530, !llvm.loop !195

530:                                              ; preds = %517, %519, %512, %529
  %531 = phi i32 [ 14, %529 ], [ 8, %512 ], [ 8, %519 ], [ 0, %517 ]
  %532 = phi i16 [ 0, %529 ], [ %205, %512 ], [ %205, %519 ], [ %205, %517 ]
  %533 = phi i32 [ %235, %529 ], [ 19, %512 ], [ 19, %519 ], [ %235, %517 ]
  switch i32 %531, label %814 [
    i32 0, label %548
    i32 14, label %254
    i32 8, label %812
  ]

534:                                              ; preds = %236
  %535 = load i32, i32* %105, align 8, !tbaa !134
  %536 = load i32, i32* %107, align 4, !tbaa !87
  %537 = sub i32 %535, %536
  %538 = icmp ult i32 %537, 7
  br i1 %538, label %812, label %539

539:                                              ; preds = %534
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i64 0, i64 0))
  %540 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), i32 noundef %237) #21
  %541 = call i64 @strlen(i8* noundef nonnull %12) #22
  %542 = load i32, i32* %105, align 8, !tbaa !134
  %543 = load i32, i32* %107, align 4, !tbaa !87
  %544 = sub i32 %542, %543
  %545 = zext i32 %544 to i64
  %546 = icmp ult i64 %541, %545
  br i1 %546, label %547, label %812

547:                                              ; preds = %539
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %548

548:                                              ; preds = %461, %265, %290, %333, %383, %508, %530, %547, %465, %299, %271, %243
  %549 = phi i16 [ %205, %243 ], [ %205, %265 ], [ %205, %271 ], [ %205, %290 ], [ %205, %299 ], [ %205, %333 ], [ %205, %383 ], [ %463, %461 ], [ %205, %465 ], [ %510, %508 ], [ %532, %530 ], [ %205, %547 ]
  %550 = phi i32 [ %235, %243 ], [ %235, %265 ], [ %235, %271 ], [ %292, %290 ], [ %235, %299 ], [ %235, %333 ], [ %235, %383 ], [ %464, %461 ], [ %235, %465 ], [ %511, %508 ], [ %533, %530 ], [ %235, %547 ]
  %551 = phi i32 [ %198, %243 ], [ %198, %265 ], [ %198, %271 ], [ %293, %290 ], [ %198, %299 ], [ %198, %333 ], [ %198, %383 ], [ %198, %461 ], [ %198, %465 ], [ %198, %508 ], [ %198, %530 ], [ %198, %547 ]
  %552 = zext i16 %549 to i32
  %553 = icmp eq i16 %549, 0
  br i1 %553, label %692, label %554

554:                                              ; preds = %548
  %555 = load i32, i32* %105, align 8, !tbaa !134
  %556 = load i32, i32* %107, align 4, !tbaa !87
  %557 = sub i32 %555, %556
  %558 = icmp ult i32 %557, 2
  br i1 %558, label %688, label %559

559:                                              ; preds = %554
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0))
  %560 = load i8*, i8** %193, align 8, !tbaa !88
  %561 = load i32, i32* %183, align 8, !tbaa !96
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds i8, i8* %560, i64 %562
  %564 = icmp eq i16 %204, 15
  br i1 %564, label %565, label %568

565:                                              ; preds = %559
  %566 = zext i16 %549 to i64
  %567 = call zeroext i1 @isc_utf8_valid(i8* noundef %563, i64 noundef %566) #21
  br label %568

568:                                              ; preds = %565, %559
  %569 = phi i1 [ %567, %565 ], [ false, %559 ]
  br i1 %569, label %595, label %570

570:                                              ; preds = %568
  %571 = icmp eq i16 %204, 10
  %572 = select i1 %571, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0)
  %573 = call i32 @llvm.umax.i32(i32 %552, i32 1)
  %574 = zext i32 %573 to i64
  br label %578

575:                                              ; preds = %592
  %576 = add nuw nsw i64 %579, 1
  %577 = icmp eq i64 %576, %574
  br i1 %577, label %595, label %578, !llvm.loop !197

578:                                              ; preds = %570, %575
  %579 = phi i64 [ 0, %570 ], [ %576, %575 ]
  %580 = phi i32 [ %550, %570 ], [ %594, %575 ]
  %581 = getelementptr inbounds i8, i8* %563, i64 %579
  %582 = load i8, i8* %581, align 1, !tbaa !12
  %583 = zext i8 %582 to i32
  %584 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i32 noundef %583, i8* noundef %572) #21
  %585 = call i64 @strlen(i8* noundef nonnull %12) #22
  %586 = load i32, i32* %105, align 8, !tbaa !134
  %587 = load i32, i32* %107, align 4, !tbaa !87
  %588 = sub i32 %586, %587
  %589 = zext i32 %588 to i64
  %590 = icmp ult i64 %585, %589
  br i1 %590, label %591, label %592

591:                                              ; preds = %578
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %592

592:                                              ; preds = %578, %591
  %593 = phi i32 [ 0, %591 ], [ 8, %578 ]
  %594 = phi i32 [ %580, %591 ], [ 19, %578 ]
  br i1 %590, label %575, label %688

595:                                              ; preds = %575, %568
  %596 = phi i32 [ %550, %568 ], [ %594, %575 ]
  call fastcc void @isc_buffer_forward(%struct.isc_buffer* noundef nonnull %9, i32 noundef %552)
  switch i16 %204, label %641 [
    i16 10, label %597
    i16 8, label %636
  ]

597:                                              ; preds = %595
  %598 = load i16, i16* %194, align 4
  %599 = and i16 %598, 512
  %600 = icmp ne i16 %599, 0
  %601 = icmp ugt i16 %549, 15
  %602 = select i1 %600, i1 %601, i1 false
  br i1 %602, label %603, label %609

603:                                              ; preds = %597
  %604 = load i32, i32* %105, align 8, !tbaa !134
  %605 = load i32, i32* %107, align 4, !tbaa !87
  %606 = sub i32 %604, %605
  %607 = icmp ult i32 %606, 8
  br i1 %607, label %688, label %608

608:                                              ; preds = %603
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0))
  br label %609

609:                                              ; preds = %608, %597
  %610 = load i16, i16* %194, align 4
  %611 = and i16 %610, 512
  %612 = icmp ne i16 %611, 0
  %613 = icmp ult i16 %549, 16
  %614 = select i1 %612, i1 %613, i1 false
  br i1 %614, label %615, label %621

615:                                              ; preds = %609
  %616 = load i32, i32* %105, align 8, !tbaa !134
  %617 = load i32, i32* %107, align 4, !tbaa !87
  %618 = sub i32 %616, %617
  %619 = icmp ult i32 %618, 10
  br i1 %619, label %688, label %620

620:                                              ; preds = %615
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i64 0, i64 0))
  br label %621

621:                                              ; preds = %620, %609
  %622 = load i16, i16* %194, align 4
  %623 = and i16 %622, 1024
  %624 = icmp eq i16 %623, 0
  br i1 %624, label %631, label %625

625:                                              ; preds = %621
  %626 = load i32, i32* %105, align 8, !tbaa !134
  %627 = load i32, i32* %107, align 4, !tbaa !87
  %628 = sub i32 %626, %627
  %629 = icmp ult i32 %628, 7
  br i1 %629, label %688, label %630

630:                                              ; preds = %625
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i64 0, i64 0))
  br label %631

631:                                              ; preds = %630, %621
  %632 = load i32, i32* %105, align 8, !tbaa !134
  %633 = load i32, i32* %107, align 4, !tbaa !87
  %634 = sub i32 %632, %633
  %635 = icmp ult i32 %634, 2
  br i1 %635, label %688, label %685, !llvm.loop !195

636:                                              ; preds = %595
  %637 = load i32, i32* %105, align 8, !tbaa !134
  %638 = load i32, i32* %107, align 4, !tbaa !87
  %639 = sub i32 %637, %638
  %640 = icmp ult i32 %639, 2
  br i1 %640, label %688, label %685, !llvm.loop !195

641:                                              ; preds = %595
  %642 = load i32, i32* %105, align 8, !tbaa !134
  %643 = load i32, i32* %107, align 4, !tbaa !87
  %644 = sub i32 %642, %643
  br i1 %564, label %647, label %645

645:                                              ; preds = %641
  %646 = icmp ult i32 %644, 3
  br i1 %646, label %688, label %649

647:                                              ; preds = %641
  %648 = icmp ult i32 %644, 2
  br i1 %648, label %688, label %649

649:                                              ; preds = %647, %645
  %650 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), %645 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0), %647 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %650)
  %651 = load i32, i32* %105, align 8, !tbaa !134
  %652 = load i32, i32* %107, align 4, !tbaa !87
  %653 = sub i32 %651, %652
  %654 = icmp ult i32 %653, %552
  br i1 %654, label %688, label %655

655:                                              ; preds = %649
  %656 = tail call i16** @__ctype_b_loc() #23
  %657 = call i32 @llvm.umax.i32(i32 %552, i32 1)
  %658 = zext i32 %657 to i64
  br label %659

659:                                              ; preds = %655, %674
  %660 = phi i64 [ 0, %655 ], [ %675, %674 ]
  %661 = load i16*, i16** %656, align 8, !tbaa !5
  %662 = getelementptr inbounds i8, i8* %563, i64 %660
  %663 = load i8, i8* %662, align 1, !tbaa !12
  %664 = zext i8 %663 to i64
  %665 = getelementptr inbounds i16, i16* %661, i64 %664
  %666 = load i16, i16* %665, align 2, !tbaa !13
  %667 = and i16 %666, 16384
  %668 = icmp ne i16 %667, 0
  %669 = icmp slt i8 %663, 0
  %670 = select i1 %569, i1 %669, i1 false
  %671 = select i1 %668, i1 true, i1 %670
  br i1 %671, label %672, label %673

672:                                              ; preds = %659
  call fastcc void @isc_buffer_putmem(%struct.isc_buffer* noundef %4, i8* noundef nonnull %662, i32 noundef 1)
  br label %674

673:                                              ; preds = %659
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i64 0, i64 0))
  br label %674

674:                                              ; preds = %672, %673
  %675 = add nuw nsw i64 %660, 1
  %676 = icmp eq i64 %675, %658
  br i1 %676, label %677, label %659, !llvm.loop !198

677:                                              ; preds = %674
  %678 = load i32, i32* %105, align 8, !tbaa !134
  %679 = load i32, i32* %107, align 4, !tbaa !87
  %680 = sub i32 %678, %679
  br i1 %564, label %683, label %681

681:                                              ; preds = %677
  %682 = icmp ult i32 %680, 3
  br i1 %682, label %688, label %685

683:                                              ; preds = %677
  %684 = icmp ult i32 %680, 2
  br i1 %684, label %688, label %685

685:                                              ; preds = %683, %681, %636, %631
  %686 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %631 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %636 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i64 0, i64 0), %681 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0), %683 ]
  %687 = phi i32 [ 14, %631 ], [ 14, %636 ], [ 0, %681 ], [ 0, %683 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %686)
  br label %688

688:                                              ; preds = %592, %685, %683, %681, %649, %647, %645, %636, %631, %625, %615, %603, %554
  %689 = phi i32 [ 8, %554 ], [ 8, %603 ], [ 8, %615 ], [ 8, %625 ], [ 8, %631 ], [ 8, %636 ], [ 8, %645 ], [ 8, %647 ], [ 1, %649 ], [ 8, %681 ], [ 8, %683 ], [ %687, %685 ], [ %593, %592 ]
  %690 = phi i32 [ 19, %554 ], [ 19, %603 ], [ 19, %615 ], [ 19, %625 ], [ 19, %631 ], [ 19, %636 ], [ 19, %645 ], [ 19, %647 ], [ %596, %649 ], [ 19, %681 ], [ 19, %683 ], [ %596, %685 ], [ %594, %592 ]
  %691 = phi i32 [ %551, %554 ], [ %551, %603 ], [ %551, %615 ], [ %551, %625 ], [ %551, %631 ], [ %551, %636 ], [ %551, %645 ], [ %551, %647 ], [ 19, %649 ], [ %551, %681 ], [ %551, %683 ], [ %551, %685 ], [ %551, %592 ]
  switch i32 %689, label %814 [
    i32 0, label %692
    i32 14, label %254
    i32 8, label %812
  ]

692:                                              ; preds = %688, %548
  %693 = phi i32 [ %690, %688 ], [ %550, %548 ]
  %694 = phi i32 [ %691, %688 ], [ %551, %548 ]
  %695 = load i32, i32* %105, align 8, !tbaa !134
  %696 = load i32, i32* %107, align 4, !tbaa !87
  %697 = sub i32 %695, %696
  %698 = icmp ult i32 %697, 2
  br i1 %698, label %812, label %699

699:                                              ; preds = %692
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %254

700:                                              ; preds = %33
  %701 = call %struct.dns_rdataset* @dns_message_gettsig(%struct.dns_message* noundef nonnull %0, %struct.dns_name** noundef nonnull %6)
  %702 = icmp eq %struct.dns_rdataset* %701, null
  br i1 %702, label %814, label %703

703:                                              ; preds = %700
  %704 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %705 = and i64 %704, 3221225472
  %706 = icmp eq i64 %705, 0
  br i1 %706, label %729, label %707

707:                                              ; preds = %703
  %708 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %709 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %710 = load i64, i64* %709, align 8, !tbaa !38
  %711 = icmp eq i64 %710, 0
  br i1 %711, label %729, label %712

712:                                              ; preds = %707
  %713 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %714 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %715

715:                                              ; preds = %712, %724
  %716 = phi i32 [ 0, %712 ], [ %725, %724 ]
  %717 = load i8*, i8** %708, align 8, !tbaa !37
  %718 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %717) #22
  %719 = load i32, i32* %713, align 8, !tbaa !134
  %720 = load i32, i32* %714, align 4, !tbaa !87
  %721 = sub i32 %719, %720
  %722 = zext i32 %721 to i64
  %723 = icmp ult i64 %718, %722
  br i1 %723, label %724, label %729

724:                                              ; preds = %715
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %717)
  %725 = add i32 %716, 1
  %726 = zext i32 %725 to i64
  %727 = load i64, i64* %709, align 8, !tbaa !38
  %728 = icmp ugt i64 %727, %726
  br i1 %728, label %715, label %729, !llvm.loop !199

729:                                              ; preds = %715, %724, %707, %703
  %730 = phi i32 [ 30, %703 ], [ 0, %707 ], [ 0, %724 ], [ 8, %715 ]
  switch i32 %730, label %814 [
    i32 0, label %731
    i32 30, label %731
  ]

731:                                              ; preds = %729, %729
  %732 = and i32 %3, 1
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %742

734:                                              ; preds = %731
  %735 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %736 = load i32, i32* %735, align 8, !tbaa !134
  %737 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %738 = load i32, i32* %737, align 4, !tbaa !87
  %739 = sub i32 %736, %738
  %740 = icmp ult i32 %739, 24
  br i1 %740, label %814, label %741

741:                                              ; preds = %734
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i64 0, i64 0))
  br label %742

742:                                              ; preds = %741, %731
  %743 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %744 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48
  %745 = call i32 @dns_master_rdatasettotext(%struct.dns_name* noundef %743, %struct.dns_rdataset* noundef nonnull %701, %struct.dns_master_style* noundef %2, %struct.dns_indent_t* noundef nonnull %744, %struct.isc_buffer* noundef %4) #21
  %746 = and i32 %3, 3
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %748, label %814

748:                                              ; preds = %742
  %749 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %750 = load i32, i32* %749, align 8, !tbaa !134
  %751 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %752 = load i32, i32* %751, align 4, !tbaa !87
  %753 = sub i32 %750, %752
  %754 = icmp ult i32 %753, 2
  br i1 %754, label %814, label %755

755:                                              ; preds = %748
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %814

756:                                              ; preds = %33
  %757 = call %struct.dns_rdataset* @dns_message_getsig0(%struct.dns_message* noundef nonnull %0, %struct.dns_name** noundef nonnull %6)
  %758 = icmp eq %struct.dns_rdataset* %757, null
  br i1 %758, label %814, label %759

759:                                              ; preds = %756
  %760 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %761 = and i64 %760, 3221225472
  %762 = icmp eq i64 %761, 0
  br i1 %762, label %785, label %763

763:                                              ; preds = %759
  %764 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %765 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %766 = load i64, i64* %765, align 8, !tbaa !38
  %767 = icmp eq i64 %766, 0
  br i1 %767, label %785, label %768

768:                                              ; preds = %763
  %769 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %770 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %771

771:                                              ; preds = %768, %780
  %772 = phi i32 [ 0, %768 ], [ %781, %780 ]
  %773 = load i8*, i8** %764, align 8, !tbaa !37
  %774 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %773) #22
  %775 = load i32, i32* %769, align 8, !tbaa !134
  %776 = load i32, i32* %770, align 4, !tbaa !87
  %777 = sub i32 %775, %776
  %778 = zext i32 %777 to i64
  %779 = icmp ult i64 %774, %778
  br i1 %779, label %780, label %785

780:                                              ; preds = %771
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %773)
  %781 = add i32 %772, 1
  %782 = zext i32 %781 to i64
  %783 = load i64, i64* %765, align 8, !tbaa !38
  %784 = icmp ugt i64 %783, %782
  br i1 %784, label %771, label %785, !llvm.loop !200

785:                                              ; preds = %771, %780, %763, %759
  %786 = phi i32 [ 35, %759 ], [ 0, %763 ], [ 0, %780 ], [ 8, %771 ]
  switch i32 %786, label %814 [
    i32 0, label %787
    i32 35, label %787
  ]

787:                                              ; preds = %785, %785
  %788 = and i32 %3, 1
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %798

790:                                              ; preds = %787
  %791 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %792 = load i32, i32* %791, align 8, !tbaa !134
  %793 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %794 = load i32, i32* %793, align 4, !tbaa !87
  %795 = sub i32 %792, %794
  %796 = icmp ult i32 %795, 24
  br i1 %796, label %814, label %797

797:                                              ; preds = %790
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.120, i64 0, i64 0))
  br label %798

798:                                              ; preds = %797, %787
  %799 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %800 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48
  %801 = call i32 @dns_master_rdatasettotext(%struct.dns_name* noundef %799, %struct.dns_rdataset* noundef nonnull %757, %struct.dns_master_style* noundef %2, %struct.dns_indent_t* noundef nonnull %800, %struct.isc_buffer* noundef %4) #21
  %802 = and i32 %3, 3
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %814

804:                                              ; preds = %798
  %805 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %806 = load i32, i32* %805, align 8, !tbaa !134
  %807 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %808 = load i32, i32* %807, align 4, !tbaa !87
  %809 = sub i32 %806, %808
  %810 = icmp ult i32 %809, 2
  br i1 %810, label %814, label %811

811:                                              ; preds = %804
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %814

812:                                              ; preds = %692, %539, %534, %467, %461, %412, %378, %372, %363, %356, %328, %294, %266, %260, %248, %238, %688, %530, %508, %409, %353, %324, %290, %233
  %813 = phi i32 [ 19, %692 ], [ 19, %539 ], [ 19, %534 ], [ 19, %467 ], [ 19, %412 ], [ 19, %378 ], [ 19, %372 ], [ 19, %363 ], [ 19, %356 ], [ 19, %328 ], [ 19, %294 ], [ 19, %266 ], [ 19, %260 ], [ 19, %248 ], [ 19, %238 ], [ %533, %530 ], [ %511, %508 ], [ %464, %461 ], [ %411, %409 ], [ %355, %353 ], [ %326, %324 ], [ %292, %290 ], [ %690, %688 ], [ %235, %233 ]
  br label %814

814:                                              ; preds = %233, %290, %324, %353, %409, %508, %530, %688, %245, %254, %812, %176, %68, %104, %111, %123, %132, %146, %147, %155, %160, %161, %734, %748, %790, %804, %33, %811, %798, %756, %755, %742, %700, %173, %34, %785, %729, %102, %66, %31
  %815 = phi i32 [ %32, %31 ], [ 0, %34 ], [ 0, %173 ], [ 0, %700 ], [ %745, %742 ], [ %745, %755 ], [ 0, %756 ], [ %801, %798 ], [ %801, %811 ], [ 19, %785 ], [ 19, %729 ], [ 19, %66 ], [ 19, %102 ], [ 19, %68 ], [ 19, %104 ], [ 19, %111 ], [ 19, %123 ], [ 19, %132 ], [ 19, %146 ], [ 19, %147 ], [ 19, %155 ], [ 19, %160 ], [ 19, %161 ], [ 19, %734 ], [ 19, %748 ], [ 19, %790 ], [ 19, %804 ], [ 34, %33 ], [ 0, %176 ], [ %813, %812 ], [ %198, %233 ], [ %293, %290 ], [ %327, %324 ], [ %198, %353 ], [ %198, %409 ], [ %198, %508 ], [ %198, %530 ], [ %691, %688 ], [ %246, %245 ], [ 0, %254 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #21
  call void @llvm.lifetime.end.p0i8(i64 15, i8* nonnull %12) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #21
  ret i32 %815
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dns_message_pseudosectiontoyaml(%struct.dns_message* noundef %0, i32 noundef %1, %struct.dns_master_style* noundef %2, i32 noundef %3, %struct.isc_buffer* noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.dns_name*, align 8
  %7 = alloca [11 x i8], align 1
  %8 = alloca %struct.dns_rdata, align 8
  %9 = alloca %struct.isc_buffer, align 8
  %10 = alloca %struct.isc_buffer, align 8
  %11 = bitcast %struct.dns_name** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #21
  store %struct.dns_name* null, %struct.dns_name** %6, align 8, !tbaa !5
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %12) #21
  %13 = bitcast %struct.dns_rdata* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #21
  %14 = bitcast %struct.isc_buffer* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %14) #21
  %15 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !40
  %17 = icmp eq i32 %16, 1297303360
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3466, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48
  %21 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %22 = load i64, i64* %21, align 8, !tbaa !38
  switch i32 %1, label %1229 [
    i32 0, label %23
    i32 1, label %1134
    i32 2, label %1180
  ]

23:                                               ; preds = %19
  %24 = tail call %struct.dns_rdataset* @dns_message_getopt(%struct.dns_message* noundef %0)
  %25 = icmp eq %struct.dns_rdataset* %24, null
  br i1 %25, label %1229, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %28 = and i64 %27, 3221225472
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %32 = load i64, i64* %21, align 8, !tbaa !38
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %36 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %37

37:                                               ; preds = %34, %46
  %38 = phi i32 [ 0, %34 ], [ %47, %46 ]
  %39 = load i8*, i8** %31, align 8, !tbaa !37
  %40 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %39) #22
  %41 = load i32, i32* %35, align 8, !tbaa !134
  %42 = load i32, i32* %36, align 4, !tbaa !87
  %43 = sub i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %39)
  %47 = add i32 %38, 1
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %21, align 8, !tbaa !38
  %50 = icmp ugt i64 %49, %48
  br i1 %50, label %37, label %51, !llvm.loop !201

51:                                               ; preds = %37, %46, %30, %26
  %52 = phi i32 [ 4, %26 ], [ 0, %30 ], [ 0, %46 ], [ 3, %37 ]
  %53 = phi i32 [ 0, %26 ], [ 0, %30 ], [ 0, %46 ], [ 19, %37 ]
  switch i32 %52, label %1231 [
    i32 0, label %54
    i32 4, label %54
    i32 3, label %1229
  ]

54:                                               ; preds = %51, %51
  %55 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %56 = load i32, i32* %55, align 8, !tbaa !134
  %57 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %58 = load i32, i32* %57, align 4, !tbaa !87
  %59 = sub i32 %56, %58
  %60 = icmp ult i32 %59, 20
  br i1 %60, label %1229, label %61

61:                                               ; preds = %54
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.246, i64 0, i64 0))
  %62 = load i64, i64* %21, align 8, !tbaa !38
  %63 = add i64 %62, 1
  store i64 %63, i64* %21, align 8, !tbaa !38
  %64 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %65 = and i64 %64, 3221225472
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %69 = load i64, i64* %21, align 8, !tbaa !38
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %67, %80
  %72 = phi i32 [ %81, %80 ], [ 0, %67 ]
  %73 = load i8*, i8** %68, align 8, !tbaa !37
  %74 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %73) #22
  %75 = load i32, i32* %55, align 8, !tbaa !134
  %76 = load i32, i32* %57, align 4, !tbaa !87
  %77 = sub i32 %75, %76
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %73)
  %81 = add i32 %72, 1
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %21, align 8, !tbaa !38
  %84 = icmp ugt i64 %83, %82
  br i1 %84, label %71, label %85, !llvm.loop !202

85:                                               ; preds = %71, %80, %67, %61
  %86 = phi i32 [ 9, %61 ], [ 0, %67 ], [ 0, %80 ], [ 3, %71 ]
  %87 = phi i32 [ %53, %61 ], [ %53, %67 ], [ %53, %80 ], [ 19, %71 ]
  switch i32 %86, label %1231 [
    i32 0, label %88
    i32 9, label %88
    i32 3, label %1229
  ]

88:                                               ; preds = %85, %85
  %89 = load i32, i32* %55, align 8, !tbaa !134
  %90 = load i32, i32* %57, align 4, !tbaa !87
  %91 = sub i32 %89, %90
  %92 = icmp ult i32 %91, 7
  br i1 %92, label %1229, label %93

93:                                               ; preds = %88
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.247, i64 0, i64 0))
  %94 = load i64, i64* %21, align 8, !tbaa !38
  %95 = add i64 %94, 1
  store i64 %95, i64* %21, align 8, !tbaa !38
  %96 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %97 = and i64 %96, 3221225472
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %101 = load i64, i64* %21, align 8, !tbaa !38
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %99, %112
  %104 = phi i32 [ %113, %112 ], [ 0, %99 ]
  %105 = load i8*, i8** %100, align 8, !tbaa !37
  %106 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %105) #22
  %107 = load i32, i32* %55, align 8, !tbaa !134
  %108 = load i32, i32* %57, align 4, !tbaa !87
  %109 = sub i32 %107, %108
  %110 = zext i32 %109 to i64
  %111 = icmp ult i64 %106, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %105)
  %113 = add i32 %104, 1
  %114 = zext i32 %113 to i64
  %115 = load i64, i64* %21, align 8, !tbaa !38
  %116 = icmp ugt i64 %115, %114
  br i1 %116, label %103, label %117, !llvm.loop !203

117:                                              ; preds = %103, %112, %99, %93
  %118 = phi i32 [ 14, %93 ], [ 0, %99 ], [ 0, %112 ], [ 3, %103 ]
  %119 = phi i32 [ %87, %93 ], [ %87, %99 ], [ %87, %112 ], [ 19, %103 ]
  switch i32 %118, label %1231 [
    i32 0, label %120
    i32 14, label %120
    i32 3, label %1229
  ]

120:                                              ; preds = %117, %117
  %121 = load i32, i32* %55, align 8, !tbaa !134
  %122 = load i32, i32* %57, align 4, !tbaa !87
  %123 = sub i32 %121, %122
  %124 = icmp ult i32 %123, 10
  br i1 %124, label %1229, label %125

125:                                              ; preds = %120
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.248, i64 0, i64 0))
  %126 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %24, i64 0, i32 5
  %127 = load i32, i32* %126, align 4, !tbaa !122
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  %130 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i32 noundef %129) #21
  %131 = call i64 @strlen(i8* noundef nonnull %12) #22
  %132 = load i32, i32* %55, align 8, !tbaa !134
  %133 = load i32, i32* %57, align 4, !tbaa !87
  %134 = sub i32 %132, %133
  %135 = zext i32 %134 to i64
  %136 = icmp ult i64 %131, %135
  br i1 %136, label %137, label %1229

137:                                              ; preds = %125
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %138 = load i32, i32* %55, align 8, !tbaa !134
  %139 = load i32, i32* %57, align 4, !tbaa !87
  %140 = sub i32 %138, %139
  %141 = icmp ult i32 %140, 2
  br i1 %141, label %1229, label %142

142:                                              ; preds = %137
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %143 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %144 = and i64 %143, 3221225472
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %148 = load i64, i64* %21, align 8, !tbaa !38
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %146, %159
  %151 = phi i32 [ %160, %159 ], [ 0, %146 ]
  %152 = load i8*, i8** %147, align 8, !tbaa !37
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %152) #22
  %154 = load i32, i32* %55, align 8, !tbaa !134
  %155 = load i32, i32* %57, align 4, !tbaa !87
  %156 = sub i32 %154, %155
  %157 = zext i32 %156 to i64
  %158 = icmp ult i64 %153, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %150
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %152)
  %160 = add i32 %151, 1
  %161 = zext i32 %160 to i64
  %162 = load i64, i64* %21, align 8, !tbaa !38
  %163 = icmp ugt i64 %162, %161
  br i1 %163, label %150, label %164, !llvm.loop !204

164:                                              ; preds = %150, %159, %146, %142
  %165 = phi i32 [ 19, %142 ], [ 0, %146 ], [ 0, %159 ], [ 3, %150 ]
  %166 = phi i32 [ %119, %142 ], [ %119, %146 ], [ %119, %159 ], [ 19, %150 ]
  switch i32 %165, label %1231 [
    i32 0, label %167
    i32 19, label %167
    i32 3, label %1229
  ]

167:                                              ; preds = %164, %164
  %168 = load i32, i32* %55, align 8, !tbaa !134
  %169 = load i32, i32* %57, align 4, !tbaa !87
  %170 = sub i32 %168, %169
  %171 = icmp ult i32 %170, 7
  br i1 %171, label %1229, label %172

172:                                              ; preds = %167
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0))
  %173 = load i32, i32* %126, align 4, !tbaa !122
  %174 = and i32 %173, 32768
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %55, align 8, !tbaa !134
  %178 = load i32, i32* %57, align 4, !tbaa !87
  %179 = sub i32 %177, %178
  %180 = icmp ult i32 %179, 4
  br i1 %180, label %1229, label %181

181:                                              ; preds = %176
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0))
  br label %182

182:                                              ; preds = %181, %172
  %183 = load i32, i32* %55, align 8, !tbaa !134
  %184 = load i32, i32* %57, align 4, !tbaa !87
  %185 = sub i32 %183, %184
  %186 = icmp ult i32 %185, 2
  br i1 %186, label %1229, label %187

187:                                              ; preds = %182
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %188 = load i32, i32* %126, align 4, !tbaa !122
  %189 = and i32 %188, 32767
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %235, label %191

191:                                              ; preds = %187
  %192 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %193 = and i64 %192, 3221225472
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %213, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %197 = load i64, i64* %21, align 8, !tbaa !38
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %213, label %199

199:                                              ; preds = %195, %208
  %200 = phi i32 [ %209, %208 ], [ 0, %195 ]
  %201 = load i8*, i8** %196, align 8, !tbaa !37
  %202 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %201) #22
  %203 = load i32, i32* %55, align 8, !tbaa !134
  %204 = load i32, i32* %57, align 4, !tbaa !87
  %205 = sub i32 %203, %204
  %206 = zext i32 %205 to i64
  %207 = icmp ult i64 %202, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %201)
  %209 = add i32 %200, 1
  %210 = zext i32 %209 to i64
  %211 = load i64, i64* %21, align 8, !tbaa !38
  %212 = icmp ugt i64 %211, %210
  br i1 %212, label %199, label %213, !llvm.loop !205

213:                                              ; preds = %199, %208, %195, %191
  %214 = phi i32 [ 24, %191 ], [ 0, %195 ], [ 0, %208 ], [ 3, %199 ]
  %215 = phi i32 [ %166, %191 ], [ %166, %195 ], [ %166, %208 ], [ 19, %199 ]
  switch i32 %214, label %1231 [
    i32 0, label %216
    i32 24, label %216
    i32 3, label %1229
  ]

216:                                              ; preds = %213, %213
  %217 = load i32, i32* %55, align 8, !tbaa !134
  %218 = load i32, i32* %57, align 4, !tbaa !87
  %219 = sub i32 %217, %218
  %220 = icmp ult i32 %219, 6
  br i1 %220, label %1229, label %221

221:                                              ; preds = %216
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.249, i64 0, i64 0))
  %222 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i64 0, i64 0), i32 noundef %189) #21
  %223 = call i64 @strlen(i8* noundef nonnull %12) #22
  %224 = load i32, i32* %55, align 8, !tbaa !134
  %225 = load i32, i32* %57, align 4, !tbaa !87
  %226 = sub i32 %224, %225
  %227 = zext i32 %226 to i64
  %228 = icmp ult i64 %223, %227
  br i1 %228, label %229, label %1229

229:                                              ; preds = %221
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %230 = load i32, i32* %55, align 8, !tbaa !134
  %231 = load i32, i32* %57, align 4, !tbaa !87
  %232 = sub i32 %230, %231
  %233 = icmp ult i32 %232, 2
  br i1 %233, label %1229, label %234

234:                                              ; preds = %229
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %235

235:                                              ; preds = %187, %234
  %236 = phi i32 [ %215, %234 ], [ %166, %187 ]
  %237 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %238 = and i64 %237, 3221225472
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %258, label %240

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %242 = load i64, i64* %21, align 8, !tbaa !38
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %258, label %244

244:                                              ; preds = %240, %253
  %245 = phi i32 [ %254, %253 ], [ 0, %240 ]
  %246 = load i8*, i8** %241, align 8, !tbaa !37
  %247 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %246) #22
  %248 = load i32, i32* %55, align 8, !tbaa !134
  %249 = load i32, i32* %57, align 4, !tbaa !87
  %250 = sub i32 %248, %249
  %251 = zext i32 %250 to i64
  %252 = icmp ult i64 %247, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %244
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %246)
  %254 = add i32 %245, 1
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %21, align 8, !tbaa !38
  %257 = icmp ugt i64 %256, %255
  br i1 %257, label %244, label %258, !llvm.loop !206

258:                                              ; preds = %244, %253, %240, %235
  %259 = phi i32 [ 29, %235 ], [ 0, %240 ], [ 0, %253 ], [ 3, %244 ]
  %260 = phi i32 [ %236, %235 ], [ %236, %240 ], [ %236, %253 ], [ 19, %244 ]
  switch i32 %259, label %1231 [
    i32 0, label %261
    i32 29, label %261
    i32 3, label %1229
  ]

261:                                              ; preds = %258, %258
  %262 = load i32, i32* %55, align 8, !tbaa !134
  %263 = load i32, i32* %57, align 4, !tbaa !87
  %264 = sub i32 %262, %263
  %265 = icmp ult i32 %264, 6
  br i1 %265, label %1229, label %266

266:                                              ; preds = %261
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i64 0, i64 0))
  %267 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %24, i64 0, i32 3
  %268 = load i16, i16* %267, align 8, !tbaa !79
  %269 = zext i16 %268 to i32
  %270 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i32 noundef %269) #21
  %271 = call i64 @strlen(i8* noundef nonnull %12) #22
  %272 = load i32, i32* %55, align 8, !tbaa !134
  %273 = load i32, i32* %57, align 4, !tbaa !87
  %274 = sub i32 %272, %273
  %275 = zext i32 %274 to i64
  %276 = icmp ult i64 %271, %275
  br i1 %276, label %277, label %1229

277:                                              ; preds = %266
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %278 = call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef nonnull %24) #21
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %1229

280:                                              ; preds = %277
  call void @dns_rdata_init(%struct.dns_rdata* noundef nonnull %8) #21
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef nonnull %24, %struct.dns_rdata* noundef nonnull %8) #21
  %281 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %8, i64 0, i32 0
  %282 = load i8*, i8** %281, align 8, !tbaa !114
  %283 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %8, i64 0, i32 1
  %284 = load i32, i32* %283, align 8, !tbaa !115
  call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef nonnull %9, i8* noundef %282, i32 noundef %284)
  %285 = load i32, i32* %283, align 8, !tbaa !115
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef nonnull %9, i32 noundef %285)
  %286 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 3
  %287 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 4
  %288 = load i32, i32* %286, align 4, !tbaa !87
  %289 = load i32, i32* %287, align 8, !tbaa !96
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %1132, label %291

291:                                              ; preds = %280
  %292 = and i64 %95, 4294967295
  %293 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %294 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %295 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %296 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %297 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %298 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %299 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %300 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %301 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %302 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %303 = bitcast %struct.isc_buffer* %10 to i8*
  %304 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %305 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 1
  %306 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %307 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %308 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %309 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %310 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %9, i64 0, i32 1
  %311 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  br label %312

312:                                              ; preds = %291, %1128
  %313 = phi i32 [ %289, %291 ], [ %1130, %1128 ]
  %314 = phi i32 [ %288, %291 ], [ %1129, %1128 ]
  %315 = phi i32 [ 0, %291 ], [ %1127, %1128 ]
  store i64 %292, i64* %21, align 8, !tbaa !38
  %316 = sub i32 %314, %313
  %317 = icmp ugt i32 %316, 3
  br i1 %317, label %319, label %318

318:                                              ; preds = %312
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3533, i32 noundef 2, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.82, i64 0, i64 0)) #20
  unreachable

319:                                              ; preds = %312
  %320 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %321 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %322 = load i32, i32* %286, align 4, !tbaa !87
  %323 = load i32, i32* %287, align 8, !tbaa !96
  %324 = sub i32 %322, %323
  %325 = zext i16 %321 to i32
  %326 = icmp ult i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 3536, i32 noundef 2, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0)) #20
  unreachable

328:                                              ; preds = %319
  %329 = zext i16 %320 to i32
  switch i16 %320, label %934 [
    i16 1, label %330
    i16 3, label %369
    i16 10, label %399
    i16 8, label %429
    i16 9, label %481
    i16 11, label %534
    i16 12, label %612
    i16 14, label %642
    i16 15, label %696
    i16 16, label %840
    i16 17, label %887
  ]

330:                                              ; preds = %328
  %331 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %332 = and i64 %331, 3221225472
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %351, label %334

334:                                              ; preds = %330
  %335 = load i64, i64* %21, align 8, !tbaa !38
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %351, label %337

337:                                              ; preds = %334, %346
  %338 = phi i32 [ %347, %346 ], [ 0, %334 ]
  %339 = load i8*, i8** %308, align 8, !tbaa !37
  %340 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %339) #22
  %341 = load i32, i32* %55, align 8, !tbaa !134
  %342 = load i32, i32* %57, align 4, !tbaa !87
  %343 = sub i32 %341, %342
  %344 = zext i32 %343 to i64
  %345 = icmp ult i64 %340, %344
  br i1 %345, label %346, label %351

346:                                              ; preds = %337
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %339)
  %347 = add i32 %338, 1
  %348 = zext i32 %347 to i64
  %349 = load i64, i64* %21, align 8, !tbaa !38
  %350 = icmp ugt i64 %349, %348
  br i1 %350, label %337, label %351, !llvm.loop !207

351:                                              ; preds = %337, %346, %334, %330
  %352 = phi i32 [ 36, %330 ], [ 0, %334 ], [ 0, %346 ], [ 3, %337 ]
  %353 = phi i32 [ %315, %330 ], [ %315, %334 ], [ %315, %346 ], [ 19, %337 ]
  switch i32 %352, label %1125 [
    i32 0, label %354
    i32 36, label %354
  ]

354:                                              ; preds = %351, %351
  %355 = load i32, i32* %55, align 8, !tbaa !134
  %356 = load i32, i32* %57, align 4, !tbaa !87
  %357 = sub i32 %355, %356
  %358 = icmp ult i32 %357, 5
  br i1 %358, label %1125, label %359

359:                                              ; preds = %354
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i64 0, i64 0))
  %360 = icmp eq i16 %321, 18
  br i1 %360, label %361, label %972

361:                                              ; preds = %359
  %362 = call fastcc i32 @render_llq(%struct.isc_buffer* noundef nonnull %9, %struct.isc_buffer* noundef %4)
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %1125

364:                                              ; preds = %361
  %365 = load i32, i32* %55, align 8, !tbaa !134
  %366 = load i32, i32* %57, align 4, !tbaa !87
  %367 = sub i32 %365, %366
  %368 = icmp ult i32 %367, 2
  br i1 %368, label %1125, label %1121, !llvm.loop !208

369:                                              ; preds = %328
  %370 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %371 = and i64 %370, 3221225472
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %390, label %373

373:                                              ; preds = %369
  %374 = load i64, i64* %21, align 8, !tbaa !38
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %390, label %376

376:                                              ; preds = %373, %385
  %377 = phi i32 [ %386, %385 ], [ 0, %373 ]
  %378 = load i8*, i8** %307, align 8, !tbaa !37
  %379 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %378) #22
  %380 = load i32, i32* %55, align 8, !tbaa !134
  %381 = load i32, i32* %57, align 4, !tbaa !87
  %382 = sub i32 %380, %381
  %383 = zext i32 %382 to i64
  %384 = icmp ult i64 %379, %383
  br i1 %384, label %385, label %390

385:                                              ; preds = %376
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %378)
  %386 = add i32 %377, 1
  %387 = zext i32 %386 to i64
  %388 = load i64, i64* %21, align 8, !tbaa !38
  %389 = icmp ugt i64 %388, %387
  br i1 %389, label %376, label %390, !llvm.loop !209

390:                                              ; preds = %376, %385, %373, %369
  %391 = phi i32 [ 41, %369 ], [ 0, %373 ], [ 0, %385 ], [ 3, %376 ]
  %392 = phi i32 [ %315, %369 ], [ %315, %373 ], [ %315, %385 ], [ 19, %376 ]
  switch i32 %391, label %1125 [
    i32 0, label %393
    i32 41, label %393
  ]

393:                                              ; preds = %390, %390
  %394 = load i32, i32* %55, align 8, !tbaa !134
  %395 = load i32, i32* %57, align 4, !tbaa !87
  %396 = sub i32 %394, %395
  %397 = icmp ult i32 %396, 6
  br i1 %397, label %1125, label %398

398:                                              ; preds = %393
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.252, i64 0, i64 0))
  br label %972

399:                                              ; preds = %328
  %400 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %401 = and i64 %400, 3221225472
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %420, label %403

403:                                              ; preds = %399
  %404 = load i64, i64* %21, align 8, !tbaa !38
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %420, label %406

406:                                              ; preds = %403, %415
  %407 = phi i32 [ %416, %415 ], [ 0, %403 ]
  %408 = load i8*, i8** %306, align 8, !tbaa !37
  %409 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %408) #22
  %410 = load i32, i32* %55, align 8, !tbaa !134
  %411 = load i32, i32* %57, align 4, !tbaa !87
  %412 = sub i32 %410, %411
  %413 = zext i32 %412 to i64
  %414 = icmp ult i64 %409, %413
  br i1 %414, label %415, label %420

415:                                              ; preds = %406
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %408)
  %416 = add i32 %407, 1
  %417 = zext i32 %416 to i64
  %418 = load i64, i64* %21, align 8, !tbaa !38
  %419 = icmp ugt i64 %418, %417
  br i1 %419, label %406, label %420, !llvm.loop !210

420:                                              ; preds = %406, %415, %403, %399
  %421 = phi i32 [ 46, %399 ], [ 0, %403 ], [ 0, %415 ], [ 3, %406 ]
  %422 = phi i32 [ %315, %399 ], [ %315, %403 ], [ %315, %415 ], [ 19, %406 ]
  switch i32 %421, label %1125 [
    i32 0, label %423
    i32 46, label %423
  ]

423:                                              ; preds = %420, %420
  %424 = load i32, i32* %55, align 8, !tbaa !134
  %425 = load i32, i32* %57, align 4, !tbaa !87
  %426 = sub i32 %424, %425
  %427 = icmp ult i32 %426, 8
  br i1 %427, label %1125, label %428

428:                                              ; preds = %423
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.253, i64 0, i64 0))
  br label %972

429:                                              ; preds = %328
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %303) #21
  %430 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %431 = and i64 %430, 3221225472
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %450, label %433

433:                                              ; preds = %429
  %434 = load i64, i64* %21, align 8, !tbaa !38
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %450, label %436

436:                                              ; preds = %433, %445
  %437 = phi i32 [ %446, %445 ], [ 0, %433 ]
  %438 = load i8*, i8** %304, align 8, !tbaa !37
  %439 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %438) #22
  %440 = load i32, i32* %55, align 8, !tbaa !134
  %441 = load i32, i32* %57, align 4, !tbaa !87
  %442 = sub i32 %440, %441
  %443 = zext i32 %442 to i64
  %444 = icmp ult i64 %439, %443
  br i1 %444, label %445, label %450

445:                                              ; preds = %436
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %438)
  %446 = add i32 %437, 1
  %447 = zext i32 %446 to i64
  %448 = load i64, i64* %21, align 8, !tbaa !38
  %449 = icmp ugt i64 %448, %447
  br i1 %449, label %436, label %450, !llvm.loop !211

450:                                              ; preds = %436, %445, %433, %429
  %451 = phi i32 [ 51, %429 ], [ 0, %433 ], [ 0, %445 ], [ 3, %436 ]
  %452 = phi i32 [ %315, %429 ], [ %315, %433 ], [ %315, %445 ], [ 19, %436 ]
  switch i32 %451, label %477 [
    i32 0, label %453
    i32 51, label %453
  ]

453:                                              ; preds = %450, %450
  %454 = load i32, i32* %55, align 8, !tbaa !134
  %455 = load i32, i32* %57, align 4, !tbaa !87
  %456 = sub i32 %454, %455
  %457 = icmp ult i32 %456, 15
  br i1 %457, label %477, label %458

458:                                              ; preds = %453
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.254, i64 0, i64 0))
  %459 = load i8*, i8** %305, align 8, !tbaa !88
  %460 = load i32, i32* %287, align 8, !tbaa !96
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i8, i8* %459, i64 %461
  call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef nonnull %10, i8* noundef %462, i32 noundef %325)
  call fastcc void @isc_buffer_add(%struct.isc_buffer* noundef nonnull %10, i32 noundef %325)
  %463 = call fastcc i32 @render_ecs(%struct.isc_buffer* noundef nonnull %10, %struct.isc_buffer* noundef %4)
  switch i32 %463, label %469 [
    i32 19, label %477
    i32 0, label %464
  ]

464:                                              ; preds = %458
  call fastcc void @isc_buffer_forward(%struct.isc_buffer* noundef nonnull %9, i32 noundef %325)
  %465 = load i32, i32* %55, align 8, !tbaa !134
  %466 = load i32, i32* %57, align 4, !tbaa !87
  %467 = sub i32 %465, %466
  %468 = icmp ult i32 %467, 2
  br i1 %468, label %477, label %474, !llvm.loop !208

469:                                              ; preds = %458
  %470 = load i32, i32* %55, align 8, !tbaa !134
  %471 = load i32, i32* %57, align 4, !tbaa !87
  %472 = sub i32 %470, %471
  %473 = icmp ult i32 %472, 2
  br i1 %473, label %477, label %474

474:                                              ; preds = %469, %464
  %475 = phi i32 [ 34, %464 ], [ 0, %469 ]
  %476 = phi i32 [ 0, %464 ], [ %463, %469 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %477

477:                                              ; preds = %474, %469, %464, %458, %453, %450
  %478 = phi i32 [ %451, %450 ], [ 3, %453 ], [ 3, %458 ], [ 3, %464 ], [ 3, %469 ], [ %475, %474 ]
  %479 = phi i32 [ %452, %450 ], [ 19, %453 ], [ %463, %458 ], [ 19, %464 ], [ 19, %469 ], [ %476, %474 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %303) #21
  %480 = icmp eq i32 %478, 0
  br i1 %480, label %972, label %1125

481:                                              ; preds = %328
  %482 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %483 = and i64 %482, 3221225472
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %502, label %485

485:                                              ; preds = %481
  %486 = load i64, i64* %21, align 8, !tbaa !38
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %502, label %488

488:                                              ; preds = %485, %497
  %489 = phi i32 [ %498, %497 ], [ 0, %485 ]
  %490 = load i8*, i8** %302, align 8, !tbaa !37
  %491 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %490) #22
  %492 = load i32, i32* %55, align 8, !tbaa !134
  %493 = load i32, i32* %57, align 4, !tbaa !87
  %494 = sub i32 %492, %493
  %495 = zext i32 %494 to i64
  %496 = icmp ult i64 %491, %495
  br i1 %496, label %497, label %502

497:                                              ; preds = %488
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %490)
  %498 = add i32 %489, 1
  %499 = zext i32 %498 to i64
  %500 = load i64, i64* %21, align 8, !tbaa !38
  %501 = icmp ugt i64 %500, %499
  br i1 %501, label %488, label %502, !llvm.loop !212

502:                                              ; preds = %488, %497, %485, %481
  %503 = phi i32 [ 56, %481 ], [ 0, %485 ], [ 0, %497 ], [ 3, %488 ]
  %504 = phi i32 [ %315, %481 ], [ %315, %485 ], [ %315, %497 ], [ 19, %488 ]
  switch i32 %503, label %1125 [
    i32 0, label %505
    i32 56, label %505
  ]

505:                                              ; preds = %502, %502
  %506 = load i32, i32* %55, align 8, !tbaa !134
  %507 = load i32, i32* %57, align 4, !tbaa !87
  %508 = sub i32 %506, %507
  %509 = icmp ult i32 %508, 8
  br i1 %509, label %1125, label %510

510:                                              ; preds = %505
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.255, i64 0, i64 0))
  %511 = icmp eq i16 %321, 4
  br i1 %511, label %512, label %972

512:                                              ; preds = %510
  %513 = call fastcc i32 @isc_buffer_getuint32(%struct.isc_buffer* noundef nonnull %9)
  %514 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0), i32 noundef %513) #21
  %515 = call i64 @strlen(i8* noundef nonnull %12) #22
  %516 = load i32, i32* %55, align 8, !tbaa !134
  %517 = load i32, i32* %57, align 4, !tbaa !87
  %518 = sub i32 %516, %517
  %519 = zext i32 %518 to i64
  %520 = icmp ult i64 %515, %519
  br i1 %520, label %521, label %1125

521:                                              ; preds = %512
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %522 = load i32, i32* %55, align 8, !tbaa !134
  %523 = load i32, i32* %57, align 4, !tbaa !87
  %524 = sub i32 %522, %523
  %525 = icmp ult i32 %524, 3
  br i1 %525, label %1125, label %526

526:                                              ; preds = %521
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0))
  %527 = call i32 @dns_ttl_totext(i32 noundef %513, i1 noundef zeroext true, i1 noundef zeroext true, %struct.isc_buffer* noundef %4) #21
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %1125

529:                                              ; preds = %526
  %530 = load i32, i32* %55, align 8, !tbaa !134
  %531 = load i32, i32* %57, align 4, !tbaa !87
  %532 = sub i32 %530, %531
  %533 = icmp ult i32 %532, 3
  br i1 %533, label %1125, label %1121, !llvm.loop !208

534:                                              ; preds = %328
  %535 = icmp eq i16 %321, 2
  br i1 %535, label %536, label %582

536:                                              ; preds = %534
  %537 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %538 = zext i16 %537 to i32
  %539 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %540 = and i64 %539, 3221225472
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %559, label %542

542:                                              ; preds = %536
  %543 = load i64, i64* %21, align 8, !tbaa !38
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %559, label %545

545:                                              ; preds = %542, %554
  %546 = phi i32 [ %555, %554 ], [ 0, %542 ]
  %547 = load i8*, i8** %301, align 8, !tbaa !37
  %548 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %547) #22
  %549 = load i32, i32* %55, align 8, !tbaa !134
  %550 = load i32, i32* %57, align 4, !tbaa !87
  %551 = sub i32 %549, %550
  %552 = zext i32 %551 to i64
  %553 = icmp ult i64 %548, %552
  br i1 %553, label %554, label %559

554:                                              ; preds = %545
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %547)
  %555 = add i32 %546, 1
  %556 = zext i32 %555 to i64
  %557 = load i64, i64* %21, align 8, !tbaa !38
  %558 = icmp ugt i64 %557, %556
  br i1 %558, label %545, label %559, !llvm.loop !213

559:                                              ; preds = %545, %554, %542, %536
  %560 = phi i32 [ 61, %536 ], [ 0, %542 ], [ 0, %554 ], [ 3, %545 ]
  %561 = phi i32 [ %315, %536 ], [ %315, %542 ], [ %315, %554 ], [ 19, %545 ]
  switch i32 %560, label %1125 [
    i32 0, label %562
    i32 61, label %562
  ]

562:                                              ; preds = %559, %559
  %563 = load i32, i32* %55, align 8, !tbaa !134
  %564 = load i32, i32* %57, align 4, !tbaa !87
  %565 = sub i32 %563, %564
  %566 = icmp ult i32 %565, 16
  br i1 %566, label %1125, label %567

567:                                              ; preds = %562
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.256, i64 0, i64 0))
  %568 = udiv i32 %538, 10
  %569 = urem i32 %538, 10
  %570 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.257, i64 0, i64 0), i32 noundef %568, i32 noundef %569) #21
  %571 = call i64 @strlen(i8* noundef nonnull %12) #22
  %572 = load i32, i32* %55, align 8, !tbaa !134
  %573 = load i32, i32* %57, align 4, !tbaa !87
  %574 = sub i32 %572, %573
  %575 = zext i32 %574 to i64
  %576 = icmp ult i64 %571, %575
  br i1 %576, label %577, label %1125

577:                                              ; preds = %567
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %578 = load i32, i32* %55, align 8, !tbaa !134
  %579 = load i32, i32* %57, align 4, !tbaa !87
  %580 = sub i32 %578, %579
  %581 = icmp ult i32 %580, 7
  br i1 %581, label %1125, label %1121, !llvm.loop !208

582:                                              ; preds = %534
  %583 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %584 = and i64 %583, 3221225472
  %585 = icmp eq i64 %584, 0
  br i1 %585, label %603, label %586

586:                                              ; preds = %582
  %587 = load i64, i64* %21, align 8, !tbaa !38
  %588 = icmp eq i64 %587, 0
  br i1 %588, label %603, label %589

589:                                              ; preds = %586, %598
  %590 = phi i32 [ %599, %598 ], [ 0, %586 ]
  %591 = load i8*, i8** %300, align 8, !tbaa !37
  %592 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %591) #22
  %593 = load i32, i32* %55, align 8, !tbaa !134
  %594 = load i32, i32* %57, align 4, !tbaa !87
  %595 = sub i32 %593, %594
  %596 = zext i32 %595 to i64
  %597 = icmp ult i64 %592, %596
  br i1 %597, label %598, label %603

598:                                              ; preds = %589
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %591)
  %599 = add i32 %590, 1
  %600 = zext i32 %599 to i64
  %601 = load i64, i64* %21, align 8, !tbaa !38
  %602 = icmp ugt i64 %601, %600
  br i1 %602, label %589, label %603, !llvm.loop !214

603:                                              ; preds = %589, %598, %586, %582
  %604 = phi i32 [ 66, %582 ], [ 0, %586 ], [ 0, %598 ], [ 3, %589 ]
  %605 = phi i32 [ %315, %582 ], [ %315, %586 ], [ %315, %598 ], [ 19, %589 ]
  switch i32 %604, label %1125 [
    i32 0, label %606
    i32 66, label %606
  ]

606:                                              ; preds = %603, %603
  %607 = load i32, i32* %55, align 8, !tbaa !134
  %608 = load i32, i32* %57, align 4, !tbaa !87
  %609 = sub i32 %607, %608
  %610 = icmp ult i32 %609, 15
  br i1 %610, label %1125, label %611

611:                                              ; preds = %606
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.258, i64 0, i64 0))
  br label %972

612:                                              ; preds = %328
  %613 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %614 = and i64 %613, 3221225472
  %615 = icmp eq i64 %614, 0
  br i1 %615, label %633, label %616

616:                                              ; preds = %612
  %617 = load i64, i64* %21, align 8, !tbaa !38
  %618 = icmp eq i64 %617, 0
  br i1 %618, label %633, label %619

619:                                              ; preds = %616, %628
  %620 = phi i32 [ %629, %628 ], [ 0, %616 ]
  %621 = load i8*, i8** %299, align 8, !tbaa !37
  %622 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %621) #22
  %623 = load i32, i32* %55, align 8, !tbaa !134
  %624 = load i32, i32* %57, align 4, !tbaa !87
  %625 = sub i32 %623, %624
  %626 = zext i32 %625 to i64
  %627 = icmp ult i64 %622, %626
  br i1 %627, label %628, label %633

628:                                              ; preds = %619
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %621)
  %629 = add i32 %620, 1
  %630 = zext i32 %629 to i64
  %631 = load i64, i64* %21, align 8, !tbaa !38
  %632 = icmp ugt i64 %631, %630
  br i1 %632, label %619, label %633, !llvm.loop !215

633:                                              ; preds = %619, %628, %616, %612
  %634 = phi i32 [ 71, %612 ], [ 0, %616 ], [ 0, %628 ], [ 3, %619 ]
  %635 = phi i32 [ %315, %612 ], [ %315, %616 ], [ %315, %628 ], [ 19, %619 ]
  switch i32 %634, label %1125 [
    i32 0, label %636
    i32 71, label %636
  ]

636:                                              ; preds = %633, %633
  %637 = load i32, i32* %55, align 8, !tbaa !134
  %638 = load i32, i32* %57, align 4, !tbaa !87
  %639 = sub i32 %637, %638
  %640 = icmp ult i32 %639, 5
  br i1 %640, label %1125, label %641

641:                                              ; preds = %636
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.259, i64 0, i64 0))
  br label %972

642:                                              ; preds = %328
  %643 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %644 = and i64 %643, 3221225472
  %645 = icmp eq i64 %644, 0
  br i1 %645, label %663, label %646

646:                                              ; preds = %642
  %647 = load i64, i64* %21, align 8, !tbaa !38
  %648 = icmp eq i64 %647, 0
  br i1 %648, label %663, label %649

649:                                              ; preds = %646, %658
  %650 = phi i32 [ %659, %658 ], [ 0, %646 ]
  %651 = load i8*, i8** %298, align 8, !tbaa !37
  %652 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %651) #22
  %653 = load i32, i32* %55, align 8, !tbaa !134
  %654 = load i32, i32* %57, align 4, !tbaa !87
  %655 = sub i32 %653, %654
  %656 = zext i32 %655 to i64
  %657 = icmp ult i64 %652, %656
  br i1 %657, label %658, label %663

658:                                              ; preds = %649
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %651)
  %659 = add i32 %650, 1
  %660 = zext i32 %659 to i64
  %661 = load i64, i64* %21, align 8, !tbaa !38
  %662 = icmp ugt i64 %661, %660
  br i1 %662, label %649, label %663, !llvm.loop !216

663:                                              ; preds = %649, %658, %646, %642
  %664 = phi i32 [ 76, %642 ], [ 0, %646 ], [ 0, %658 ], [ 3, %649 ]
  %665 = phi i32 [ %315, %642 ], [ %315, %646 ], [ %315, %658 ], [ 19, %649 ]
  switch i32 %664, label %1125 [
    i32 0, label %666
    i32 76, label %666
  ]

666:                                              ; preds = %663, %663
  %667 = load i32, i32* %55, align 8, !tbaa !134
  %668 = load i32, i32* %57, align 4, !tbaa !87
  %669 = sub i32 %667, %668
  %670 = icmp ult i32 %669, 9
  br i1 %670, label %1125, label %671

671:                                              ; preds = %666
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.260, i64 0, i64 0))
  %672 = icmp ne i16 %321, 0
  %673 = and i32 %325, 1
  %674 = icmp eq i32 %673, 0
  %675 = select i1 %672, i1 %674, i1 false
  br i1 %675, label %676, label %972

676:                                              ; preds = %671, %688
  %677 = phi i16 [ %689, %688 ], [ %321, %671 ]
  %678 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0), %688 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %671 ]
  %679 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %680 = zext i16 %679 to i32
  %681 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), i8* noundef %678, i32 noundef %680) #21
  %682 = call i64 @strlen(i8* noundef nonnull %12) #22
  %683 = load i32, i32* %55, align 8, !tbaa !134
  %684 = load i32, i32* %57, align 4, !tbaa !87
  %685 = sub i32 %683, %684
  %686 = zext i32 %685 to i64
  %687 = icmp ult i64 %682, %686
  br i1 %687, label %688, label %1125

688:                                              ; preds = %676
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %689 = add i16 %677, -2
  %690 = icmp eq i16 %689, 0
  br i1 %690, label %691, label %676, !llvm.loop !217

691:                                              ; preds = %688
  %692 = load i32, i32* %55, align 8, !tbaa !134
  %693 = load i32, i32* %57, align 4, !tbaa !87
  %694 = sub i32 %692, %693
  %695 = icmp ult i32 %694, 2
  br i1 %695, label %1125, label %1121, !llvm.loop !208

696:                                              ; preds = %328
  %697 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %698 = and i64 %697, 3221225472
  %699 = icmp eq i64 %698, 0
  br i1 %699, label %717, label %700

700:                                              ; preds = %696
  %701 = load i64, i64* %21, align 8, !tbaa !38
  %702 = icmp eq i64 %701, 0
  br i1 %702, label %717, label %703

703:                                              ; preds = %700, %712
  %704 = phi i32 [ %713, %712 ], [ 0, %700 ]
  %705 = load i8*, i8** %295, align 8, !tbaa !37
  %706 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %705) #22
  %707 = load i32, i32* %55, align 8, !tbaa !134
  %708 = load i32, i32* %57, align 4, !tbaa !87
  %709 = sub i32 %707, %708
  %710 = zext i32 %709 to i64
  %711 = icmp ult i64 %706, %710
  br i1 %711, label %712, label %717

712:                                              ; preds = %703
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %705)
  %713 = add i32 %704, 1
  %714 = zext i32 %713 to i64
  %715 = load i64, i64* %21, align 8, !tbaa !38
  %716 = icmp ugt i64 %715, %714
  br i1 %716, label %703, label %717, !llvm.loop !218

717:                                              ; preds = %703, %712, %700, %696
  %718 = phi i32 [ 83, %696 ], [ 0, %700 ], [ 0, %712 ], [ 3, %703 ]
  %719 = phi i32 [ %315, %696 ], [ %315, %700 ], [ %315, %712 ], [ 19, %703 ]
  switch i32 %718, label %1125 [
    i32 0, label %720
    i32 83, label %720
  ]

720:                                              ; preds = %717, %717
  %721 = load i32, i32* %55, align 8, !tbaa !134
  %722 = load i32, i32* %57, align 4, !tbaa !87
  %723 = sub i32 %721, %722
  %724 = icmp ult i32 %723, 5
  br i1 %724, label %1125, label %725

725:                                              ; preds = %720
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0))
  %726 = icmp ugt i16 %321, 1
  br i1 %726, label %727, label %972

727:                                              ; preds = %725
  %728 = load i32, i32* %55, align 8, !tbaa !134
  %729 = load i32, i32* %57, align 4, !tbaa !87
  %730 = sub i32 %728, %729
  %731 = icmp ult i32 %730, 2
  br i1 %731, label %834, label %732

732:                                              ; preds = %727
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %733 = load i64, i64* %21, align 8, !tbaa !38
  %734 = add i64 %733, 1
  store i64 %734, i64* %21, align 8, !tbaa !38
  %735 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %736 = and i64 %735, 3221225472
  %737 = icmp eq i64 %736, 0
  br i1 %737, label %755, label %738

738:                                              ; preds = %732
  %739 = load i64, i64* %21, align 8, !tbaa !38
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %755, label %741

741:                                              ; preds = %738, %750
  %742 = phi i32 [ %751, %750 ], [ 0, %738 ]
  %743 = load i8*, i8** %296, align 8, !tbaa !37
  %744 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %743) #22
  %745 = load i32, i32* %55, align 8, !tbaa !134
  %746 = load i32, i32* %57, align 4, !tbaa !87
  %747 = sub i32 %745, %746
  %748 = zext i32 %747 to i64
  %749 = icmp ult i64 %744, %748
  br i1 %749, label %750, label %755

750:                                              ; preds = %741
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %743)
  %751 = add i32 %742, 1
  %752 = zext i32 %751 to i64
  %753 = load i64, i64* %21, align 8, !tbaa !38
  %754 = icmp ugt i64 %753, %752
  br i1 %754, label %741, label %755, !llvm.loop !219

755:                                              ; preds = %741, %750, %738, %732
  %756 = phi i32 [ 88, %732 ], [ 0, %738 ], [ 0, %750 ], [ 3, %741 ]
  %757 = phi i32 [ %719, %732 ], [ %719, %738 ], [ %719, %750 ], [ 19, %741 ]
  switch i32 %756, label %834 [
    i32 0, label %758
    i32 88, label %758
  ]

758:                                              ; preds = %755, %755
  %759 = load i32, i32* %55, align 8, !tbaa !134
  %760 = load i32, i32* %57, align 4, !tbaa !87
  %761 = sub i32 %759, %760
  %762 = icmp ult i32 %761, 11
  br i1 %762, label %834, label %763

763:                                              ; preds = %758
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.262, i64 0, i64 0))
  %764 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %765 = zext i16 %764 to i32
  %766 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0), i32 noundef %765) #21
  %767 = call i64 @strlen(i8* noundef nonnull %12) #22
  %768 = load i32, i32* %55, align 8, !tbaa !134
  %769 = load i32, i32* %57, align 4, !tbaa !87
  %770 = sub i32 %768, %769
  %771 = zext i32 %770 to i64
  %772 = icmp ult i64 %767, %771
  br i1 %772, label %773, label %834

773:                                              ; preds = %763
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  %774 = zext i16 %764 to i64
  %775 = icmp ult i16 %764, 25
  br i1 %775, label %776, label %796

776:                                              ; preds = %773
  %777 = load i32, i32* %55, align 8, !tbaa !134
  %778 = load i32, i32* %57, align 4, !tbaa !87
  %779 = sub i32 %777, %778
  %780 = icmp ult i32 %779, 3
  br i1 %780, label %834, label %781

781:                                              ; preds = %776
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0))
  %782 = getelementptr inbounds [25 x i8*], [25 x i8*]* @edetext, i64 0, i64 %774
  %783 = load i8*, i8** %782, align 8, !tbaa !5
  %784 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %783) #22
  %785 = load i32, i32* %55, align 8, !tbaa !134
  %786 = load i32, i32* %57, align 4, !tbaa !87
  %787 = sub i32 %785, %786
  %788 = zext i32 %787 to i64
  %789 = icmp ult i64 %784, %788
  br i1 %789, label %790, label %834

790:                                              ; preds = %781
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %783)
  %791 = load i32, i32* %55, align 8, !tbaa !134
  %792 = load i32, i32* %57, align 4, !tbaa !87
  %793 = sub i32 %791, %792
  %794 = icmp ult i32 %793, 2
  br i1 %794, label %834, label %795

795:                                              ; preds = %790
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0))
  br label %796

796:                                              ; preds = %795, %773
  %797 = load i32, i32* %55, align 8, !tbaa !134
  %798 = load i32, i32* %57, align 4, !tbaa !87
  %799 = sub i32 %797, %798
  %800 = icmp ult i32 %799, 2
  br i1 %800, label %834, label %801

801:                                              ; preds = %796
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %802 = add i16 %321, -2
  %803 = icmp ne i16 %802, 0
  br i1 %803, label %804, label %834

804:                                              ; preds = %801
  %805 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %806 = and i64 %805, 3221225472
  %807 = icmp eq i64 %806, 0
  br i1 %807, label %825, label %808

808:                                              ; preds = %804
  %809 = load i64, i64* %21, align 8, !tbaa !38
  %810 = icmp eq i64 %809, 0
  br i1 %810, label %825, label %811

811:                                              ; preds = %808, %820
  %812 = phi i32 [ %821, %820 ], [ 0, %808 ]
  %813 = load i8*, i8** %297, align 8, !tbaa !37
  %814 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %813) #22
  %815 = load i32, i32* %55, align 8, !tbaa !134
  %816 = load i32, i32* %57, align 4, !tbaa !87
  %817 = sub i32 %815, %816
  %818 = zext i32 %817 to i64
  %819 = icmp ult i64 %814, %818
  br i1 %819, label %820, label %825

820:                                              ; preds = %811
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %813)
  %821 = add i32 %812, 1
  %822 = zext i32 %821 to i64
  %823 = load i64, i64* %21, align 8, !tbaa !38
  %824 = icmp ugt i64 %823, %822
  br i1 %824, label %811, label %825, !llvm.loop !220

825:                                              ; preds = %811, %820, %808, %804
  %826 = phi i32 [ 93, %804 ], [ 0, %808 ], [ 0, %820 ], [ 3, %811 ]
  %827 = phi i32 [ %757, %804 ], [ %757, %808 ], [ %757, %820 ], [ 19, %811 ]
  switch i32 %826, label %834 [
    i32 0, label %828
    i32 93, label %828
  ]

828:                                              ; preds = %825, %825
  %829 = load i32, i32* %55, align 8, !tbaa !134
  %830 = load i32, i32* %57, align 4, !tbaa !87
  %831 = sub i32 %829, %830
  %832 = icmp ult i32 %831, 12
  br i1 %832, label %834, label %833

833:                                              ; preds = %828
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.263, i64 0, i64 0))
  br label %834

834:                                              ; preds = %801, %833, %828, %796, %790, %781, %776, %763, %758, %727, %825, %755
  %835 = phi i1 [ false, %755 ], [ false, %825 ], [ false, %727 ], [ false, %758 ], [ false, %763 ], [ false, %776 ], [ false, %781 ], [ false, %790 ], [ false, %796 ], [ false, %828 ], [ true, %833 ], [ %803, %801 ]
  %836 = phi i32 [ %756, %755 ], [ %826, %825 ], [ 3, %727 ], [ 3, %758 ], [ 3, %763 ], [ 3, %776 ], [ 3, %781 ], [ 3, %790 ], [ 3, %796 ], [ 3, %828 ], [ 0, %833 ], [ 0, %801 ]
  %837 = phi i16 [ %321, %755 ], [ %802, %825 ], [ %321, %727 ], [ %321, %758 ], [ %321, %763 ], [ %321, %776 ], [ %321, %781 ], [ %321, %790 ], [ %321, %796 ], [ %802, %828 ], [ %802, %833 ], [ %802, %801 ]
  %838 = phi i32 [ %757, %755 ], [ %827, %825 ], [ 19, %727 ], [ 19, %758 ], [ 19, %763 ], [ 19, %776 ], [ 19, %781 ], [ 19, %790 ], [ 19, %796 ], [ 19, %828 ], [ %827, %833 ], [ %757, %801 ]
  %839 = icmp eq i32 %836, 0
  br i1 %839, label %972, label %1125

840:                                              ; preds = %328
  %841 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %842 = and i64 %841, 3221225472
  %843 = icmp eq i64 %842, 0
  br i1 %843, label %861, label %844

844:                                              ; preds = %840
  %845 = load i64, i64* %21, align 8, !tbaa !38
  %846 = icmp eq i64 %845, 0
  br i1 %846, label %861, label %847

847:                                              ; preds = %844, %856
  %848 = phi i32 [ %857, %856 ], [ 0, %844 ]
  %849 = load i8*, i8** %294, align 8, !tbaa !37
  %850 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %849) #22
  %851 = load i32, i32* %55, align 8, !tbaa !134
  %852 = load i32, i32* %57, align 4, !tbaa !87
  %853 = sub i32 %851, %852
  %854 = zext i32 %853 to i64
  %855 = icmp ult i64 %850, %854
  br i1 %855, label %856, label %861

856:                                              ; preds = %847
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %849)
  %857 = add i32 %848, 1
  %858 = zext i32 %857 to i64
  %859 = load i64, i64* %21, align 8, !tbaa !38
  %860 = icmp ugt i64 %859, %858
  br i1 %860, label %847, label %861, !llvm.loop !221

861:                                              ; preds = %847, %856, %844, %840
  %862 = phi i32 [ 98, %840 ], [ 0, %844 ], [ 0, %856 ], [ 3, %847 ]
  %863 = phi i32 [ %315, %840 ], [ %315, %844 ], [ %315, %856 ], [ 19, %847 ]
  switch i32 %862, label %882 [
    i32 0, label %864
    i32 98, label %864
  ]

864:                                              ; preds = %861, %861
  %865 = load i32, i32* %55, align 8, !tbaa !134
  %866 = load i32, i32* %57, align 4, !tbaa !87
  %867 = sub i32 %865, %866
  %868 = icmp ult i32 %867, 12
  br i1 %868, label %882, label %869

869:                                              ; preds = %864
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.264, i64 0, i64 0))
  %870 = icmp eq i16 %321, 2
  br i1 %870, label %871, label %882

871:                                              ; preds = %869
  %872 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %873 = zext i16 %872 to i32
  %874 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i32 noundef %873) #21
  %875 = call i64 @strlen(i8* noundef nonnull %12) #22
  %876 = load i32, i32* %55, align 8, !tbaa !134
  %877 = load i32, i32* %57, align 4, !tbaa !87
  %878 = sub i32 %876, %877
  %879 = zext i32 %878 to i64
  %880 = icmp ult i64 %875, %879
  br i1 %880, label %881, label %882

881:                                              ; preds = %871
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %882, !llvm.loop !208

882:                                              ; preds = %869, %871, %864, %881, %861
  %883 = phi i32 [ %862, %861 ], [ 34, %881 ], [ 3, %864 ], [ 3, %871 ], [ 0, %869 ]
  %884 = phi i16 [ %321, %861 ], [ 0, %881 ], [ %321, %864 ], [ %321, %871 ], [ %321, %869 ]
  %885 = phi i32 [ %863, %861 ], [ %863, %881 ], [ 19, %864 ], [ 19, %871 ], [ %863, %869 ]
  %886 = icmp eq i32 %883, 0
  br i1 %886, label %972, label %1125

887:                                              ; preds = %328
  %888 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %889 = and i64 %888, 3221225472
  %890 = icmp eq i64 %889, 0
  br i1 %890, label %908, label %891

891:                                              ; preds = %887
  %892 = load i64, i64* %21, align 8, !tbaa !38
  %893 = icmp eq i64 %892, 0
  br i1 %893, label %908, label %894

894:                                              ; preds = %891, %903
  %895 = phi i32 [ %904, %903 ], [ 0, %891 ]
  %896 = load i8*, i8** %293, align 8, !tbaa !37
  %897 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %896) #22
  %898 = load i32, i32* %55, align 8, !tbaa !134
  %899 = load i32, i32* %57, align 4, !tbaa !87
  %900 = sub i32 %898, %899
  %901 = zext i32 %900 to i64
  %902 = icmp ult i64 %897, %901
  br i1 %902, label %903, label %908

903:                                              ; preds = %894
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %896)
  %904 = add i32 %895, 1
  %905 = zext i32 %904 to i64
  %906 = load i64, i64* %21, align 8, !tbaa !38
  %907 = icmp ugt i64 %906, %905
  br i1 %907, label %894, label %908, !llvm.loop !222

908:                                              ; preds = %894, %903, %891, %887
  %909 = phi i32 [ 103, %887 ], [ 0, %891 ], [ 0, %903 ], [ 3, %894 ]
  %910 = phi i32 [ %315, %887 ], [ %315, %891 ], [ %315, %903 ], [ 19, %894 ]
  switch i32 %909, label %929 [
    i32 0, label %911
    i32 103, label %911
  ]

911:                                              ; preds = %908, %908
  %912 = load i32, i32* %55, align 8, !tbaa !134
  %913 = load i32, i32* %57, align 4, !tbaa !87
  %914 = sub i32 %912, %913
  %915 = icmp ult i32 %914, 12
  br i1 %915, label %929, label %916

916:                                              ; preds = %911
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.265, i64 0, i64 0))
  %917 = icmp eq i16 %321, 2
  br i1 %917, label %918, label %929

918:                                              ; preds = %916
  %919 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef nonnull %9)
  %920 = zext i16 %919 to i32
  %921 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i32 noundef %920) #21
  %922 = call i64 @strlen(i8* noundef nonnull %12) #22
  %923 = load i32, i32* %55, align 8, !tbaa !134
  %924 = load i32, i32* %57, align 4, !tbaa !87
  %925 = sub i32 %923, %924
  %926 = zext i32 %925 to i64
  %927 = icmp ult i64 %922, %926
  br i1 %927, label %928, label %929

928:                                              ; preds = %918
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %929, !llvm.loop !208

929:                                              ; preds = %916, %918, %911, %928, %908
  %930 = phi i32 [ %909, %908 ], [ 34, %928 ], [ 3, %911 ], [ 3, %918 ], [ 0, %916 ]
  %931 = phi i16 [ %321, %908 ], [ 0, %928 ], [ %321, %911 ], [ %321, %918 ], [ %321, %916 ]
  %932 = phi i32 [ %910, %908 ], [ %910, %928 ], [ 19, %911 ], [ 19, %918 ], [ %910, %916 ]
  %933 = icmp eq i32 %930, 0
  br i1 %933, label %972, label %1125

934:                                              ; preds = %328
  %935 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %936 = and i64 %935, 3221225472
  %937 = icmp eq i64 %936, 0
  br i1 %937, label %955, label %938

938:                                              ; preds = %934
  %939 = load i64, i64* %21, align 8, !tbaa !38
  %940 = icmp eq i64 %939, 0
  br i1 %940, label %955, label %941

941:                                              ; preds = %938, %950
  %942 = phi i32 [ %951, %950 ], [ 0, %938 ]
  %943 = load i8*, i8** %309, align 8, !tbaa !37
  %944 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %943) #22
  %945 = load i32, i32* %55, align 8, !tbaa !134
  %946 = load i32, i32* %57, align 4, !tbaa !87
  %947 = sub i32 %945, %946
  %948 = zext i32 %947 to i64
  %949 = icmp ult i64 %944, %948
  br i1 %949, label %950, label %955

950:                                              ; preds = %941
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %943)
  %951 = add i32 %942, 1
  %952 = zext i32 %951 to i64
  %953 = load i64, i64* %21, align 8, !tbaa !38
  %954 = icmp ugt i64 %953, %952
  br i1 %954, label %941, label %955, !llvm.loop !223

955:                                              ; preds = %941, %950, %938, %934
  %956 = phi i32 [ 108, %934 ], [ 0, %938 ], [ 0, %950 ], [ 3, %941 ]
  %957 = phi i32 [ %315, %934 ], [ %315, %938 ], [ %315, %950 ], [ 19, %941 ]
  switch i32 %956, label %1125 [
    i32 0, label %958
    i32 108, label %958
  ]

958:                                              ; preds = %955, %955
  %959 = load i32, i32* %55, align 8, !tbaa !134
  %960 = load i32, i32* %57, align 4, !tbaa !87
  %961 = sub i32 %959, %960
  %962 = icmp ult i32 %961, 5
  br i1 %962, label %1125, label %963

963:                                              ; preds = %958
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.266, i64 0, i64 0))
  %964 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), i32 noundef %329) #21
  %965 = call i64 @strlen(i8* noundef nonnull %12) #22
  %966 = load i32, i32* %55, align 8, !tbaa !134
  %967 = load i32, i32* %57, align 4, !tbaa !87
  %968 = sub i32 %966, %967
  %969 = zext i32 %968 to i64
  %970 = icmp ult i64 %965, %969
  br i1 %970, label %971, label %1125

971:                                              ; preds = %963
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %972

972:                                              ; preds = %398, %477, %611, %671, %882, %929, %971, %725, %834, %641, %510, %428, %359
  %973 = phi i1 [ false, %359 ], [ false, %398 ], [ false, %428 ], [ false, %477 ], [ false, %510 ], [ false, %611 ], [ false, %641 ], [ false, %671 ], [ %835, %834 ], [ false, %725 ], [ false, %882 ], [ false, %929 ], [ false, %971 ]
  %974 = phi i16 [ %321, %359 ], [ %321, %398 ], [ %321, %428 ], [ %321, %477 ], [ %321, %510 ], [ %321, %611 ], [ %321, %641 ], [ %321, %671 ], [ %837, %834 ], [ %321, %725 ], [ %884, %882 ], [ %931, %929 ], [ %321, %971 ]
  %975 = phi i32 [ %353, %359 ], [ %392, %398 ], [ %422, %428 ], [ %479, %477 ], [ %504, %510 ], [ %605, %611 ], [ %635, %641 ], [ %665, %671 ], [ %838, %834 ], [ %719, %725 ], [ %885, %882 ], [ %932, %929 ], [ %957, %971 ]
  %976 = zext i16 %974 to i32
  %977 = icmp eq i16 %974, 0
  br i1 %977, label %1115, label %978

978:                                              ; preds = %972
  %979 = load i32, i32* %55, align 8, !tbaa !134
  %980 = load i32, i32* %57, align 4, !tbaa !87
  %981 = sub i32 %979, %980
  %982 = icmp ult i32 %981, 2
  br i1 %982, label %1111, label %983

983:                                              ; preds = %978
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0))
  %984 = load i8*, i8** %310, align 8, !tbaa !88
  %985 = load i32, i32* %287, align 8, !tbaa !96
  %986 = zext i32 %985 to i64
  %987 = getelementptr inbounds i8, i8* %984, i64 %986
  br i1 %973, label %988, label %991

988:                                              ; preds = %983
  %989 = zext i16 %974 to i64
  %990 = call zeroext i1 @isc_utf8_valid(i8* noundef %987, i64 noundef %989) #21
  br label %991

991:                                              ; preds = %988, %983
  %992 = phi i1 [ %990, %988 ], [ false, %983 ]
  br i1 %992, label %1018, label %993

993:                                              ; preds = %991
  %994 = icmp eq i16 %320, 10
  %995 = select i1 %994, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0)
  %996 = call i32 @llvm.umax.i32(i32 %976, i32 1)
  %997 = zext i32 %996 to i64
  br label %1001

998:                                              ; preds = %1015
  %999 = add nuw nsw i64 %1002, 1
  %1000 = icmp eq i64 %999, %997
  br i1 %1000, label %1018, label %1001, !llvm.loop !224

1001:                                             ; preds = %993, %998
  %1002 = phi i64 [ 0, %993 ], [ %999, %998 ]
  %1003 = phi i32 [ %975, %993 ], [ %1017, %998 ]
  %1004 = getelementptr inbounds i8, i8* %987, i64 %1002
  %1005 = load i8, i8* %1004, align 1, !tbaa !12
  %1006 = zext i8 %1005 to i32
  %1007 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %12, i64 noundef 11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i32 noundef %1006, i8* noundef %995) #21
  %1008 = call i64 @strlen(i8* noundef nonnull %12) #22
  %1009 = load i32, i32* %55, align 8, !tbaa !134
  %1010 = load i32, i32* %57, align 4, !tbaa !87
  %1011 = sub i32 %1009, %1010
  %1012 = zext i32 %1011 to i64
  %1013 = icmp ult i64 %1008, %1012
  br i1 %1013, label %1014, label %1015

1014:                                             ; preds = %1001
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef nonnull %12)
  br label %1015

1015:                                             ; preds = %1001, %1014
  %1016 = phi i32 [ 0, %1014 ], [ 3, %1001 ]
  %1017 = phi i32 [ %1003, %1014 ], [ 19, %1001 ]
  br i1 %1013, label %998, label %1111

1018:                                             ; preds = %998, %991
  %1019 = phi i32 [ %975, %991 ], [ %1017, %998 ]
  call fastcc void @isc_buffer_forward(%struct.isc_buffer* noundef nonnull %9, i32 noundef %976)
  switch i16 %320, label %1064 [
    i16 10, label %1020
    i16 8, label %1059
  ]

1020:                                             ; preds = %1018
  %1021 = load i16, i16* %311, align 4
  %1022 = and i16 %1021, 512
  %1023 = icmp ne i16 %1022, 0
  %1024 = icmp ugt i16 %974, 15
  %1025 = select i1 %1023, i1 %1024, i1 false
  br i1 %1025, label %1026, label %1032

1026:                                             ; preds = %1020
  %1027 = load i32, i32* %55, align 8, !tbaa !134
  %1028 = load i32, i32* %57, align 4, !tbaa !87
  %1029 = sub i32 %1027, %1028
  %1030 = icmp ult i32 %1029, 8
  br i1 %1030, label %1111, label %1031

1031:                                             ; preds = %1026
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0))
  br label %1032

1032:                                             ; preds = %1031, %1020
  %1033 = load i16, i16* %311, align 4
  %1034 = and i16 %1033, 512
  %1035 = icmp ne i16 %1034, 0
  %1036 = icmp ult i16 %974, 16
  %1037 = select i1 %1035, i1 %1036, i1 false
  br i1 %1037, label %1038, label %1044

1038:                                             ; preds = %1032
  %1039 = load i32, i32* %55, align 8, !tbaa !134
  %1040 = load i32, i32* %57, align 4, !tbaa !87
  %1041 = sub i32 %1039, %1040
  %1042 = icmp ult i32 %1041, 10
  br i1 %1042, label %1111, label %1043

1043:                                             ; preds = %1038
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i64 0, i64 0))
  br label %1044

1044:                                             ; preds = %1043, %1032
  %1045 = load i16, i16* %311, align 4
  %1046 = and i16 %1045, 1024
  %1047 = icmp eq i16 %1046, 0
  br i1 %1047, label %1054, label %1048

1048:                                             ; preds = %1044
  %1049 = load i32, i32* %55, align 8, !tbaa !134
  %1050 = load i32, i32* %57, align 4, !tbaa !87
  %1051 = sub i32 %1049, %1050
  %1052 = icmp ult i32 %1051, 7
  br i1 %1052, label %1111, label %1053

1053:                                             ; preds = %1048
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i64 0, i64 0))
  br label %1054

1054:                                             ; preds = %1053, %1044
  %1055 = load i32, i32* %55, align 8, !tbaa !134
  %1056 = load i32, i32* %57, align 4, !tbaa !87
  %1057 = sub i32 %1055, %1056
  %1058 = icmp ult i32 %1057, 2
  br i1 %1058, label %1111, label %1108, !llvm.loop !208

1059:                                             ; preds = %1018
  %1060 = load i32, i32* %55, align 8, !tbaa !134
  %1061 = load i32, i32* %57, align 4, !tbaa !87
  %1062 = sub i32 %1060, %1061
  %1063 = icmp ult i32 %1062, 2
  br i1 %1063, label %1111, label %1108, !llvm.loop !208

1064:                                             ; preds = %1018
  %1065 = load i32, i32* %55, align 8, !tbaa !134
  %1066 = load i32, i32* %57, align 4, !tbaa !87
  %1067 = sub i32 %1065, %1066
  br i1 %973, label %1070, label %1068

1068:                                             ; preds = %1064
  %1069 = icmp ult i32 %1067, 3
  br i1 %1069, label %1111, label %1072

1070:                                             ; preds = %1064
  %1071 = icmp ult i32 %1067, 2
  br i1 %1071, label %1111, label %1072

1072:                                             ; preds = %1070, %1068
  %1073 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), %1068 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.267, i64 0, i64 0), %1070 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %1073)
  %1074 = load i32, i32* %55, align 8, !tbaa !134
  %1075 = load i32, i32* %57, align 4, !tbaa !87
  %1076 = sub i32 %1074, %1075
  %1077 = icmp ult i32 %1076, %976
  br i1 %1077, label %1111, label %1078

1078:                                             ; preds = %1072
  %1079 = tail call i16** @__ctype_b_loc() #23
  %1080 = call i32 @llvm.umax.i32(i32 %976, i32 1)
  %1081 = zext i32 %1080 to i64
  br label %1082

1082:                                             ; preds = %1078, %1097
  %1083 = phi i64 [ 0, %1078 ], [ %1098, %1097 ]
  %1084 = load i16*, i16** %1079, align 8, !tbaa !5
  %1085 = getelementptr inbounds i8, i8* %987, i64 %1083
  %1086 = load i8, i8* %1085, align 1, !tbaa !12
  %1087 = zext i8 %1086 to i64
  %1088 = getelementptr inbounds i16, i16* %1084, i64 %1087
  %1089 = load i16, i16* %1088, align 2, !tbaa !13
  %1090 = and i16 %1089, 16384
  %1091 = icmp ne i16 %1090, 0
  %1092 = icmp slt i8 %1086, 0
  %1093 = select i1 %992, i1 %1092, i1 false
  %1094 = select i1 %1091, i1 true, i1 %1093
  br i1 %1094, label %1095, label %1096

1095:                                             ; preds = %1082
  call fastcc void @isc_buffer_putmem(%struct.isc_buffer* noundef %4, i8* noundef nonnull %1085, i32 noundef 1)
  br label %1097

1096:                                             ; preds = %1082
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i64 0, i64 0))
  br label %1097

1097:                                             ; preds = %1095, %1096
  %1098 = add nuw nsw i64 %1083, 1
  %1099 = icmp eq i64 %1098, %1081
  br i1 %1099, label %1100, label %1082, !llvm.loop !225

1100:                                             ; preds = %1097
  %1101 = load i32, i32* %55, align 8, !tbaa !134
  %1102 = load i32, i32* %57, align 4, !tbaa !87
  %1103 = sub i32 %1101, %1102
  br i1 %973, label %1106, label %1104

1104:                                             ; preds = %1100
  %1105 = icmp ult i32 %1103, 3
  br i1 %1105, label %1111, label %1108

1106:                                             ; preds = %1100
  %1107 = icmp ult i32 %1103, 2
  br i1 %1107, label %1111, label %1108

1108:                                             ; preds = %1106, %1104, %1059, %1054
  %1109 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %1054 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %1059 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i64 0, i64 0), %1104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.267, i64 0, i64 0), %1106 ]
  %1110 = phi i32 [ 34, %1054 ], [ 34, %1059 ], [ 0, %1104 ], [ 0, %1106 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %1109)
  br label %1111

1111:                                             ; preds = %1015, %1108, %1106, %1104, %1072, %1070, %1068, %1059, %1054, %1048, %1038, %1026, %978
  %1112 = phi i32 [ 3, %978 ], [ 3, %1026 ], [ 3, %1038 ], [ 3, %1048 ], [ 3, %1054 ], [ 3, %1059 ], [ 3, %1068 ], [ 3, %1070 ], [ 3, %1072 ], [ 3, %1104 ], [ 3, %1106 ], [ %1110, %1108 ], [ %1016, %1015 ]
  %1113 = phi i32 [ 19, %978 ], [ 19, %1026 ], [ 19, %1038 ], [ 19, %1048 ], [ 19, %1054 ], [ 19, %1059 ], [ 19, %1068 ], [ 19, %1070 ], [ 19, %1072 ], [ 19, %1104 ], [ 19, %1106 ], [ %1019, %1108 ], [ %1017, %1015 ]
  %1114 = icmp eq i32 %1112, 0
  br i1 %1114, label %1115, label %1125

1115:                                             ; preds = %1111, %972
  %1116 = phi i32 [ %1113, %1111 ], [ %975, %972 ]
  %1117 = load i32, i32* %55, align 8, !tbaa !134
  %1118 = load i32, i32* %57, align 4, !tbaa !87
  %1119 = sub i32 %1117, %1118
  %1120 = icmp ult i32 %1119, 2
  br i1 %1120, label %1125, label %1121

1121:                                             ; preds = %1115, %691, %577, %529, %364
  %1122 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %364 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i64 0, i64 0), %529 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0), %577 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %691 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %1115 ]
  %1123 = phi i32 [ 34, %364 ], [ 34, %529 ], [ 34, %577 ], [ 34, %691 ], [ 0, %1115 ]
  %1124 = phi i32 [ 0, %364 ], [ 0, %529 ], [ %561, %577 ], [ %665, %691 ], [ %1116, %1115 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %1122)
  br label %1125

1125:                                             ; preds = %676, %1121, %1115, %963, %958, %720, %691, %666, %636, %606, %559, %562, %567, %577, %512, %521, %526, %529, %505, %423, %393, %364, %361, %354, %477, %834, %882, %929, %1111, %955, %717, %663, %633, %603, %502, %420, %390, %351
  %1126 = phi i32 [ %352, %351 ], [ %1112, %1111 ], [ %391, %390 ], [ %421, %420 ], [ %478, %477 ], [ %503, %502 ], [ %604, %603 ], [ %634, %633 ], [ %664, %663 ], [ %718, %717 ], [ %836, %834 ], [ %883, %882 ], [ %930, %929 ], [ %956, %955 ], [ 3, %354 ], [ 3, %361 ], [ 3, %364 ], [ 3, %393 ], [ 3, %423 ], [ 3, %505 ], [ 3, %512 ], [ 3, %521 ], [ 3, %526 ], [ 3, %529 ], [ %560, %559 ], [ 3, %562 ], [ 3, %567 ], [ 3, %577 ], [ 3, %606 ], [ 3, %636 ], [ 3, %666 ], [ 3, %691 ], [ 3, %720 ], [ 3, %958 ], [ 3, %963 ], [ 3, %1115 ], [ %1123, %1121 ], [ 3, %676 ]
  %1127 = phi i32 [ %353, %351 ], [ %1113, %1111 ], [ %392, %390 ], [ %422, %420 ], [ %479, %477 ], [ %504, %502 ], [ %605, %603 ], [ %635, %633 ], [ %665, %663 ], [ %719, %717 ], [ %838, %834 ], [ %885, %882 ], [ %932, %929 ], [ %957, %955 ], [ 19, %354 ], [ %362, %361 ], [ 19, %364 ], [ 19, %393 ], [ 19, %423 ], [ 19, %505 ], [ 19, %512 ], [ 19, %521 ], [ %527, %526 ], [ 19, %529 ], [ %561, %559 ], [ 19, %562 ], [ 19, %567 ], [ 19, %577 ], [ 19, %606 ], [ 19, %636 ], [ 19, %666 ], [ 19, %691 ], [ 19, %720 ], [ 19, %958 ], [ 19, %963 ], [ 19, %1115 ], [ %1124, %1121 ], [ 19, %676 ]
  switch i32 %1126, label %1231 [
    i32 0, label %1128
    i32 34, label %1128
    i32 3, label %1229
  ]

1128:                                             ; preds = %1125, %1125
  %1129 = load i32, i32* %286, align 4, !tbaa !87
  %1130 = load i32, i32* %287, align 8, !tbaa !96
  %1131 = icmp eq i32 %1129, %1130
  br i1 %1131, label %1132, label %312, !llvm.loop !208

1132:                                             ; preds = %1128, %280
  %1133 = and i64 %95, 4294967295
  store i64 %1133, i64* %21, align 8, !tbaa !38
  br label %1229

1134:                                             ; preds = %19
  %1135 = call %struct.dns_rdataset* @dns_message_gettsig(%struct.dns_message* noundef %0, %struct.dns_name** noundef nonnull %6)
  %1136 = icmp eq %struct.dns_rdataset* %1135, null
  br i1 %1136, label %1229, label %1137

1137:                                             ; preds = %1134
  %1138 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %1139 = and i64 %1138, 3221225472
  %1140 = icmp eq i64 %1139, 0
  br i1 %1140, label %1162, label %1141

1141:                                             ; preds = %1137
  %1142 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %1143 = load i64, i64* %21, align 8, !tbaa !38
  %1144 = icmp eq i64 %1143, 0
  br i1 %1144, label %1162, label %1145

1145:                                             ; preds = %1141
  %1146 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %1147 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %1148

1148:                                             ; preds = %1145, %1157
  %1149 = phi i32 [ 0, %1145 ], [ %1158, %1157 ]
  %1150 = load i8*, i8** %1142, align 8, !tbaa !37
  %1151 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1150) #22
  %1152 = load i32, i32* %1146, align 8, !tbaa !134
  %1153 = load i32, i32* %1147, align 4, !tbaa !87
  %1154 = sub i32 %1152, %1153
  %1155 = zext i32 %1154 to i64
  %1156 = icmp ult i64 %1151, %1155
  br i1 %1156, label %1157, label %1162

1157:                                             ; preds = %1148
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %1150)
  %1158 = add i32 %1149, 1
  %1159 = zext i32 %1158 to i64
  %1160 = load i64, i64* %21, align 8, !tbaa !38
  %1161 = icmp ugt i64 %1160, %1159
  br i1 %1161, label %1148, label %1162, !llvm.loop !226

1162:                                             ; preds = %1148, %1157, %1141, %1137
  %1163 = phi i32 [ 120, %1137 ], [ 0, %1141 ], [ 0, %1157 ], [ 3, %1148 ]
  %1164 = phi i32 [ 0, %1137 ], [ 0, %1141 ], [ 0, %1157 ], [ 19, %1148 ]
  switch i32 %1163, label %1231 [
    i32 0, label %1165
    i32 120, label %1165
    i32 3, label %1229
  ]

1165:                                             ; preds = %1162, %1162
  %1166 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %1167 = load i32, i32* %1166, align 8, !tbaa !134
  %1168 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %1169 = load i32, i32* %1168, align 4, !tbaa !87
  %1170 = sub i32 %1167, %1169
  %1171 = icmp ult i32 %1170, 21
  br i1 %1171, label %1229, label %1172

1172:                                             ; preds = %1165
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.268, i64 0, i64 0))
  %1173 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %1174 = call i32 @dns_master_rdatasettotext(%struct.dns_name* noundef %1173, %struct.dns_rdataset* noundef nonnull %1135, %struct.dns_master_style* noundef %2, %struct.dns_indent_t* noundef nonnull %20, %struct.isc_buffer* noundef %4) #21
  %1175 = load i32, i32* %1166, align 8, !tbaa !134
  %1176 = load i32, i32* %1168, align 4, !tbaa !87
  %1177 = sub i32 %1175, %1176
  %1178 = icmp ult i32 %1177, 2
  br i1 %1178, label %1229, label %1179

1179:                                             ; preds = %1172
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %1229

1180:                                             ; preds = %19
  %1181 = call %struct.dns_rdataset* @dns_message_getsig0(%struct.dns_message* noundef %0, %struct.dns_name** noundef nonnull %6)
  %1182 = icmp eq %struct.dns_rdataset* %1181, null
  br i1 %1182, label %1229, label %1183

1183:                                             ; preds = %1180
  %1184 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %2) #21
  %1185 = and i64 %1184, 3221225472
  %1186 = icmp eq i64 %1185, 0
  br i1 %1186, label %1208, label %1187

1187:                                             ; preds = %1183
  %1188 = getelementptr inbounds %struct.dns_indent_t, %struct.dns_indent_t* %20, i64 0, i32 0
  %1189 = load i64, i64* %21, align 8, !tbaa !38
  %1190 = icmp eq i64 %1189, 0
  br i1 %1190, label %1208, label %1191

1191:                                             ; preds = %1187
  %1192 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %1193 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  br label %1194

1194:                                             ; preds = %1191, %1203
  %1195 = phi i32 [ 0, %1191 ], [ %1204, %1203 ]
  %1196 = load i8*, i8** %1188, align 8, !tbaa !37
  %1197 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1196) #22
  %1198 = load i32, i32* %1192, align 8, !tbaa !134
  %1199 = load i32, i32* %1193, align 4, !tbaa !87
  %1200 = sub i32 %1198, %1199
  %1201 = zext i32 %1200 to i64
  %1202 = icmp ult i64 %1197, %1201
  br i1 %1202, label %1203, label %1208

1203:                                             ; preds = %1194
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef %1196)
  %1204 = add i32 %1195, 1
  %1205 = zext i32 %1204 to i64
  %1206 = load i64, i64* %21, align 8, !tbaa !38
  %1207 = icmp ugt i64 %1206, %1205
  br i1 %1207, label %1194, label %1208, !llvm.loop !227

1208:                                             ; preds = %1194, %1203, %1187, %1183
  %1209 = phi i32 [ 125, %1183 ], [ 0, %1187 ], [ 0, %1203 ], [ 3, %1194 ]
  %1210 = phi i32 [ 0, %1183 ], [ 0, %1187 ], [ 0, %1203 ], [ 19, %1194 ]
  switch i32 %1209, label %1231 [
    i32 0, label %1211
    i32 125, label %1211
    i32 3, label %1229
  ]

1211:                                             ; preds = %1208, %1208
  %1212 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 2
  %1213 = load i32, i32* %1212, align 8, !tbaa !134
  %1214 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 3
  %1215 = load i32, i32* %1214, align 4, !tbaa !87
  %1216 = sub i32 %1213, %1215
  %1217 = icmp ult i32 %1216, 21
  br i1 %1217, label %1229, label %1218

1218:                                             ; preds = %1211
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.269, i64 0, i64 0))
  %1219 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %1220 = call i32 @dns_master_rdatasettotext(%struct.dns_name* noundef %1219, %struct.dns_rdataset* noundef nonnull %1181, %struct.dns_master_style* noundef %2, %struct.dns_indent_t* noundef nonnull %20, %struct.isc_buffer* noundef %4) #21
  %1221 = and i32 %3, 3
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1223, label %1229

1223:                                             ; preds = %1218
  %1224 = load i32, i32* %1212, align 8, !tbaa !134
  %1225 = load i32, i32* %1214, align 4, !tbaa !87
  %1226 = sub i32 %1224, %1225
  %1227 = icmp ult i32 %1226, 2
  br i1 %1227, label %1229, label %1228

1228:                                             ; preds = %1223
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %1229

1229:                                             ; preds = %1125, %19, %1223, %1211, %1180, %1172, %1165, %1134, %277, %266, %261, %229, %221, %216, %182, %176, %167, %137, %125, %120, %88, %54, %1218, %1228, %23, %1208, %1162, %258, %213, %164, %117, %85, %51, %1179, %1132
  %1230 = phi i32 [ %1210, %1208 ], [ %1220, %1228 ], [ %1220, %1218 ], [ %1164, %1162 ], [ %1174, %1179 ], [ 0, %23 ], [ %53, %51 ], [ %87, %85 ], [ %119, %117 ], [ %166, %164 ], [ %215, %213 ], [ %260, %258 ], [ 0, %1132 ], [ 19, %54 ], [ 19, %88 ], [ 19, %120 ], [ 19, %125 ], [ 19, %137 ], [ 19, %167 ], [ 19, %176 ], [ 19, %182 ], [ 19, %216 ], [ 19, %221 ], [ 19, %229 ], [ 19, %261 ], [ 19, %266 ], [ 0, %277 ], [ 0, %1134 ], [ 19, %1165 ], [ 19, %1172 ], [ 0, %1180 ], [ 19, %1211 ], [ 19, %1223 ], [ 34, %19 ], [ %1127, %1125 ]
  store i64 %22, i64* %21, align 8, !tbaa !38
  br label %1231

1231:                                             ; preds = %1125, %1229, %1208, %1162, %258, %213, %164, %117, %85, %51
  %1232 = phi i32 [ %1230, %1229 ], [ undef, %1208 ], [ undef, %1162 ], [ undef, %51 ], [ undef, %85 ], [ undef, %117 ], [ undef, %164 ], [ undef, %213 ], [ undef, %258 ], [ undef, %1125 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #21
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %12) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #21
  ret i32 %1232
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(i8* noalias nocapture noundef writeonly, i64 noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @render_llq(%struct.isc_buffer* noundef %0, %struct.isc_buffer* noundef %1) unnamed_addr #0 {
  %3 = alloca [21 x i8], align 16
  %4 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %4) #21
  %5 = tail call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %6 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %1, i64 0, i32 2
  %7 = load i32, i32* %6, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %1, i64 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !87
  %10 = sub i32 %7, %9
  %11 = icmp ult i32 %10, 11
  br i1 %11, label %85, label %12

12:                                               ; preds = %2
  %13 = zext i16 %5 to i32
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.270, i64 0, i64 0))
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i32 noundef %13) #21
  %15 = call i64 @strlen(i8* noundef nonnull %4) #22
  %16 = load i32, i32* %6, align 8, !tbaa !134
  %17 = load i32, i32* %8, align 4, !tbaa !87
  %18 = sub i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %12
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef nonnull %4)
  %22 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %23 = load i32, i32* %6, align 8, !tbaa !134
  %24 = load i32, i32* %8, align 4, !tbaa !87
  %25 = sub i32 %23, %24
  %26 = icmp ult i32 %25, 11
  br i1 %26, label %85, label %27

27:                                               ; preds = %21
  %28 = zext i16 %22 to i32
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.271, i64 0, i64 0))
  %29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i32 noundef %28) #21
  %30 = call i64 @strlen(i8* noundef nonnull %4) #22
  %31 = load i32, i32* %6, align 8, !tbaa !134
  %32 = load i32, i32* %8, align 4, !tbaa !87
  %33 = sub i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %27
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef nonnull %4)
  %37 = call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %38 = load i32, i32* %6, align 8, !tbaa !134
  %39 = load i32, i32* %8, align 4, !tbaa !87
  %40 = sub i32 %38, %39
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %85, label %42

42:                                               ; preds = %36
  %43 = zext i16 %37 to i32
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.272, i64 0, i64 0))
  %44 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i32 noundef %43) #21
  %45 = call i64 @strlen(i8* noundef nonnull %4) #22
  %46 = load i32, i32* %6, align 8, !tbaa !134
  %47 = load i32, i32* %8, align 4, !tbaa !87
  %48 = sub i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %42
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef nonnull %4)
  %52 = call fastcc i32 @isc_buffer_getuint32(%struct.isc_buffer* noundef %0)
  %53 = call fastcc i32 @isc_buffer_getuint32(%struct.isc_buffer* noundef %0)
  %54 = load i32, i32* %6, align 8, !tbaa !134
  %55 = load i32, i32* %8, align 4, !tbaa !87
  %56 = sub i32 %54, %55
  %57 = icmp ult i32 %56, 15
  br i1 %57, label %85, label %58

58:                                               ; preds = %51
  %59 = zext i32 %52 to i64
  %60 = shl nuw i64 %59, 32
  %61 = zext i32 %53 to i64
  %62 = or i64 %60, %61
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.273, i64 0, i64 0))
  %63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.274, i64 0, i64 0), i64 noundef %62) #21
  %64 = call i64 @strlen(i8* noundef nonnull %4) #22
  %65 = load i32, i32* %6, align 8, !tbaa !134
  %66 = load i32, i32* %8, align 4, !tbaa !87
  %67 = sub i32 %65, %66
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %58
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef nonnull %4)
  %71 = call fastcc i32 @isc_buffer_getuint32(%struct.isc_buffer* noundef %0)
  %72 = load i32, i32* %6, align 8, !tbaa !134
  %73 = load i32, i32* %8, align 4, !tbaa !87
  %74 = sub i32 %72, %73
  %75 = icmp ult i32 %74, 13
  br i1 %75, label %85, label %76

76:                                               ; preds = %70
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.275, i64 0, i64 0))
  %77 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i32 noundef %71) #21
  %78 = call i64 @strlen(i8* noundef nonnull %4) #22
  %79 = load i32, i32* %6, align 8, !tbaa !134
  %80 = load i32, i32* %8, align 4, !tbaa !87
  %81 = sub i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef nonnull %4)
  br label %85

85:                                               ; preds = %76, %70, %58, %51, %42, %36, %27, %21, %12, %2, %84
  %86 = phi i32 [ 0, %84 ], [ 19, %2 ], [ 19, %12 ], [ 19, %21 ], [ 19, %27 ], [ 19, %36 ], [ 19, %42 ], [ 19, %51 ], [ 19, %58 ], [ 19, %70 ], [ 19, %76 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %4) #21
  ret i32 %86
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @render_ecs(%struct.isc_buffer* noundef %0, %struct.isc_buffer* noundef %1) unnamed_addr #0 {
  %3 = alloca [16 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #21
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #21
  %7 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !87
  %9 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !96
  %11 = sub i32 %8, %10
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %78, label %13

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i16 @isc_buffer_getuint16(%struct.isc_buffer* noundef %0)
  %15 = tail call fastcc zeroext i8 @isc_buffer_getuint8(%struct.isc_buffer* noundef %0)
  %16 = tail call fastcc zeroext i8 @isc_buffer_getuint8(%struct.isc_buffer* noundef %0)
  %17 = zext i8 %15 to i32
  %18 = add nuw nsw i32 %17, 7
  %19 = lshr i32 %18, 3
  %20 = load i32, i32* %7, align 4, !tbaa !87
  %21 = load i32, i32* %9, align 8, !tbaa !96
  %22 = sub i32 %20, %21
  %23 = icmp ult i32 %22, %19
  %24 = icmp ugt i8 %15, -128
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %78, label %26

26:                                               ; preds = %13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %27 = icmp eq i8 %15, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.umax.i32(i32 %19, i32 1)
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ 0, %28 ], [ %35, %31 ]
  %33 = tail call fastcc zeroext i8 @isc_buffer_getuint8(%struct.isc_buffer* noundef %0)
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 %32
  store i8 %33, i8* %34, align 1, !tbaa !12
  %35 = add nuw nsw i64 %32, 1
  %36 = icmp eq i64 %35, %30
  br i1 %36, label %37, label %31, !llvm.loop !228

37:                                               ; preds = %31, %26
  switch i16 %14, label %78 [
    i16 0, label %38
    i16 1, label %44
    i16 2, label %50
  ]

38:                                               ; preds = %37
  %39 = icmp ne i8 %15, 0
  %40 = icmp ne i8 %16, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %78, label %42

42:                                               ; preds = %38
  %43 = call i64 @strlcpy(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i64 noundef 64) #21
  br label %54

44:                                               ; preds = %37
  %45 = icmp ugt i8 %15, 32
  %46 = icmp ugt i8 %16, 32
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = call i8* @inet_ntop(i32 noundef 2, i8* noundef nonnull %5, i8* noundef nonnull %6, i32 noundef 64) #21
  br label %54

50:                                               ; preds = %37
  %51 = icmp ugt i8 %16, -128
  br i1 %51, label %78, label %52

52:                                               ; preds = %50
  %53 = call i8* @inet_ntop(i32 noundef 10, i8* noundef nonnull %5, i8* noundef nonnull %6, i32 noundef 64) #21
  br label %54

54:                                               ; preds = %52, %48, %42
  %55 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %1, i64 0, i32 2
  %56 = load i32, i32* %55, align 8, !tbaa !134
  %57 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %1, i64 0, i32 3
  %58 = load i32, i32* %57, align 4, !tbaa !87
  %59 = sub i32 %56, %58
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %78, label %61

61:                                               ; preds = %54
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0))
  %62 = call i64 @strlen(i8* noundef nonnull %6) #22
  %63 = load i32, i32* %55, align 8, !tbaa !134
  %64 = load i32, i32* %57, align 4, !tbaa !87
  %65 = sub i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef nonnull %6)
  %69 = zext i8 %16 to i32
  %70 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 64, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.277, i64 0, i64 0), i32 noundef %17, i32 noundef %69) #21
  %71 = call i64 @strlen(i8* noundef nonnull %6) #22
  %72 = load i32, i32* %55, align 8, !tbaa !134
  %73 = load i32, i32* %57, align 4, !tbaa !87
  %74 = sub i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef nonnull %6)
  br label %78

78:                                               ; preds = %77, %54, %61, %68, %37, %50, %44, %38, %13, %2
  %79 = phi i32 [ 186, %2 ], [ 186, %13 ], [ 186, %38 ], [ 186, %44 ], [ 186, %50 ], [ 186, %37 ], [ 0, %77 ], [ 19, %54 ], [ 19, %61 ], [ 19, %68 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #21
  ret i32 %79
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_forward(%struct.isc_buffer* noalias noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 811, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %11 = load i32, i32* %10, align 8, !tbaa !96
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %14 = load i32, i32* %13, align 4, !tbaa !87
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 812, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.209, i64 0, i64 0)) #20
  unreachable

17:                                               ; preds = %9
  store i32 %12, i32* %10, align 8, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @isc_buffer_getuint32(%struct.isc_buffer* noalias noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #21
  store i32 0, i32* %2, align 4, !tbaa !10
  %4 = call fastcc i32 @isc_buffer_peekuint32(%struct.isc_buffer* noundef %0, i32* noundef nonnull %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 924, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !96
  %10 = add i32 %9, 4
  store i32 %10, i32* %8, align 8, !tbaa !96
  %11 = load i32, i32* %2, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #21
  ret i32 %11
}

declare i32 @dns_ttl_totext(i32 noundef, i1 noundef zeroext, i1 noundef zeroext, %struct.isc_buffer* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #14

declare zeroext i1 @isc_utf8_valid(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_headertotext(%struct.dns_message* noundef readonly %0, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef %3) local_unnamed_addr #0 {
  %5 = alloca [11 x i8], align 1
  %6 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %6) #21
  %7 = icmp eq %struct.dns_message* %0, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 1297303360
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %4
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4180, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

13:                                               ; preds = %8
  %14 = icmp eq %struct.isc_buffer* %3, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4181, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #20
  unreachable

16:                                               ; preds = %13
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %943

19:                                               ; preds = %16
  %20 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %21 = and i64 %20, 2147483648
  %22 = icmp eq i64 %21, 0
  %23 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %24 = and i64 %23, 3221225472
  %25 = icmp eq i64 %24, 0
  br i1 %22, label %594, label %26

26:                                               ; preds = %19
  br i1 %25, label %49, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %29 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %30 = load i64, i64* %29, align 8, !tbaa !38
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 2
  %34 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 3
  br label %35

35:                                               ; preds = %32, %44
  %36 = phi i32 [ 0, %32 ], [ %45, %44 ]
  %37 = load i8*, i8** %28, align 8, !tbaa !37
  %38 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %37) #22
  %39 = load i32, i32* %33, align 8, !tbaa !134
  %40 = load i32, i32* %34, align 4, !tbaa !87
  %41 = sub i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %37)
  %45 = add i32 %36, 1
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %29, align 8, !tbaa !38
  %48 = icmp ugt i64 %47, %46
  br i1 %48, label %35, label %49, !llvm.loop !229

49:                                               ; preds = %35, %44, %27, %26
  %50 = phi i32 [ 2, %26 ], [ 0, %27 ], [ 0, %44 ], [ 7, %35 ]
  switch i32 %50, label %943 [
    i32 0, label %51
    i32 2, label %51
  ]

51:                                               ; preds = %49, %49
  %52 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 2
  %53 = load i32, i32* %52, align 8, !tbaa !134
  %54 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 3
  %55 = load i32, i32* %54, align 4, !tbaa !87
  %56 = sub i32 %53, %55
  %57 = icmp ult i32 %56, 9
  br i1 %57, label %943, label %58

58:                                               ; preds = %51
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 5
  %60 = load i16, i16* %59, align 2, !tbaa !91
  %61 = zext i16 %60 to i64
  %62 = getelementptr inbounds [16 x i8*], [16 x i8*]* @opcodetext, i64 0, i64 %61
  %63 = load i8*, i8** %62, align 8, !tbaa !5
  %64 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %63) #22
  %65 = load i32, i32* %52, align 8, !tbaa !134
  %66 = load i32, i32* %54, align 4, !tbaa !87
  %67 = sub i32 %65, %66
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %943

70:                                               ; preds = %58
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %63)
  %71 = load i32, i32* %52, align 8, !tbaa !134
  %72 = load i32, i32* %54, align 4, !tbaa !87
  %73 = sub i32 %71, %72
  %74 = icmp ult i32 %73, 2
  br i1 %74, label %943, label %75

75:                                               ; preds = %70
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %76 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %77 = and i64 %76, 3221225472
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %81 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %82 = load i64, i64* %81, align 8, !tbaa !38
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %79, %93
  %85 = phi i32 [ %94, %93 ], [ 0, %79 ]
  %86 = load i8*, i8** %80, align 8, !tbaa !37
  %87 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %86) #22
  %88 = load i32, i32* %52, align 8, !tbaa !134
  %89 = load i32, i32* %54, align 4, !tbaa !87
  %90 = sub i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = icmp ult i64 %87, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %86)
  %94 = add i32 %85, 1
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %81, align 8, !tbaa !38
  %97 = icmp ugt i64 %96, %95
  br i1 %97, label %84, label %98, !llvm.loop !230

98:                                               ; preds = %84, %93, %79, %75
  %99 = phi i32 [ 8, %75 ], [ 0, %79 ], [ 0, %93 ], [ 7, %84 ]
  switch i32 %99, label %943 [
    i32 0, label %100
    i32 8, label %100
  ]

100:                                              ; preds = %98, %98
  %101 = load i32, i32* %52, align 8, !tbaa !134
  %102 = load i32, i32* %54, align 4, !tbaa !87
  %103 = sub i32 %101, %102
  %104 = icmp ult i32 %103, 9
  br i1 %104, label %943, label %105

105:                                              ; preds = %100
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i64 0, i64 0))
  %106 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 4
  %107 = load i16, i16* %106, align 8, !tbaa !92
  %108 = tail call i32 @dns_rcode_totext(i16 noundef zeroext %107, %struct.isc_buffer* noundef %3) #21
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %943

110:                                              ; preds = %105
  %111 = load i32, i32* %52, align 8, !tbaa !134
  %112 = load i32, i32* %54, align 4, !tbaa !87
  %113 = sub i32 %111, %112
  %114 = icmp ult i32 %113, 2
  br i1 %114, label %943, label %115

115:                                              ; preds = %110
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %116 = tail call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %117 = and i64 %116, 3221225472
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %138, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %121 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %122 = load i64, i64* %121, align 8, !tbaa !38
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %119, %133
  %125 = phi i32 [ %134, %133 ], [ 0, %119 ]
  %126 = load i8*, i8** %120, align 8, !tbaa !37
  %127 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %126) #22
  %128 = load i32, i32* %52, align 8, !tbaa !134
  %129 = load i32, i32* %54, align 4, !tbaa !87
  %130 = sub i32 %128, %129
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %124
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %126)
  %134 = add i32 %125, 1
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %121, align 8, !tbaa !38
  %137 = icmp ugt i64 %136, %135
  br i1 %137, label %124, label %138, !llvm.loop !231

138:                                              ; preds = %124, %133, %119, %115
  %139 = phi i32 [ 13, %115 ], [ 0, %119 ], [ 0, %133 ], [ 7, %124 ]
  %140 = phi i32 [ 0, %115 ], [ 0, %119 ], [ 0, %133 ], [ 19, %124 ]
  switch i32 %139, label %943 [
    i32 0, label %141
    i32 13, label %141
  ]

141:                                              ; preds = %138, %138
  %142 = load i32, i32* %52, align 8, !tbaa !134
  %143 = load i32, i32* %54, align 4, !tbaa !87
  %144 = sub i32 %142, %143
  %145 = icmp ult i32 %144, 5
  br i1 %145, label %943, label %146

146:                                              ; preds = %141
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0))
  %147 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 2
  %148 = load i16, i16* %147, align 8, !tbaa !90
  %149 = zext i16 %148 to i32
  %150 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i32 noundef %149) #21
  %151 = call i64 @strlen(i8* noundef nonnull %6) #22
  %152 = load i32, i32* %52, align 8, !tbaa !134
  %153 = load i32, i32* %54, align 4, !tbaa !87
  %154 = sub i32 %152, %153
  %155 = zext i32 %154 to i64
  %156 = icmp ult i64 %151, %155
  br i1 %156, label %157, label %943

157:                                              ; preds = %146
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %158 = load i32, i32* %52, align 8, !tbaa !134
  %159 = load i32, i32* %54, align 4, !tbaa !87
  %160 = sub i32 %158, %159
  %161 = icmp ult i32 %160, 2
  br i1 %161, label %943, label %162

162:                                              ; preds = %157
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %163 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %164 = and i64 %163, 3221225472
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %185, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %168 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %169 = load i64, i64* %168, align 8, !tbaa !38
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %185, label %171

171:                                              ; preds = %166, %180
  %172 = phi i32 [ %181, %180 ], [ 0, %166 ]
  %173 = load i8*, i8** %167, align 8, !tbaa !37
  %174 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %173) #22
  %175 = load i32, i32* %52, align 8, !tbaa !134
  %176 = load i32, i32* %54, align 4, !tbaa !87
  %177 = sub i32 %175, %176
  %178 = zext i32 %177 to i64
  %179 = icmp ult i64 %174, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %171
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %173)
  %181 = add i32 %172, 1
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %168, align 8, !tbaa !38
  %184 = icmp ugt i64 %183, %182
  br i1 %184, label %171, label %185, !llvm.loop !232

185:                                              ; preds = %171, %180, %166, %162
  %186 = phi i32 [ 18, %162 ], [ 0, %166 ], [ 0, %180 ], [ 7, %171 ]
  %187 = phi i32 [ %140, %162 ], [ %140, %166 ], [ %140, %180 ], [ 19, %171 ]
  switch i32 %186, label %943 [
    i32 0, label %188
    i32 18, label %188
  ]

188:                                              ; preds = %185, %185
  %189 = load i32, i32* %52, align 8, !tbaa !134
  %190 = load i32, i32* %54, align 4, !tbaa !87
  %191 = sub i32 %189, %190
  %192 = icmp ult i32 %191, 7
  br i1 %192, label %943, label %193

193:                                              ; preds = %188
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0))
  %194 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %195 = load i32, i32* %194, align 4, !tbaa !93
  %196 = and i32 %195, 32768
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %52, align 8, !tbaa !134
  %200 = load i32, i32* %54, align 4, !tbaa !87
  %201 = sub i32 %199, %200
  %202 = icmp ult i32 %201, 4
  br i1 %202, label %943, label %203

203:                                              ; preds = %198
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0))
  br label %204

204:                                              ; preds = %203, %193
  %205 = load i32, i32* %194, align 4, !tbaa !93
  %206 = and i32 %205, 1024
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %52, align 8, !tbaa !134
  %210 = load i32, i32* %54, align 4, !tbaa !87
  %211 = sub i32 %209, %210
  %212 = icmp ult i32 %211, 4
  br i1 %212, label %943, label %213

213:                                              ; preds = %208
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i64 0, i64 0))
  br label %214

214:                                              ; preds = %213, %204
  %215 = load i32, i32* %194, align 4, !tbaa !93
  %216 = and i32 %215, 512
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %52, align 8, !tbaa !134
  %220 = load i32, i32* %54, align 4, !tbaa !87
  %221 = sub i32 %219, %220
  %222 = icmp ult i32 %221, 4
  br i1 %222, label %943, label %223

223:                                              ; preds = %218
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i64 0, i64 0))
  br label %224

224:                                              ; preds = %223, %214
  %225 = load i32, i32* %194, align 4, !tbaa !93
  %226 = and i32 %225, 256
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %52, align 8, !tbaa !134
  %230 = load i32, i32* %54, align 4, !tbaa !87
  %231 = sub i32 %229, %230
  %232 = icmp ult i32 %231, 4
  br i1 %232, label %943, label %233

233:                                              ; preds = %228
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0))
  br label %234

234:                                              ; preds = %233, %224
  %235 = load i32, i32* %194, align 4, !tbaa !93
  %236 = and i32 %235, 128
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %234
  %239 = load i32, i32* %52, align 8, !tbaa !134
  %240 = load i32, i32* %54, align 4, !tbaa !87
  %241 = sub i32 %239, %240
  %242 = icmp ult i32 %241, 4
  br i1 %242, label %943, label %243

243:                                              ; preds = %238
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0))
  br label %244

244:                                              ; preds = %243, %234
  %245 = load i32, i32* %194, align 4, !tbaa !93
  %246 = and i32 %245, 32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* %52, align 8, !tbaa !134
  %250 = load i32, i32* %54, align 4, !tbaa !87
  %251 = sub i32 %249, %250
  %252 = icmp ult i32 %251, 4
  br i1 %252, label %943, label %253

253:                                              ; preds = %248
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0))
  br label %254

254:                                              ; preds = %253, %244
  %255 = load i32, i32* %194, align 4, !tbaa !93
  %256 = and i32 %255, 16
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* %52, align 8, !tbaa !134
  %260 = load i32, i32* %54, align 4, !tbaa !87
  %261 = sub i32 %259, %260
  %262 = icmp ult i32 %261, 4
  br i1 %262, label %943, label %263

263:                                              ; preds = %258
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i64 0, i64 0))
  br label %264

264:                                              ; preds = %263, %254
  %265 = load i32, i32* %52, align 8, !tbaa !134
  %266 = load i32, i32* %54, align 4, !tbaa !87
  %267 = sub i32 %265, %266
  %268 = icmp ult i32 %267, 2
  br i1 %268, label %943, label %269

269:                                              ; preds = %264
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %270 = load i32, i32* %194, align 4, !tbaa !93
  %271 = and i32 %270, 64
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %310, label %273

273:                                              ; preds = %269
  %274 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %275 = and i64 %274, 3221225472
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %296, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %279 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %280 = load i64, i64* %279, align 8, !tbaa !38
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %296, label %282

282:                                              ; preds = %277, %291
  %283 = phi i32 [ %292, %291 ], [ 0, %277 ]
  %284 = load i8*, i8** %278, align 8, !tbaa !37
  %285 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %284) #22
  %286 = load i32, i32* %52, align 8, !tbaa !134
  %287 = load i32, i32* %54, align 4, !tbaa !87
  %288 = sub i32 %286, %287
  %289 = zext i32 %288 to i64
  %290 = icmp ult i64 %285, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %282
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %284)
  %292 = add i32 %283, 1
  %293 = zext i32 %292 to i64
  %294 = load i64, i64* %279, align 8, !tbaa !38
  %295 = icmp ugt i64 %294, %293
  br i1 %295, label %282, label %296, !llvm.loop !233

296:                                              ; preds = %282, %291, %277, %273
  %297 = phi i32 [ 23, %273 ], [ 0, %277 ], [ 0, %291 ], [ 7, %282 ]
  %298 = phi i32 [ %187, %273 ], [ %187, %277 ], [ %187, %291 ], [ 19, %282 ]
  switch i32 %297, label %943 [
    i32 0, label %299
    i32 23, label %299
  ]

299:                                              ; preds = %296, %296
  %300 = load i32, i32* %52, align 8, !tbaa !134
  %301 = load i32, i32* %54, align 4, !tbaa !87
  %302 = sub i32 %300, %301
  %303 = icmp ult i32 %302, 9
  br i1 %303, label %943, label %304

304:                                              ; preds = %299
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i64 0, i64 0))
  %305 = load i32, i32* %52, align 8, !tbaa !134
  %306 = load i32, i32* %54, align 4, !tbaa !87
  %307 = sub i32 %305, %306
  %308 = icmp ult i32 %307, 2
  br i1 %308, label %943, label %309

309:                                              ; preds = %304
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %310

310:                                              ; preds = %309, %269
  %311 = phi i32 [ %298, %309 ], [ %187, %269 ]
  %312 = load i16, i16* %59, align 2, !tbaa !91
  %313 = icmp eq i16 %312, 5
  %314 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %315 = and i64 %314, 3221225472
  %316 = icmp eq i64 %315, 0
  br i1 %313, label %345, label %317

317:                                              ; preds = %310
  br i1 %316, label %337, label %318

318:                                              ; preds = %317
  %319 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %320 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %321 = load i64, i64* %320, align 8, !tbaa !38
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %337, label %323

323:                                              ; preds = %318, %332
  %324 = phi i32 [ %333, %332 ], [ 0, %318 ]
  %325 = load i8*, i8** %319, align 8, !tbaa !37
  %326 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %325) #22
  %327 = load i32, i32* %52, align 8, !tbaa !134
  %328 = load i32, i32* %54, align 4, !tbaa !87
  %329 = sub i32 %327, %328
  %330 = zext i32 %329 to i64
  %331 = icmp ult i64 %326, %330
  br i1 %331, label %332, label %337

332:                                              ; preds = %323
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %325)
  %333 = add i32 %324, 1
  %334 = zext i32 %333 to i64
  %335 = load i64, i64* %320, align 8, !tbaa !38
  %336 = icmp ugt i64 %335, %334
  br i1 %336, label %323, label %337, !llvm.loop !234

337:                                              ; preds = %323, %332, %318, %317
  %338 = phi i32 [ 28, %317 ], [ 0, %318 ], [ 0, %332 ], [ 7, %323 ]
  %339 = phi i32 [ %311, %317 ], [ %311, %318 ], [ %311, %332 ], [ 19, %323 ]
  switch i32 %338, label %943 [
    i32 0, label %340
    i32 28, label %340
  ]

340:                                              ; preds = %337, %337
  %341 = load i32, i32* %52, align 8, !tbaa !134
  %342 = load i32, i32* %54, align 4, !tbaa !87
  %343 = sub i32 %341, %342
  %344 = icmp ult i32 %343, 11
  br i1 %344, label %943, label %373

345:                                              ; preds = %310
  br i1 %316, label %365, label %346

346:                                              ; preds = %345
  %347 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %348 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %349 = load i64, i64* %348, align 8, !tbaa !38
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %365, label %351

351:                                              ; preds = %346, %360
  %352 = phi i32 [ %361, %360 ], [ 0, %346 ]
  %353 = load i8*, i8** %347, align 8, !tbaa !37
  %354 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %353) #22
  %355 = load i32, i32* %52, align 8, !tbaa !134
  %356 = load i32, i32* %54, align 4, !tbaa !87
  %357 = sub i32 %355, %356
  %358 = zext i32 %357 to i64
  %359 = icmp ult i64 %354, %358
  br i1 %359, label %360, label %365

360:                                              ; preds = %351
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %353)
  %361 = add i32 %352, 1
  %362 = zext i32 %361 to i64
  %363 = load i64, i64* %348, align 8, !tbaa !38
  %364 = icmp ugt i64 %363, %362
  br i1 %364, label %351, label %365, !llvm.loop !235

365:                                              ; preds = %351, %360, %346, %345
  %366 = phi i32 [ 33, %345 ], [ 0, %346 ], [ 0, %360 ], [ 7, %351 ]
  %367 = phi i32 [ %311, %345 ], [ %311, %346 ], [ %311, %360 ], [ 19, %351 ]
  switch i32 %366, label %943 [
    i32 0, label %368
    i32 33, label %368
  ]

368:                                              ; preds = %365, %365
  %369 = load i32, i32* %52, align 8, !tbaa !134
  %370 = load i32, i32* %54, align 4, !tbaa !87
  %371 = sub i32 %369, %370
  %372 = icmp ult i32 %371, 7
  br i1 %372, label %943, label %373

373:                                              ; preds = %368, %340
  %374 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i64 0, i64 0), %340 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0), %368 ]
  %375 = phi i32 [ %339, %340 ], [ %367, %368 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %374)
  %376 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 0
  %377 = load i32, i32* %376, align 8, !tbaa !10
  %378 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %377) #21
  %379 = call i64 @strlen(i8* noundef nonnull %6) #22
  %380 = load i32, i32* %52, align 8, !tbaa !134
  %381 = load i32, i32* %54, align 4, !tbaa !87
  %382 = sub i32 %380, %381
  %383 = zext i32 %382 to i64
  %384 = icmp ult i64 %379, %383
  br i1 %384, label %385, label %943

385:                                              ; preds = %373
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %386 = load i32, i32* %52, align 8, !tbaa !134
  %387 = load i32, i32* %54, align 4, !tbaa !87
  %388 = sub i32 %386, %387
  %389 = icmp ult i32 %388, 2
  br i1 %389, label %943, label %390

390:                                              ; preds = %385
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %391 = load i16, i16* %59, align 2, !tbaa !91
  %392 = icmp eq i16 %391, 5
  %393 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %394 = and i64 %393, 3221225472
  %395 = icmp eq i64 %394, 0
  br i1 %392, label %424, label %396

396:                                              ; preds = %390
  br i1 %395, label %416, label %397

397:                                              ; preds = %396
  %398 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %399 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %400 = load i64, i64* %399, align 8, !tbaa !38
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %416, label %402

402:                                              ; preds = %397, %411
  %403 = phi i32 [ %412, %411 ], [ 0, %397 ]
  %404 = load i8*, i8** %398, align 8, !tbaa !37
  %405 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %404) #22
  %406 = load i32, i32* %52, align 8, !tbaa !134
  %407 = load i32, i32* %54, align 4, !tbaa !87
  %408 = sub i32 %406, %407
  %409 = zext i32 %408 to i64
  %410 = icmp ult i64 %405, %409
  br i1 %410, label %411, label %416

411:                                              ; preds = %402
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %404)
  %412 = add i32 %403, 1
  %413 = zext i32 %412 to i64
  %414 = load i64, i64* %399, align 8, !tbaa !38
  %415 = icmp ugt i64 %414, %413
  br i1 %415, label %402, label %416, !llvm.loop !236

416:                                              ; preds = %402, %411, %397, %396
  %417 = phi i32 [ 38, %396 ], [ 0, %397 ], [ 0, %411 ], [ 7, %402 ]
  %418 = phi i32 [ %375, %396 ], [ %375, %397 ], [ %375, %411 ], [ 19, %402 ]
  switch i32 %417, label %943 [
    i32 0, label %419
    i32 38, label %419
  ]

419:                                              ; preds = %416, %416
  %420 = load i32, i32* %52, align 8, !tbaa !134
  %421 = load i32, i32* %54, align 4, !tbaa !87
  %422 = sub i32 %420, %421
  %423 = icmp ult i32 %422, 9
  br i1 %423, label %943, label %452

424:                                              ; preds = %390
  br i1 %395, label %444, label %425

425:                                              ; preds = %424
  %426 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %427 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %428 = load i64, i64* %427, align 8, !tbaa !38
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %444, label %430

430:                                              ; preds = %425, %439
  %431 = phi i32 [ %440, %439 ], [ 0, %425 ]
  %432 = load i8*, i8** %426, align 8, !tbaa !37
  %433 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %432) #22
  %434 = load i32, i32* %52, align 8, !tbaa !134
  %435 = load i32, i32* %54, align 4, !tbaa !87
  %436 = sub i32 %434, %435
  %437 = zext i32 %436 to i64
  %438 = icmp ult i64 %433, %437
  br i1 %438, label %439, label %444

439:                                              ; preds = %430
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %432)
  %440 = add i32 %431, 1
  %441 = zext i32 %440 to i64
  %442 = load i64, i64* %427, align 8, !tbaa !38
  %443 = icmp ugt i64 %442, %441
  br i1 %443, label %430, label %444, !llvm.loop !237

444:                                              ; preds = %430, %439, %425, %424
  %445 = phi i32 [ 43, %424 ], [ 0, %425 ], [ 0, %439 ], [ 7, %430 ]
  %446 = phi i32 [ %375, %424 ], [ %375, %425 ], [ %375, %439 ], [ 19, %430 ]
  switch i32 %445, label %943 [
    i32 0, label %447
    i32 43, label %447
  ]

447:                                              ; preds = %444, %444
  %448 = load i32, i32* %52, align 8, !tbaa !134
  %449 = load i32, i32* %54, align 4, !tbaa !87
  %450 = sub i32 %448, %449
  %451 = icmp ult i32 %450, 9
  br i1 %451, label %943, label %452

452:                                              ; preds = %447, %419
  %453 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.136, i64 0, i64 0), %419 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.137, i64 0, i64 0), %447 ]
  %454 = phi i32 [ %418, %419 ], [ %446, %447 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %453)
  %455 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 1
  %456 = load i32, i32* %455, align 4, !tbaa !10
  %457 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %456) #21
  %458 = call i64 @strlen(i8* noundef nonnull %6) #22
  %459 = load i32, i32* %52, align 8, !tbaa !134
  %460 = load i32, i32* %54, align 4, !tbaa !87
  %461 = sub i32 %459, %460
  %462 = zext i32 %461 to i64
  %463 = icmp ult i64 %458, %462
  br i1 %463, label %464, label %943

464:                                              ; preds = %452
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %465 = load i32, i32* %52, align 8, !tbaa !134
  %466 = load i32, i32* %54, align 4, !tbaa !87
  %467 = sub i32 %465, %466
  %468 = icmp ult i32 %467, 2
  br i1 %468, label %943, label %469

469:                                              ; preds = %464
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %470 = load i16, i16* %59, align 2, !tbaa !91
  %471 = icmp eq i16 %470, 5
  %472 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %473 = and i64 %472, 3221225472
  %474 = icmp eq i64 %473, 0
  br i1 %471, label %503, label %475

475:                                              ; preds = %469
  br i1 %474, label %495, label %476

476:                                              ; preds = %475
  %477 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %478 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %479 = load i64, i64* %478, align 8, !tbaa !38
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %495, label %481

481:                                              ; preds = %476, %490
  %482 = phi i32 [ %491, %490 ], [ 0, %476 ]
  %483 = load i8*, i8** %477, align 8, !tbaa !37
  %484 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %483) #22
  %485 = load i32, i32* %52, align 8, !tbaa !134
  %486 = load i32, i32* %54, align 4, !tbaa !87
  %487 = sub i32 %485, %486
  %488 = zext i32 %487 to i64
  %489 = icmp ult i64 %484, %488
  br i1 %489, label %490, label %495

490:                                              ; preds = %481
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %483)
  %491 = add i32 %482, 1
  %492 = zext i32 %491 to i64
  %493 = load i64, i64* %478, align 8, !tbaa !38
  %494 = icmp ugt i64 %493, %492
  br i1 %494, label %481, label %495, !llvm.loop !238

495:                                              ; preds = %481, %490, %476, %475
  %496 = phi i32 [ 48, %475 ], [ 0, %476 ], [ 0, %490 ], [ 7, %481 ]
  %497 = phi i32 [ %454, %475 ], [ %454, %476 ], [ %454, %490 ], [ 19, %481 ]
  switch i32 %496, label %943 [
    i32 0, label %498
    i32 48, label %498
  ]

498:                                              ; preds = %495, %495
  %499 = load i32, i32* %52, align 8, !tbaa !134
  %500 = load i32, i32* %54, align 4, !tbaa !87
  %501 = sub i32 %499, %500
  %502 = icmp ult i32 %501, 12
  br i1 %502, label %943, label %531

503:                                              ; preds = %469
  br i1 %474, label %523, label %504

504:                                              ; preds = %503
  %505 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %506 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %507 = load i64, i64* %506, align 8, !tbaa !38
  %508 = icmp eq i64 %507, 0
  br i1 %508, label %523, label %509

509:                                              ; preds = %504, %518
  %510 = phi i32 [ %519, %518 ], [ 0, %504 ]
  %511 = load i8*, i8** %505, align 8, !tbaa !37
  %512 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %511) #22
  %513 = load i32, i32* %52, align 8, !tbaa !134
  %514 = load i32, i32* %54, align 4, !tbaa !87
  %515 = sub i32 %513, %514
  %516 = zext i32 %515 to i64
  %517 = icmp ult i64 %512, %516
  br i1 %517, label %518, label %523

518:                                              ; preds = %509
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %511)
  %519 = add i32 %510, 1
  %520 = zext i32 %519 to i64
  %521 = load i64, i64* %506, align 8, !tbaa !38
  %522 = icmp ugt i64 %521, %520
  br i1 %522, label %509, label %523, !llvm.loop !239

523:                                              ; preds = %509, %518, %504, %503
  %524 = phi i32 [ 53, %503 ], [ 0, %504 ], [ 0, %518 ], [ 7, %509 ]
  %525 = phi i32 [ %454, %503 ], [ %454, %504 ], [ %454, %518 ], [ 19, %509 ]
  switch i32 %524, label %943 [
    i32 0, label %526
    i32 53, label %526
  ]

526:                                              ; preds = %523, %523
  %527 = load i32, i32* %52, align 8, !tbaa !134
  %528 = load i32, i32* %54, align 4, !tbaa !87
  %529 = sub i32 %527, %528
  %530 = icmp ult i32 %529, 9
  br i1 %530, label %943, label %531

531:                                              ; preds = %526, %498
  %532 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.138, i64 0, i64 0), %498 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i64 0, i64 0), %526 ]
  %533 = phi i32 [ %497, %498 ], [ %525, %526 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %532)
  %534 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 2
  %535 = load i32, i32* %534, align 8, !tbaa !10
  %536 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %535) #21
  %537 = call i64 @strlen(i8* noundef nonnull %6) #22
  %538 = load i32, i32* %52, align 8, !tbaa !134
  %539 = load i32, i32* %54, align 4, !tbaa !87
  %540 = sub i32 %538, %539
  %541 = zext i32 %540 to i64
  %542 = icmp ult i64 %537, %541
  br i1 %542, label %543, label %943

543:                                              ; preds = %531
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %544 = load i32, i32* %52, align 8, !tbaa !134
  %545 = load i32, i32* %54, align 4, !tbaa !87
  %546 = sub i32 %544, %545
  %547 = icmp ult i32 %546, 2
  br i1 %547, label %943, label %548

548:                                              ; preds = %543
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %549 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %550 = and i64 %549, 3221225472
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %571, label %552

552:                                              ; preds = %548
  %553 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %554 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %555 = load i64, i64* %554, align 8, !tbaa !38
  %556 = icmp eq i64 %555, 0
  br i1 %556, label %571, label %557

557:                                              ; preds = %552, %566
  %558 = phi i32 [ %567, %566 ], [ 0, %552 ]
  %559 = load i8*, i8** %553, align 8, !tbaa !37
  %560 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %559) #22
  %561 = load i32, i32* %52, align 8, !tbaa !134
  %562 = load i32, i32* %54, align 4, !tbaa !87
  %563 = sub i32 %561, %562
  %564 = zext i32 %563 to i64
  %565 = icmp ult i64 %560, %564
  br i1 %565, label %566, label %571

566:                                              ; preds = %557
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %559)
  %567 = add i32 %558, 1
  %568 = zext i32 %567 to i64
  %569 = load i64, i64* %554, align 8, !tbaa !38
  %570 = icmp ugt i64 %569, %568
  br i1 %570, label %557, label %571, !llvm.loop !240

571:                                              ; preds = %557, %566, %552, %548
  %572 = phi i32 [ 58, %548 ], [ 0, %552 ], [ 0, %566 ], [ 7, %557 ]
  %573 = phi i32 [ %533, %548 ], [ %533, %552 ], [ %533, %566 ], [ 19, %557 ]
  switch i32 %572, label %943 [
    i32 0, label %574
    i32 58, label %574
  ]

574:                                              ; preds = %571, %571
  %575 = load i32, i32* %52, align 8, !tbaa !134
  %576 = load i32, i32* %54, align 4, !tbaa !87
  %577 = sub i32 %575, %576
  %578 = icmp ult i32 %577, 13
  br i1 %578, label %943, label %579

579:                                              ; preds = %574
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i64 0, i64 0))
  %580 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 3
  %581 = load i32, i32* %580, align 4, !tbaa !10
  %582 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %581) #21
  %583 = call i64 @strlen(i8* noundef nonnull %6) #22
  %584 = load i32, i32* %52, align 8, !tbaa !134
  %585 = load i32, i32* %54, align 4, !tbaa !87
  %586 = sub i32 %584, %585
  %587 = zext i32 %586 to i64
  %588 = icmp ult i64 %583, %587
  br i1 %588, label %589, label %943

589:                                              ; preds = %579
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %590 = load i32, i32* %52, align 8, !tbaa !134
  %591 = load i32, i32* %54, align 4, !tbaa !87
  %592 = sub i32 %590, %591
  %593 = icmp ult i32 %592, 2
  br i1 %593, label %943, label %941

594:                                              ; preds = %19
  br i1 %25, label %617, label %595

595:                                              ; preds = %594
  %596 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %597 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %598 = load i64, i64* %597, align 8, !tbaa !38
  %599 = icmp eq i64 %598, 0
  br i1 %599, label %617, label %600

600:                                              ; preds = %595
  %601 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 2
  %602 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 3
  br label %603

603:                                              ; preds = %600, %612
  %604 = phi i32 [ 0, %600 ], [ %613, %612 ]
  %605 = load i8*, i8** %596, align 8, !tbaa !37
  %606 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %605) #22
  %607 = load i32, i32* %601, align 8, !tbaa !134
  %608 = load i32, i32* %602, align 4, !tbaa !87
  %609 = sub i32 %607, %608
  %610 = zext i32 %609 to i64
  %611 = icmp ult i64 %606, %610
  br i1 %611, label %612, label %617

612:                                              ; preds = %603
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %605)
  %613 = add i32 %604, 1
  %614 = zext i32 %613 to i64
  %615 = load i64, i64* %597, align 8, !tbaa !38
  %616 = icmp ugt i64 %615, %614
  br i1 %616, label %603, label %617, !llvm.loop !241

617:                                              ; preds = %603, %612, %595, %594
  %618 = phi i32 [ 63, %594 ], [ 0, %595 ], [ 0, %612 ], [ 7, %603 ]
  switch i32 %618, label %943 [
    i32 0, label %619
    i32 63, label %619
  ]

619:                                              ; preds = %617, %617
  %620 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 2
  %621 = load i32, i32* %620, align 8, !tbaa !134
  %622 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %3, i64 0, i32 3
  %623 = load i32, i32* %622, align 4, !tbaa !87
  %624 = sub i32 %621, %623
  %625 = icmp ult i32 %624, 25
  br i1 %625, label %943, label %626

626:                                              ; preds = %619
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.141, i64 0, i64 0))
  %627 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 5
  %628 = load i16, i16* %627, align 2, !tbaa !91
  %629 = zext i16 %628 to i64
  %630 = getelementptr inbounds [16 x i8*], [16 x i8*]* @opcodetext, i64 0, i64 %629
  %631 = load i8*, i8** %630, align 8, !tbaa !5
  %632 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %631) #22
  %633 = load i32, i32* %620, align 8, !tbaa !134
  %634 = load i32, i32* %622, align 4, !tbaa !87
  %635 = sub i32 %633, %634
  %636 = zext i32 %635 to i64
  %637 = icmp ult i64 %632, %636
  br i1 %637, label %638, label %943

638:                                              ; preds = %626
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %631)
  %639 = load i32, i32* %620, align 8, !tbaa !134
  %640 = load i32, i32* %622, align 4, !tbaa !87
  %641 = sub i32 %639, %640
  %642 = icmp ult i32 %641, 11
  br i1 %642, label %943, label %643

643:                                              ; preds = %638
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i64 0, i64 0))
  %644 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 4
  %645 = load i16, i16* %644, align 8, !tbaa !92
  %646 = tail call i32 @dns_rcode_totext(i16 noundef zeroext %645, %struct.isc_buffer* noundef %3) #21
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %943

648:                                              ; preds = %643
  %649 = load i32, i32* %620, align 8, !tbaa !134
  %650 = load i32, i32* %622, align 4, !tbaa !87
  %651 = sub i32 %649, %650
  %652 = icmp ult i32 %651, 7
  br i1 %652, label %943, label %653

653:                                              ; preds = %648
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i64 0, i64 0))
  %654 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 2
  %655 = load i16, i16* %654, align 8, !tbaa !90
  %656 = zext i16 %655 to i32
  %657 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i64 0, i64 0), i32 noundef %656) #21
  %658 = call i64 @strlen(i8* noundef nonnull %6) #22
  %659 = load i32, i32* %620, align 8, !tbaa !134
  %660 = load i32, i32* %622, align 4, !tbaa !87
  %661 = sub i32 %659, %660
  %662 = zext i32 %661 to i64
  %663 = icmp ult i64 %658, %662
  br i1 %663, label %664, label %943

664:                                              ; preds = %653
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %665 = load i32, i32* %620, align 8, !tbaa !134
  %666 = load i32, i32* %622, align 4, !tbaa !87
  %667 = sub i32 %665, %666
  %668 = icmp ult i32 %667, 2
  br i1 %668, label %943, label %669

669:                                              ; preds = %664
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %670 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %671 = and i64 %670, 3221225472
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %692, label %673

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %675 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %676 = load i64, i64* %675, align 8, !tbaa !38
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %692, label %678

678:                                              ; preds = %673, %687
  %679 = phi i32 [ %688, %687 ], [ 0, %673 ]
  %680 = load i8*, i8** %674, align 8, !tbaa !37
  %681 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %680) #22
  %682 = load i32, i32* %620, align 8, !tbaa !134
  %683 = load i32, i32* %622, align 4, !tbaa !87
  %684 = sub i32 %682, %683
  %685 = zext i32 %684 to i64
  %686 = icmp ult i64 %681, %685
  br i1 %686, label %687, label %692

687:                                              ; preds = %678
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %680)
  %688 = add i32 %679, 1
  %689 = zext i32 %688 to i64
  %690 = load i64, i64* %675, align 8, !tbaa !38
  %691 = icmp ugt i64 %690, %689
  br i1 %691, label %678, label %692, !llvm.loop !242

692:                                              ; preds = %678, %687, %673, %669
  %693 = phi i32 [ 68, %669 ], [ 0, %673 ], [ 0, %687 ], [ 7, %678 ]
  %694 = phi i32 [ 0, %669 ], [ 0, %673 ], [ 0, %687 ], [ 19, %678 ]
  switch i32 %693, label %943 [
    i32 0, label %695
    i32 68, label %695
  ]

695:                                              ; preds = %692, %692
  %696 = load i32, i32* %620, align 8, !tbaa !134
  %697 = load i32, i32* %622, align 4, !tbaa !87
  %698 = sub i32 %696, %697
  %699 = icmp ult i32 %698, 10
  br i1 %699, label %943, label %700

700:                                              ; preds = %695
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i64 0, i64 0))
  %701 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %702 = load i32, i32* %701, align 4, !tbaa !93
  %703 = and i32 %702, 32768
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %711, label %705

705:                                              ; preds = %700
  %706 = load i32, i32* %620, align 8, !tbaa !134
  %707 = load i32, i32* %622, align 4, !tbaa !87
  %708 = sub i32 %706, %707
  %709 = icmp ult i32 %708, 4
  br i1 %709, label %943, label %710

710:                                              ; preds = %705
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0))
  br label %711

711:                                              ; preds = %710, %700
  %712 = load i32, i32* %701, align 4, !tbaa !93
  %713 = and i32 %712, 1024
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %721, label %715

715:                                              ; preds = %711
  %716 = load i32, i32* %620, align 8, !tbaa !134
  %717 = load i32, i32* %622, align 4, !tbaa !87
  %718 = sub i32 %716, %717
  %719 = icmp ult i32 %718, 4
  br i1 %719, label %943, label %720

720:                                              ; preds = %715
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i64 0, i64 0))
  br label %721

721:                                              ; preds = %720, %711
  %722 = load i32, i32* %701, align 4, !tbaa !93
  %723 = and i32 %722, 512
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %731, label %725

725:                                              ; preds = %721
  %726 = load i32, i32* %620, align 8, !tbaa !134
  %727 = load i32, i32* %622, align 4, !tbaa !87
  %728 = sub i32 %726, %727
  %729 = icmp ult i32 %728, 4
  br i1 %729, label %943, label %730

730:                                              ; preds = %725
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i64 0, i64 0))
  br label %731

731:                                              ; preds = %730, %721
  %732 = load i32, i32* %701, align 4, !tbaa !93
  %733 = and i32 %732, 256
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %741, label %735

735:                                              ; preds = %731
  %736 = load i32, i32* %620, align 8, !tbaa !134
  %737 = load i32, i32* %622, align 4, !tbaa !87
  %738 = sub i32 %736, %737
  %739 = icmp ult i32 %738, 4
  br i1 %739, label %943, label %740

740:                                              ; preds = %735
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i64 0, i64 0))
  br label %741

741:                                              ; preds = %740, %731
  %742 = load i32, i32* %701, align 4, !tbaa !93
  %743 = and i32 %742, 128
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %751, label %745

745:                                              ; preds = %741
  %746 = load i32, i32* %620, align 8, !tbaa !134
  %747 = load i32, i32* %622, align 4, !tbaa !87
  %748 = sub i32 %746, %747
  %749 = icmp ult i32 %748, 4
  br i1 %749, label %943, label %750

750:                                              ; preds = %745
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0))
  br label %751

751:                                              ; preds = %750, %741
  %752 = load i32, i32* %701, align 4, !tbaa !93
  %753 = and i32 %752, 32
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %761, label %755

755:                                              ; preds = %751
  %756 = load i32, i32* %620, align 8, !tbaa !134
  %757 = load i32, i32* %622, align 4, !tbaa !87
  %758 = sub i32 %756, %757
  %759 = icmp ult i32 %758, 4
  br i1 %759, label %943, label %760

760:                                              ; preds = %755
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0))
  br label %761

761:                                              ; preds = %760, %751
  %762 = load i32, i32* %701, align 4, !tbaa !93
  %763 = and i32 %762, 16
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %771, label %765

765:                                              ; preds = %761
  %766 = load i32, i32* %620, align 8, !tbaa !134
  %767 = load i32, i32* %622, align 4, !tbaa !87
  %768 = sub i32 %766, %767
  %769 = icmp ult i32 %768, 4
  br i1 %769, label %943, label %770

770:                                              ; preds = %765
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i64 0, i64 0))
  br label %771

771:                                              ; preds = %770, %761
  %772 = load i32, i32* %701, align 4, !tbaa !93
  %773 = and i32 %772, 64
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %807, label %775

775:                                              ; preds = %771
  %776 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %777 = and i64 %776, 3221225472
  %778 = icmp eq i64 %777, 0
  br i1 %778, label %798, label %779

779:                                              ; preds = %775
  %780 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %781 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %782 = load i64, i64* %781, align 8, !tbaa !38
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %798, label %784

784:                                              ; preds = %779, %793
  %785 = phi i32 [ %794, %793 ], [ 0, %779 ]
  %786 = load i8*, i8** %780, align 8, !tbaa !37
  %787 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %786) #22
  %788 = load i32, i32* %620, align 8, !tbaa !134
  %789 = load i32, i32* %622, align 4, !tbaa !87
  %790 = sub i32 %788, %789
  %791 = zext i32 %790 to i64
  %792 = icmp ult i64 %787, %791
  br i1 %792, label %793, label %798

793:                                              ; preds = %784
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %786)
  %794 = add i32 %785, 1
  %795 = zext i32 %794 to i64
  %796 = load i64, i64* %781, align 8, !tbaa !38
  %797 = icmp ugt i64 %796, %795
  br i1 %797, label %784, label %798, !llvm.loop !243

798:                                              ; preds = %784, %793, %779, %775
  %799 = phi i32 [ 73, %775 ], [ 0, %779 ], [ 0, %793 ], [ 7, %784 ]
  %800 = phi i32 [ %694, %775 ], [ %694, %779 ], [ %694, %793 ], [ 19, %784 ]
  switch i32 %799, label %943 [
    i32 0, label %801
    i32 73, label %801
  ]

801:                                              ; preds = %798, %798
  %802 = load i32, i32* %620, align 8, !tbaa !134
  %803 = load i32, i32* %622, align 4, !tbaa !87
  %804 = sub i32 %802, %803
  %805 = icmp ult i32 %804, 11
  br i1 %805, label %943, label %806

806:                                              ; preds = %801
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i64 0, i64 0))
  br label %807

807:                                              ; preds = %806, %771
  %808 = phi i32 [ %800, %806 ], [ %694, %771 ]
  %809 = load i16, i16* %627, align 2, !tbaa !91
  %810 = icmp eq i16 %809, 5
  %811 = call i64 @dns_master_styleflags(%struct.dns_master_style* noundef %1) #21
  %812 = and i64 %811, 3221225472
  %813 = icmp eq i64 %812, 0
  br i1 %810, label %842, label %814

814:                                              ; preds = %807
  br i1 %813, label %834, label %815

815:                                              ; preds = %814
  %816 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %817 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %818 = load i64, i64* %817, align 8, !tbaa !38
  %819 = icmp eq i64 %818, 0
  br i1 %819, label %834, label %820

820:                                              ; preds = %815, %829
  %821 = phi i32 [ %830, %829 ], [ 0, %815 ]
  %822 = load i8*, i8** %816, align 8, !tbaa !37
  %823 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %822) #22
  %824 = load i32, i32* %620, align 8, !tbaa !134
  %825 = load i32, i32* %622, align 4, !tbaa !87
  %826 = sub i32 %824, %825
  %827 = zext i32 %826 to i64
  %828 = icmp ult i64 %823, %827
  br i1 %828, label %829, label %834

829:                                              ; preds = %820
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %822)
  %830 = add i32 %821, 1
  %831 = zext i32 %830 to i64
  %832 = load i64, i64* %817, align 8, !tbaa !38
  %833 = icmp ugt i64 %832, %831
  br i1 %833, label %820, label %834, !llvm.loop !244

834:                                              ; preds = %820, %829, %815, %814
  %835 = phi i32 [ 78, %814 ], [ 0, %815 ], [ 0, %829 ], [ 7, %820 ]
  %836 = phi i32 [ %808, %814 ], [ %808, %815 ], [ %808, %829 ], [ 19, %820 ]
  switch i32 %835, label %943 [
    i32 0, label %837
    i32 78, label %837
  ]

837:                                              ; preds = %834, %834
  %838 = load i32, i32* %620, align 8, !tbaa !134
  %839 = load i32, i32* %622, align 4, !tbaa !87
  %840 = sub i32 %838, %839
  %841 = icmp ult i32 %840, 13
  br i1 %841, label %943, label %870

842:                                              ; preds = %807
  br i1 %813, label %862, label %843

843:                                              ; preds = %842
  %844 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 0
  %845 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 48, i32 1
  %846 = load i64, i64* %845, align 8, !tbaa !38
  %847 = icmp eq i64 %846, 0
  br i1 %847, label %862, label %848

848:                                              ; preds = %843, %857
  %849 = phi i32 [ %858, %857 ], [ 0, %843 ]
  %850 = load i8*, i8** %844, align 8, !tbaa !37
  %851 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %850) #22
  %852 = load i32, i32* %620, align 8, !tbaa !134
  %853 = load i32, i32* %622, align 4, !tbaa !87
  %854 = sub i32 %852, %853
  %855 = zext i32 %854 to i64
  %856 = icmp ult i64 %851, %855
  br i1 %856, label %857, label %862

857:                                              ; preds = %848
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %850)
  %858 = add i32 %849, 1
  %859 = zext i32 %858 to i64
  %860 = load i64, i64* %845, align 8, !tbaa !38
  %861 = icmp ugt i64 %860, %859
  br i1 %861, label %848, label %862, !llvm.loop !245

862:                                              ; preds = %848, %857, %843, %842
  %863 = phi i32 [ 83, %842 ], [ 0, %843 ], [ 0, %857 ], [ 7, %848 ]
  %864 = phi i32 [ %808, %842 ], [ %808, %843 ], [ %808, %857 ], [ 19, %848 ]
  switch i32 %863, label %943 [
    i32 0, label %865
    i32 83, label %865
  ]

865:                                              ; preds = %862, %862
  %866 = load i32, i32* %620, align 8, !tbaa !134
  %867 = load i32, i32* %622, align 4, !tbaa !87
  %868 = sub i32 %866, %867
  %869 = icmp ult i32 %868, 9
  br i1 %869, label %943, label %870

870:                                              ; preds = %865, %837
  %871 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i64 0, i64 0), %837 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i64 0, i64 0), %865 ]
  %872 = phi i32 [ %836, %837 ], [ %864, %865 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %871)
  %873 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 0
  %874 = load i32, i32* %873, align 8, !tbaa !10
  %875 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %874) #21
  %876 = call i64 @strlen(i8* noundef nonnull %6) #22
  %877 = load i32, i32* %620, align 8, !tbaa !134
  %878 = load i32, i32* %622, align 4, !tbaa !87
  %879 = sub i32 %877, %878
  %880 = zext i32 %879 to i64
  %881 = icmp ult i64 %876, %880
  br i1 %881, label %882, label %943

882:                                              ; preds = %870
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %883 = load i32, i32* %620, align 8, !tbaa !134
  %884 = load i32, i32* %622, align 4, !tbaa !87
  %885 = sub i32 %883, %884
  %886 = icmp ult i32 %885, 11
  br i1 %886, label %943, label %887

887:                                              ; preds = %882
  %888 = load i16, i16* %627, align 2, !tbaa !91
  %889 = icmp eq i16 %888, 5
  %890 = select i1 %889, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i64 0, i64 0)
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %890)
  %891 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 1
  %892 = load i32, i32* %891, align 4, !tbaa !10
  %893 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %892) #21
  %894 = call i64 @strlen(i8* noundef nonnull %6) #22
  %895 = load i32, i32* %620, align 8, !tbaa !134
  %896 = load i32, i32* %622, align 4, !tbaa !87
  %897 = sub i32 %895, %896
  %898 = zext i32 %897 to i64
  %899 = icmp ult i64 %894, %898
  br i1 %899, label %900, label %943

900:                                              ; preds = %887
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %901 = load i16, i16* %627, align 2, !tbaa !91
  %902 = icmp eq i16 %901, 5
  %903 = load i32, i32* %620, align 8, !tbaa !134
  %904 = load i32, i32* %622, align 4, !tbaa !87
  %905 = sub i32 %903, %904
  br i1 %902, label %908, label %906

906:                                              ; preds = %900
  %907 = icmp ult i32 %905, 14
  br i1 %907, label %943, label %910

908:                                              ; preds = %900
  %909 = icmp ult i32 %905, 11
  br i1 %909, label %943, label %910

910:                                              ; preds = %908, %906
  %911 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i64 0, i64 0), %906 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i64 0, i64 0), %908 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef %911)
  %912 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 2
  %913 = load i32, i32* %912, align 8, !tbaa !10
  %914 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %913) #21
  %915 = call i64 @strlen(i8* noundef nonnull %6) #22
  %916 = load i32, i32* %620, align 8, !tbaa !134
  %917 = load i32, i32* %622, align 4, !tbaa !87
  %918 = sub i32 %916, %917
  %919 = zext i32 %918 to i64
  %920 = icmp ult i64 %915, %919
  br i1 %920, label %921, label %943

921:                                              ; preds = %910
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %922 = load i32, i32* %620, align 8, !tbaa !134
  %923 = load i32, i32* %622, align 4, !tbaa !87
  %924 = sub i32 %922, %923
  %925 = icmp ult i32 %924, 15
  br i1 %925, label %943, label %926

926:                                              ; preds = %921
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i64 0, i64 0))
  %927 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 3
  %928 = load i32, i32* %927, align 4, !tbaa !10
  %929 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %928) #21
  %930 = call i64 @strlen(i8* noundef nonnull %6) #22
  %931 = load i32, i32* %620, align 8, !tbaa !134
  %932 = load i32, i32* %622, align 4, !tbaa !87
  %933 = sub i32 %931, %932
  %934 = zext i32 %933 to i64
  %935 = icmp ult i64 %930, %934
  br i1 %935, label %936, label %943

936:                                              ; preds = %926
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef nonnull %6)
  %937 = load i32, i32* %620, align 8, !tbaa !134
  %938 = load i32, i32* %622, align 4, !tbaa !87
  %939 = sub i32 %937, %938
  %940 = icmp ult i32 %939, 2
  br i1 %940, label %943, label %941

941:                                              ; preds = %936, %589
  %942 = phi i32 [ %573, %589 ], [ %872, %936 ]
  call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %943

943:                                              ; preds = %882, %941, %51, %58, %70, %100, %110, %141, %146, %157, %188, %198, %208, %218, %228, %238, %248, %258, %264, %299, %304, %340, %368, %373, %385, %419, %447, %452, %464, %498, %526, %531, %543, %574, %579, %589, %619, %626, %638, %648, %653, %664, %695, %705, %715, %725, %735, %745, %755, %765, %801, %837, %865, %870, %887, %906, %908, %910, %921, %926, %936, %643, %105, %16, %862, %834, %798, %692, %617, %571, %523, %495, %444, %416, %365, %337, %296, %185, %138, %98, %49
  %944 = phi i32 [ 0, %16 ], [ %108, %105 ], [ %646, %643 ], [ 19, %49 ], [ 19, %98 ], [ %140, %138 ], [ %187, %185 ], [ %298, %296 ], [ %339, %337 ], [ %418, %416 ], [ %497, %495 ], [ %573, %571 ], [ %525, %523 ], [ %446, %444 ], [ %367, %365 ], [ 19, %617 ], [ %694, %692 ], [ %800, %798 ], [ %836, %834 ], [ %864, %862 ], [ 19, %51 ], [ 19, %58 ], [ 19, %70 ], [ 19, %100 ], [ 19, %110 ], [ 19, %141 ], [ 19, %146 ], [ 19, %157 ], [ 19, %188 ], [ 19, %198 ], [ 19, %208 ], [ 19, %218 ], [ 19, %228 ], [ 19, %238 ], [ 19, %248 ], [ 19, %258 ], [ 19, %264 ], [ 19, %299 ], [ 19, %304 ], [ 19, %340 ], [ 19, %368 ], [ 19, %373 ], [ 19, %385 ], [ 19, %419 ], [ 19, %447 ], [ 19, %452 ], [ 19, %464 ], [ 19, %498 ], [ 19, %526 ], [ 19, %531 ], [ 19, %543 ], [ 19, %574 ], [ 19, %579 ], [ 19, %589 ], [ 19, %619 ], [ 19, %626 ], [ 19, %638 ], [ 19, %648 ], [ 19, %653 ], [ 19, %664 ], [ 19, %695 ], [ 19, %705 ], [ 19, %715 ], [ 19, %725 ], [ 19, %735 ], [ 19, %745 ], [ 19, %755 ], [ 19, %765 ], [ 19, %801 ], [ 19, %837 ], [ 19, %865 ], [ 19, %870 ], [ 19, %887 ], [ 19, %906 ], [ 19, %908 ], [ 19, %910 ], [ 19, %921 ], [ 19, %926 ], [ 19, %936 ], [ %942, %941 ], [ 19, %882 ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %6) #21
  ret i32 %944
}

declare i32 @dns_rcode_totext(i16 noundef zeroext, %struct.isc_buffer* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_totext(%struct.dns_message* noundef %0, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq %struct.dns_message* %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !40
  %9 = icmp eq i32 %8, 1297303360
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %4
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4360, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

11:                                               ; preds = %6
  %12 = icmp eq %struct.isc_buffer* %3, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4361, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %11
  %15 = tail call i32 @dns_message_headertotext(%struct.dns_message* noundef nonnull %0, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef nonnull %3)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = tail call i32 @dns_message_pseudosectiontotext(%struct.dns_message* noundef nonnull %0, i32 noundef 0, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef nonnull %3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = tail call i32 @dns_message_sectiontotext(%struct.dns_message* noundef nonnull %0, i32 noundef 0, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef nonnull %3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = tail call i32 @dns_message_sectiontotext(%struct.dns_message* noundef nonnull %0, i32 noundef 1, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef nonnull %3)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = tail call i32 @dns_message_sectiontotext(%struct.dns_message* noundef nonnull %0, i32 noundef 2, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef nonnull %3)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = tail call i32 @dns_message_sectiontotext(%struct.dns_message* noundef nonnull %0, i32 noundef 3, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef nonnull %3)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = tail call i32 @dns_message_pseudosectiontotext(%struct.dns_message* noundef nonnull %0, i32 noundef 1, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef nonnull %3)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 @dns_message_pseudosectiontotext(%struct.dns_message* noundef nonnull %0, i32 noundef 2, %struct.dns_master_style* noundef %1, i32 noundef %2, %struct.isc_buffer* noundef nonnull %3)
  br label %37

37:                                               ; preds = %32, %29, %26, %23, %20, %17, %14, %35
  %38 = phi i32 [ %36, %35 ], [ %15, %14 ], [ %18, %17 ], [ %21, %20 ], [ %24, %23 ], [ %27, %26 ], [ %30, %29 ], [ %33, %32 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull %struct.isc_region* @dns_message_getrawmessage(%struct.dns_message* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1297303360
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4411, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44
  ret %struct.isc_region* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_setsortorder(%struct.dns_message* noundef %0, i32 (%struct.dns_rdata*, i8*)* noundef %1, %struct.dns_aclenv* noundef %2, %struct.dns_acl* noundef %3, %struct.dns_aclelement* noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq %struct.dns_message* %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !40
  %10 = icmp eq i32 %9, 1297303360
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %5
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4419, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %7
  %13 = icmp ne i32 (%struct.dns_rdata*, i8*)* %1, null
  %14 = icmp eq %struct.dns_aclenv* %2, null
  %15 = xor i1 %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4420, i32 noundef 0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.154, i64 0, i64 0)) #20
  unreachable

17:                                               ; preds = %12
  %18 = icmp ne %struct.dns_acl* %3, null
  %19 = or i1 %14, %18
  %20 = icmp ne %struct.dns_aclelement* %4, null
  %21 = or i1 %19, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4421, i32 noundef 0, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.155, i64 0, i64 0)) #20
  unreachable

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 46
  store i32 (%struct.dns_rdata*, i8*)* %1, i32 (%struct.dns_rdata*, i8*)** %24, align 8, !tbaa !137
  br i1 %14, label %27, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 47, i32 0
  tail call void @dns_aclenv_attach(%struct.dns_aclenv* noundef nonnull %2, %struct.dns_aclenv** noundef nonnull %26) #21
  br label %27

27:                                               ; preds = %25, %23
  br i1 %18, label %28, label %30

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 47, i32 1
  tail call void @dns_acl_attach(%struct.dns_acl* noundef nonnull %3, %struct.dns_acl** noundef nonnull %29) #21
  br label %30

30:                                               ; preds = %28, %27
  %31 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 47, i32 2
  store %struct.dns_aclelement* %4, %struct.dns_aclelement** %31, align 8, !tbaa !246
  ret void
}

declare void @dns_aclenv_attach(%struct.dns_aclenv* noundef, %struct.dns_aclenv** noundef) local_unnamed_addr #3

declare void @dns_acl_attach(%struct.dns_acl* noundef, %struct.dns_acl** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_settimeadjust(%struct.dns_message* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4435, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 39
  store i32 %1, i32* %10, align 4, !tbaa !179
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_gettimeadjust(%struct.dns_message* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1297303360
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4441, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 39
  %10 = load i32, i32* %9, align 4, !tbaa !179
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_opcode_totext(i16 noundef zeroext %0, %struct.isc_buffer* noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i16 %0, 16
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4447, i32 noundef 0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i64 0, i64 0)) #20
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %1, i64 0, i32 2
  %7 = load i32, i32* %6, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %1, i64 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !87
  %10 = sub i32 %7, %9
  %11 = zext i32 %10 to i64
  %12 = zext i16 %0 to i64
  %13 = getelementptr inbounds [16 x i8*], [16 x i8*]* @opcodetext, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8, !tbaa !5
  %15 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %14) #22
  %16 = icmp ugt i64 %15, %11
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  tail call fastcc void @isc_buffer_putstr(%struct.isc_buffer* noundef %1, i8* noundef %14)
  br label %18

18:                                               ; preds = %5, %17
  %19 = phi i32 [ 0, %17 ], [ 19, %5 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_logpacket(%struct.dns_message* noundef %0, i8* noundef %1, %struct.isc_sockaddr* noundef %2, %struct.isc_logcategory* noundef %3, %struct.isc_logmodule* noundef %4, i32 noundef %5, %struct.isc_mem* noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq %struct.isc_sockaddr* %2, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4461, i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.157, i64 0, i64 0)) #20
  unreachable

10:                                               ; preds = %7
  tail call fastcc void @logfmtpacket(%struct.dns_message* noundef %0, i8* noundef %1, %struct.isc_sockaddr* noundef nonnull %2, %struct.isc_logcategory* noundef %3, %struct.isc_logmodule* noundef %4, %struct.dns_master_style* noundef nonnull @dns_master_style_debug, i32 noundef %5, %struct.isc_mem* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @logfmtpacket(%struct.dns_message* noundef %0, i8* noundef %1, %struct.isc_sockaddr* noundef %2, %struct.isc_logcategory* noundef %3, %struct.isc_logmodule* noundef %4, %struct.dns_master_style* noundef %5, i32 noundef %6, %struct.isc_mem* noundef %7) unnamed_addr #0 {
  %9 = alloca [63 x i8], align 16
  %10 = alloca %struct.isc_buffer, align 8
  %11 = getelementptr inbounds [63 x i8], [63 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 63, i8* nonnull %11) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(63) %11, i8 0, i64 63, i1 false)
  %12 = bitcast %struct.isc_buffer* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #21
  %13 = load %struct.isc_log*, %struct.isc_log** @dns_lctx, align 8, !tbaa !5
  %14 = tail call zeroext i1 @isc_log_wouldlog(%struct.isc_log* noundef %13, i32 noundef %6) #21
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  call void @isc_sockaddr_format(%struct.isc_sockaddr* noundef %2, i8* noundef nonnull %11, i32 noundef 63) #21
  %16 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %10, i64 0, i32 3
  br label %17

17:                                               ; preds = %30, %15
  %18 = phi i32 [ 1024, %15 ], [ %32, %30 ]
  %19 = sext i32 %18 to i64
  %20 = call noalias i8* @isc__mem_get(%struct.isc_mem* noundef %7, i64 noundef %19, i32 noundef 0) #21
  call fastcc void @isc_buffer_init(%struct.isc_buffer* noundef nonnull %10, i8* noundef %20, i32 noundef %18)
  %21 = call i32 @dns_message_totext(%struct.dns_message* noundef %0, %struct.dns_master_style* noundef %5, i32 noundef 0, %struct.isc_buffer* noundef nonnull %10)
  %22 = icmp eq i32 %21, 19
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  call void @isc__mem_put(%struct.isc_mem* noundef %7, i8* noundef %20, i64 noundef %19, i32 noundef 0) #21
  %24 = add nsw i32 %18, 1024
  br label %30

25:                                               ; preds = %17
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load %struct.isc_log*, %struct.isc_log** @dns_lctx, align 8, !tbaa !5
  %29 = load i32, i32* %16, align 4, !tbaa !87
  call void (%struct.isc_log*, %struct.isc_logcategory*, %struct.isc_logmodule*, i32, i8*, ...) @isc_log_write(%struct.isc_log* noundef %28, %struct.isc_logcategory* noundef %3, %struct.isc_logmodule* noundef %4, i32 noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.318, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0), i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i32 noundef %29, i8* noundef %20) #21
  br label %30

30:                                               ; preds = %23, %27, %25
  %31 = phi i8* [ null, %23 ], [ %20, %27 ], [ %20, %25 ]
  %32 = phi i32 [ %24, %23 ], [ %18, %27 ], [ %18, %25 ]
  br i1 %22, label %17, label %33, !llvm.loop !247

33:                                               ; preds = %30
  %34 = icmp eq i8* %31, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = sext i32 %32 to i64
  call void @isc__mem_put(%struct.isc_mem* noundef %7, i8* noundef nonnull %31, i64 noundef %36, i32 noundef 0) #21
  br label %37

37:                                               ; preds = %33, %35, %8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #21
  call void @llvm.lifetime.end.p0i8(i64 63, i8* nonnull %11) #21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_logfmtpacket(%struct.dns_message* noundef %0, i8* noundef %1, %struct.isc_sockaddr* noundef %2, %struct.isc_logcategory* noundef %3, %struct.isc_logmodule* noundef %4, %struct.dns_master_style* noundef %5, i32 noundef %6, %struct.isc_mem* noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq %struct.isc_sockaddr* %2, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4473, i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.157, i64 0, i64 0)) #20
  unreachable

11:                                               ; preds = %8
  tail call fastcc void @logfmtpacket(%struct.dns_message* noundef %0, i8* noundef %1, %struct.isc_sockaddr* noundef nonnull %2, %struct.isc_logcategory* noundef %3, %struct.isc_logmodule* noundef %4, %struct.dns_master_style* noundef %5, i32 noundef %6, %struct.isc_mem* noundef %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_buildopt(%struct.dns_message* noundef %0, %struct.dns_rdataset** noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4, %struct.dns_ednsopt* nocapture noundef readonly %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.dns_rdataset*, align 8
  %9 = alloca %struct.dns_rdatalist*, align 8
  %10 = alloca %struct.dns_rdata*, align 8
  %11 = alloca %struct.isc_buffer*, align 8
  %12 = bitcast %struct.dns_rdataset** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #21
  store %struct.dns_rdataset* null, %struct.dns_rdataset** %8, align 8, !tbaa !5
  %13 = bitcast %struct.dns_rdatalist** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #21
  store %struct.dns_rdatalist* null, %struct.dns_rdatalist** %9, align 8, !tbaa !5
  %14 = bitcast %struct.dns_rdata** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #21
  store %struct.dns_rdata* null, %struct.dns_rdata** %10, align 8, !tbaa !5
  %15 = icmp eq %struct.dns_message* %0, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 4, !tbaa !40
  %19 = icmp eq i32 %18, 1297303360
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %7
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4537, i32 noundef 0, i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @.str.158, i64 0, i64 0)) #20
  unreachable

21:                                               ; preds = %16
  %22 = icmp eq %struct.dns_rdataset** %1, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = load %struct.dns_rdataset*, %struct.dns_rdataset** %1, align 8, !tbaa !5
  %25 = icmp eq %struct.dns_rdataset* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %21
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4538, i32 noundef 0, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.159, i64 0, i64 0)) #20
  unreachable

27:                                               ; preds = %23
  call void @dns_message_gettemprdatalist(%struct.dns_message* noundef nonnull %0, %struct.dns_rdatalist** noundef nonnull %9)
  call void @dns_message_gettemprdata(%struct.dns_message* noundef nonnull %0, %struct.dns_rdata** noundef nonnull %10)
  call void @dns_message_gettemprdataset(%struct.dns_message* noundef nonnull %0, %struct.dns_rdataset** noundef nonnull %8)
  %28 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %9, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %28, i64 0, i32 1
  store i16 41, i16* %29, align 2, !tbaa !106
  %30 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %28, i64 0, i32 0
  store i16 %3, i16* %30, align 8, !tbaa !107
  %31 = shl i32 %2, 16
  %32 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %28, i64 0, i32 3
  %33 = and i32 %4, 65535
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8, !tbaa !121
  %35 = icmp eq i64 %6, 0
  br i1 %35, label %108, label %36

36:                                               ; preds = %27
  %37 = bitcast %struct.isc_buffer** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37) #21
  store %struct.isc_buffer* null, %struct.isc_buffer** %11, align 8, !tbaa !5
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ %47, %38 ], [ 0, %36 ]
  %40 = phi i32 [ %45, %38 ], [ 0, %36 ]
  %41 = getelementptr inbounds %struct.dns_ednsopt, %struct.dns_ednsopt* %5, i64 %39, i32 1
  %42 = load i16, i16* %41, align 2, !tbaa !248
  %43 = zext i16 %42 to i32
  %44 = add i32 %40, 4
  %45 = add i32 %44, %43
  %46 = add nuw nsw i64 %39, 1
  %47 = and i64 %46, 4294967295
  %48 = icmp ult i64 %47, %6
  br i1 %48, label %38, label %49, !llvm.loop !250

49:                                               ; preds = %38
  %50 = icmp ugt i32 %45, 65535
  br i1 %50, label %106, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %53 = load %struct.isc_mem*, %struct.isc_mem** %52, align 8, !tbaa !63
  call fastcc void @isc_buffer_allocate(%struct.isc_mem* noundef %53, %struct.isc_buffer** noundef nonnull %11, i32 noundef %45)
  br label %54

54:                                               ; preds = %51, %80
  %55 = phi i64 [ %83, %80 ], [ 0, %51 ]
  %56 = phi i8 [ %81, %80 ], [ 0, %51 ]
  %57 = phi i32 [ %82, %80 ], [ 0, %51 ]
  %58 = getelementptr inbounds %struct.dns_ednsopt, %struct.dns_ednsopt* %5, i64 %55, i32 0
  %59 = load i16, i16* %58, align 8, !tbaa !251
  %60 = icmp eq i16 %59, 12
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.dns_ednsopt, %struct.dns_ednsopt* %5, i64 %55, i32 1
  %63 = load i16, i16* %62, align 2, !tbaa !248
  %64 = icmp eq i16 %63, 0
  %65 = and i8 %56, 1
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %80, label %68

68:                                               ; preds = %61, %54
  %69 = load %struct.isc_buffer*, %struct.isc_buffer** %11, align 8, !tbaa !5
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef %69, i16 noundef zeroext %59)
  %70 = load %struct.isc_buffer*, %struct.isc_buffer** %11, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.dns_ednsopt, %struct.dns_ednsopt* %5, i64 %55, i32 1
  %72 = load i16, i16* %71, align 2, !tbaa !248
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef %70, i16 noundef zeroext %72)
  %73 = load i16, i16* %71, align 2, !tbaa !248
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = zext i16 %73 to i32
  %77 = load %struct.isc_buffer*, %struct.isc_buffer** %11, align 8, !tbaa !5
  %78 = getelementptr inbounds %struct.dns_ednsopt, %struct.dns_ednsopt* %5, i64 %55, i32 2
  %79 = load i8*, i8** %78, align 8, !tbaa !252
  call fastcc void @isc_buffer_putmem(%struct.isc_buffer* noundef %77, i8* noundef %79, i32 noundef %76)
  br label %80

80:                                               ; preds = %61, %68, %75
  %81 = phi i8 [ %56, %75 ], [ %56, %68 ], [ 1, %61 ]
  %82 = add i32 %57, 1
  %83 = zext i32 %82 to i64
  %84 = icmp ult i64 %83, %6
  br i1 %84, label %54, label %85, !llvm.loop !253

85:                                               ; preds = %80
  %86 = and i8 %81, 1
  %87 = icmp eq i8 %86, 0
  %88 = load %struct.isc_buffer*, %struct.isc_buffer** %11, align 8, !tbaa !5
  br i1 %87, label %99, label %89

89:                                               ; preds = %85
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef %88, i16 noundef zeroext 12)
  %90 = load %struct.isc_buffer*, %struct.isc_buffer** %11, align 8, !tbaa !5
  call fastcc void @isc_buffer_putuint16(%struct.isc_buffer* noundef %90, i16 noundef zeroext 0)
  %91 = load %struct.isc_buffer*, %struct.isc_buffer** %11, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %91, i64 0, i32 1
  %93 = load i8*, i8** %92, align 8, !tbaa !88
  %94 = load %struct.dns_rdata*, %struct.dns_rdata** %10, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %94, i64 0, i32 0
  store i8* %93, i8** %95, align 8, !tbaa !114
  %96 = load %struct.dns_rdata*, %struct.dns_rdata** %10, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %96, i64 0, i32 1
  store i32 %45, i32* %97, align 8, !tbaa !115
  call void @dns_message_takebuffer(%struct.dns_message* noundef nonnull %0, %struct.isc_buffer** noundef nonnull %11)
  %98 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 19
  store i32 %45, i32* %98, align 8, !tbaa !150
  br label %106

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %88, i64 0, i32 1
  %101 = load i8*, i8** %100, align 8, !tbaa !88
  %102 = load %struct.dns_rdata*, %struct.dns_rdata** %10, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %102, i64 0, i32 0
  store i8* %101, i8** %103, align 8, !tbaa !114
  %104 = load %struct.dns_rdata*, %struct.dns_rdata** %10, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %104, i64 0, i32 1
  store i32 %45, i32* %105, align 8, !tbaa !115
  call void @dns_message_takebuffer(%struct.dns_message* noundef nonnull %0, %struct.isc_buffer** noundef nonnull %11)
  br label %106

106:                                              ; preds = %89, %99, %49
  %107 = phi i32 [ 5, %49 ], [ 0, %99 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37) #21
  switch i32 %107, label %134 [
    i32 0, label %113
    i32 5, label %133
  ]

108:                                              ; preds = %27
  %109 = load %struct.dns_rdata*, %struct.dns_rdata** %10, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %109, i64 0, i32 0
  store i8* null, i8** %110, align 8, !tbaa !114
  %111 = load %struct.dns_rdata*, %struct.dns_rdata** %10, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %111, i64 0, i32 1
  store i32 0, i32* %112, align 8, !tbaa !115
  br label %113

113:                                              ; preds = %106, %108
  %114 = load %struct.dns_rdatalist*, %struct.dns_rdatalist** %9, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %114, i64 0, i32 0
  %116 = load i16, i16* %115, align 8, !tbaa !107
  %117 = load %struct.dns_rdata*, %struct.dns_rdata** %10, align 8, !tbaa !5
  %118 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %117, i64 0, i32 2
  store i16 %116, i16* %118, align 4, !tbaa !116
  %119 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %114, i64 0, i32 1
  %120 = load i16, i16* %119, align 2, !tbaa !106
  %121 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %117, i64 0, i32 3
  store i16 %120, i16* %121, align 2, !tbaa !117
  %122 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %117, i64 0, i32 4
  store i32 0, i32* %122, align 8, !tbaa !118
  %123 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %114, i64 0, i32 4, i32 1
  %124 = load %struct.dns_rdata*, %struct.dns_rdata** %123, align 8, !tbaa !123
  %125 = icmp eq %struct.dns_rdata* %124, null
  %126 = getelementptr inbounds %struct.dns_rdatalist, %struct.dns_rdatalist* %114, i64 0, i32 4, i32 0
  %127 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %124, i64 0, i32 5, i32 1
  %128 = select i1 %125, %struct.dns_rdata** %126, %struct.dns_rdata** %127
  store %struct.dns_rdata* %117, %struct.dns_rdata** %128, align 8, !tbaa !5
  %129 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %117, i64 0, i32 5, i32 0
  store %struct.dns_rdata* %124, %struct.dns_rdata** %129, align 8, !tbaa !45
  %130 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %117, i64 0, i32 5, i32 1
  store %struct.dns_rdata* null, %struct.dns_rdata** %130, align 8, !tbaa !43
  store %struct.dns_rdata* %117, %struct.dns_rdata** %123, align 8, !tbaa !123
  %131 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  call void @dns_rdatalist_tordataset(%struct.dns_rdatalist* noundef %114, %struct.dns_rdataset* noundef %131) #21
  %132 = load %struct.dns_rdataset*, %struct.dns_rdataset** %8, align 8, !tbaa !5
  store %struct.dns_rdataset* %132, %struct.dns_rdataset** %1, align 8, !tbaa !5
  br label %134

133:                                              ; preds = %106
  call void @dns_message_puttemprdata(%struct.dns_message* noundef nonnull %0, %struct.dns_rdata** noundef nonnull %10)
  call void @dns_message_puttemprdataset(%struct.dns_message* noundef nonnull %0, %struct.dns_rdataset** noundef nonnull %8)
  call void @dns_message_puttemprdatalist(%struct.dns_message* noundef nonnull %0, %struct.dns_rdatalist** noundef nonnull %9)
  br label %134

134:                                              ; preds = %133, %113, %106
  %135 = phi i32 [ undef, %106 ], [ 19, %133 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #21
  ret i32 %135
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_setclass(%struct.dns_message* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4624, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %11 = load i16, i16* %10, align 4
  %12 = and i16 %11, 3
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4625, i32 noundef 0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 13
  %17 = load i32, i32* %16, align 8, !tbaa !94
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4626, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #20
  unreachable

20:                                               ; preds = %15
  %21 = and i16 %11, 8192
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4627, i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.160, i64 0, i64 0)) #20
  unreachable

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 6
  store i16 %1, i16* %25, align 4, !tbaa !104
  %26 = or i16 %11, 8192
  store i16 %26, i16* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_setpadding(%struct.dns_message* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4635, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = tail call i16 @llvm.umin.i16(i16 %1, i16 512)
  %11 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 18
  store i16 %10, i16* %11, align 4, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_clonebuffer(%struct.dns_message* noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.dns_message* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1297303360
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4646, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 14
  %10 = load i16, i16* %9, align 4
  %11 = and i16 %10, 256
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !34
  %16 = icmp eq i8* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %19 = load %struct.isc_mem*, %struct.isc_mem** %18, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 44, i32 1
  %21 = load i32, i32* %20, align 8, !tbaa !35
  %22 = zext i32 %21 to i64
  %23 = tail call noalias i8* @isc__mem_get(%struct.isc_mem* noundef %19, i64 noundef %22, i32 noundef 0) #21
  %24 = load i8*, i8** %14, align 8, !tbaa !34
  %25 = load i32, i32* %20, align 8, !tbaa !35
  %26 = zext i32 %25 to i64
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %24, i64 %26, i1 false)
  store i8* %23, i8** %14, align 8, !tbaa !34
  %27 = load i16, i16* %9, align 4
  %28 = or i16 %27, 256
  store i16 %28, i16* %9, align 4
  br label %29

29:                                               ; preds = %17, %13, %8
  %30 = load i16, i16* %9, align 4
  %31 = and i16 %30, 128
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !32
  %36 = icmp eq i8* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %39 = load %struct.isc_mem*, %struct.isc_mem** %38, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 43, i32 1
  %41 = load i32, i32* %40, align 8, !tbaa !33
  %42 = zext i32 %41 to i64
  %43 = tail call noalias i8* @isc__mem_get(%struct.isc_mem* noundef %39, i64 noundef %42, i32 noundef 0) #21
  %44 = load i8*, i8** %34, align 8, !tbaa !32
  %45 = load i32, i32* %40, align 8, !tbaa !33
  %46 = zext i32 %45 to i64
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %44, i64 %46, i1 false)
  store i8* %43, i8** %34, align 8, !tbaa !32
  %47 = load i16, i16* %9, align 4
  %48 = or i16 %47, 128
  store i16 %48, i16* %9, align 4
  br label %49

49:                                               ; preds = %37, %33, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_minttl(%struct.dns_message* noundef readonly %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq %struct.dns_message* %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !40
  %8 = icmp eq i32 %7, 1297303360
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %3
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4742, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

10:                                               ; preds = %5
  %11 = icmp eq i32* %2, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4743, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.161, i64 0, i64 0)) #20
  unreachable

13:                                               ; preds = %10
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 49, i64 %14, i32 0
  %16 = load i8, i8* %15, align 8, !tbaa !143, !range !145
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 49, i64 %14, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !146
  store i32 %20, i32* %2, align 4, !tbaa !10
  br label %21

21:                                               ; preds = %13, %18
  %22 = phi i32 [ 0, %18 ], [ 23, %13 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dns_message_response_minttl(%struct.dns_message* noundef %0, i32* noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.dns_message* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dns_message, %struct.dns_message* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1297303360
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4757, i32 noundef 0, i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq i32* %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4758, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.161, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %9
  %13 = tail call i32 @dns_message_minttl(%struct.dns_message* noundef nonnull %0, i32 noundef 1, i32* noundef nonnull %1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @message_authority_soa_min(%struct.dns_message* noundef nonnull %0, i32* noundef nonnull %1)
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @message_authority_soa_min(%struct.dns_message* noundef %0, i32* nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.dns_name*, align 8
  %4 = alloca %struct.dns_name, align 8
  %5 = alloca %struct.isc_region, align 8
  %6 = alloca %struct.dns_rdata, align 8
  %7 = bitcast %struct.dns_name** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #21
  store %struct.dns_name* null, %struct.dns_name** %3, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 7, i64 2
  %9 = load i32, i32* %8, align 8, !tbaa !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %89, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @dns_message_firstname(%struct.dns_message* noundef %0, i32 noundef 2)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %89

14:                                               ; preds = %11
  %15 = bitcast %struct.dns_name* %4 to i8*
  %16 = bitcast %struct.isc_region* %5 to i8*
  %17 = bitcast %struct.dns_rdata* %6 to i8*
  %18 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %6, i64 0, i32 5, i32 0
  %19 = getelementptr inbounds %struct.dns_rdata, %struct.dns_rdata* %6, i64 0, i32 3
  %20 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %4, i64 0, i32 2
  %21 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %5, i64 0, i32 1
  %22 = getelementptr inbounds %struct.isc_region, %struct.isc_region* %5, i64 0, i32 0
  %23 = bitcast %struct.dns_rdata** %18 to i8*
  br label %24

24:                                               ; preds = %14, %86
  store %struct.dns_name* null, %struct.dns_name** %3, align 8, !tbaa !5
  call void @dns_message_currentname(%struct.dns_message* noundef %0, i32 noundef 2, %struct.dns_name** noundef nonnull %3)
  %25 = load %struct.dns_name*, %struct.dns_name** %3, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %25, i64 0, i32 8, i32 0
  %27 = load %struct.dns_rdataset*, %struct.dns_rdataset** %26, align 8, !tbaa !5
  %28 = icmp eq %struct.dns_rdataset* %27, null
  br i1 %28, label %86, label %29

29:                                               ; preds = %24, %82
  %30 = phi %struct.dns_rdataset* [ %84, %82 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %30, i64 0, i32 8
  %32 = load i32, i32* %31, align 4, !tbaa !108
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %80, label %35

35:                                               ; preds = %29
  %36 = call i32 @dns_rdataset_first(%struct.dns_rdataset* noundef nonnull %30) #21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %30, i64 0, i32 5
  br label %40

40:                                               ; preds = %38, %77
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %15) #21
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %17, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8 -1, i64 16, i1 false)
  call void @dns_rdataset_current(%struct.dns_rdataset* noundef nonnull %30, %struct.dns_rdata* noundef nonnull %6) #21
  %41 = load i16, i16* %19, align 2, !tbaa !117
  switch i16 %41, label %75 [
    i16 6, label %62
    i16 0, label %42
  ]

42:                                               ; preds = %40
  call void @dns_rdata_toregion(%struct.dns_rdata* noundef nonnull %6, %struct.isc_region* noundef nonnull %5) #21
  call fastcc void @dns_name_init(%struct.dns_name* noundef nonnull %4)
  call void @dns_name_fromregion(%struct.dns_name* noundef nonnull %4, %struct.isc_region* noundef nonnull %5) #21
  %43 = load i32, i32* %20, align 8, !tbaa !173
  %44 = load i32, i32* %21, align 8, !tbaa !89
  %45 = icmp ult i32 %44, %43
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4713, i32 noundef 2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.319, i64 0, i64 0)) #20
  unreachable

47:                                               ; preds = %42
  %48 = load i8*, i8** %22, align 8, !tbaa !95
  %49 = zext i32 %43 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %22, align 8, !tbaa !95
  %51 = sub i32 %44, %43
  store i32 %51, i32* %21, align 8, !tbaa !89
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %75, label %53

53:                                               ; preds = %47
  %54 = load i8, i8* %50, align 1, !tbaa !12
  %55 = zext i8 %54 to i16
  %56 = shl nuw i16 %55, 8
  %57 = getelementptr inbounds i8, i8* %50, i64 1
  %58 = load i8, i8* %57, align 1, !tbaa !12
  %59 = zext i8 %58 to i16
  %60 = or i16 %56, %59
  store i16 %60, i16* %19, align 2, !tbaa !117
  %61 = icmp eq i16 %60, 6
  br i1 %61, label %62, label %75

62:                                               ; preds = %53, %40
  %63 = load i16, i16* %19, align 2, !tbaa !117
  %64 = icmp eq i16 %63, 6
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %39, align 4, !tbaa !122
  %67 = call i32 @dns_soa_getminimum(%struct.dns_rdata* noundef nonnull %6) #21
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %39, align 4, !tbaa !122
  br label %73

71:                                               ; preds = %65
  %72 = call i32 @dns_soa_getminimum(%struct.dns_rdata* noundef nonnull %6) #21
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %1, align 4, !tbaa !10
  br label %75

75:                                               ; preds = %62, %40, %53, %47, %73
  %76 = phi i32 [ 1, %73 ], [ 10, %47 ], [ 10, %53 ], [ 10, %40 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #21
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %15) #21
  switch i32 %76, label %80 [
    i32 0, label %77
    i32 10, label %77
  ]

77:                                               ; preds = %75, %75
  %78 = call i32 @dns_rdataset_next(%struct.dns_rdataset* noundef nonnull %30) #21
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %40, label %80, !llvm.loop !254

80:                                               ; preds = %75, %77, %35, %29
  %81 = phi i32 [ 7, %29 ], [ 0, %35 ], [ 0, %77 ], [ %76, %75 ]
  switch i32 %81, label %89 [
    i32 0, label %82
    i32 7, label %82
  ]

82:                                               ; preds = %80, %80
  %83 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %30, i64 0, i32 2, i32 1
  %84 = load %struct.dns_rdataset*, %struct.dns_rdataset** %83, align 8, !tbaa !5
  %85 = icmp eq %struct.dns_rdataset* %84, null
  br i1 %85, label %86, label %29, !llvm.loop !255

86:                                               ; preds = %82, %24
  %87 = call i32 @dns_message_nextname(%struct.dns_message* noundef %0, i32 noundef 2)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %24, label %89, !llvm.loop !256

89:                                               ; preds = %86, %80, %11, %2
  %90 = phi i32 [ 23, %2 ], [ 23, %11 ], [ 0, %80 ], [ 23, %86 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #21
  ret i32 %90
}

declare void @isc__mempool_create(%struct.isc_mem* noundef, i64 noundef, %struct.isc_mempool** noundef) local_unnamed_addr #3

declare void @isc_mempool_setfillcount(%struct.isc_mempool* noundef, i32 noundef) local_unnamed_addr #3

declare void @isc_mempool_setfreemax(%struct.isc_mempool* noundef, i32 noundef) local_unnamed_addr #3

declare void @isc_mempool_setname(%struct.isc_mempool* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dns_message_destroypools(%struct.isc_mempool** noundef %0, %struct.isc_mempool** noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.isc_mempool** %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct.isc_mempool*, %struct.isc_mempool** %0, align 8, !tbaa !5
  %6 = icmp eq %struct.isc_mempool* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4788, i32 noundef 0, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.166, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %4
  %9 = icmp eq %struct.isc_mempool** %1, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = load %struct.isc_mempool*, %struct.isc_mempool** %1, align 8, !tbaa !5
  %12 = icmp eq %struct.isc_mempool* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %8
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4789, i32 noundef 0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.167, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %10
  %15 = tail call i32 @isc_mempool_getallocated(%struct.isc_mempool* noundef nonnull %5) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4791, i32 noundef 1, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.168, i64 0, i64 0)) #20
  unreachable

18:                                               ; preds = %14
  %19 = load %struct.isc_mempool*, %struct.isc_mempool** %1, align 8, !tbaa !5
  %20 = tail call i32 @isc_mempool_getallocated(%struct.isc_mempool* noundef %19) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 4792, i32 noundef 1, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.169, i64 0, i64 0)) #20
  unreachable

23:                                               ; preds = %18
  tail call void @isc__mempool_destroy(%struct.isc_mempool** noundef nonnull %1) #21
  tail call void @isc__mempool_destroy(%struct.isc_mempool** noundef nonnull %0) #21
  ret void
}

declare i32 @isc_mempool_getallocated(%struct.isc_mempool* noundef) local_unnamed_addr #3

declare void @isc__mempool_destroy(%struct.isc_mempool** noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define internal fastcc void @msginitheader(%struct.dns_message* nocapture noundef writeonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 2
  store i16 0, i16* %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 3
  %4 = bitcast i32* %3 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(10) %4, i8 0, i64 10, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define internal fastcc void @msginittsig(%struct.dns_message* nocapture noundef writeonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 32
  store i16 0, i16* %2, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 33
  store i16 0, i16* %3, align 2, !tbaa !165
  %4 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 36
  %5 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 38
  %6 = bitcast %struct.dns_tsigkey** %4 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 -1, i32* %5, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 41
  store %struct.dst_key* null, %struct.dst_key** %7, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 42
  store i16 0, i16* %8, align 8, !tbaa !174
  %9 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 39
  store i32 0, i32* %9, align 4, !tbaa !179
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_setmctx(%struct.isc_buffer* noalias noundef %0, %struct.isc_mem* noundef %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1097, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  store %struct.isc_mem* %1, %struct.isc_mem** %10, align 8, !tbaa !147
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_free(%struct.isc_buffer** noalias noundef %0) unnamed_addr #0 {
  %2 = icmp eq %struct.isc_buffer** %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load %struct.isc_buffer*, %struct.isc_buffer** %0, align 8, !tbaa !5
  %5 = icmp eq %struct.isc_buffer* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !40
  %9 = icmp eq i32 %8, 1114990113
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1160, i32 noundef 0, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.203, i64 0, i64 0)) #20
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 9
  %13 = load %struct.isc_mem*, %struct.isc_mem** %12, align 8, !tbaa !147
  %14 = icmp eq %struct.isc_mem* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1161, i32 noundef 0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.204, i64 0, i64 0)) #20
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %4, i64 0, i32 6
  %18 = load i32, i32* %17, align 8, !tbaa !39
  store %struct.isc_buffer* null, %struct.isc_buffer** %0, align 8, !tbaa !5
  tail call fastcc void @isc_buffer_clearmctx(%struct.isc_buffer* noundef nonnull %4)
  tail call fastcc void @isc_buffer_invalidate(%struct.isc_buffer* noundef nonnull %4)
  %19 = bitcast %struct.isc_buffer* %4 to i8*
  %20 = zext i32 %18 to i64
  %21 = add nuw nsw i64 %20, 64
  tail call void @isc__mem_put(%struct.isc_mem* noundef nonnull %13, i8* noundef nonnull %19, i64 noundef %21, i32 noundef 0) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc void @msgblock_reset(%struct.dns_msgblock* nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !257
  %4 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %0, i64 0, i32 1
  store i32 %3, i32* %4, align 4, !tbaa !258
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @msgblock_free(%struct.isc_mem* noundef %0, %struct.dns_msgblock* noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !257
  %6 = mul i32 %5, %2
  %7 = add i32 %6, 24
  %8 = bitcast %struct.dns_msgblock* %1 to i8*
  %9 = zext i32 %7 to i64
  tail call void @isc__mem_put(%struct.isc_mem* noundef %0, i8* noundef %8, i64 noundef %9, i32 noundef 0) #21
  ret void
}

declare void @dst_context_destroy(%struct.dst_context** noundef) local_unnamed_addr #3

declare void @isc__mem_put(%struct.isc_mem* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @dns_aclenv_detach(%struct.dns_aclenv** noundef) local_unnamed_addr #3

declare void @dns_acl_detach(%struct.dns_acl** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_clearmctx(%struct.isc_buffer* noalias nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !40
  %4 = icmp eq i32 %3, 1114990113
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1104, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 7
  %8 = load i8, i8* %7, align 4, !tbaa !259, !range !145
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  %12 = load %struct.isc_mem*, %struct.isc_mem** %11, align 8, !tbaa !147
  %13 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8, !tbaa !88
  %15 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 2
  %16 = load i32, i32* %15, align 8, !tbaa !134
  %17 = zext i32 %16 to i64
  tail call void @isc__mem_put(%struct.isc_mem* noundef %12, i8* noundef %14, i64 noundef %17, i32 noundef 0) #21
  store i8* null, i8** %13, align 8, !tbaa !88
  store i8 0, i8* %7, align 4, !tbaa !259
  br label %18

18:                                               ; preds = %10, %6
  %19 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  store %struct.isc_mem* null, %struct.isc_mem** %19, align 8, !tbaa !147
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_invalidate(%struct.isc_buffer* noalias nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !40
  %4 = icmp eq i32 %3, 1114990113
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 582, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 8, i32 0
  %8 = bitcast %struct.isc_buffer** %7 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !28
  %10 = icmp eq i8* %9, inttoptr (i64 -1 to i8*)
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 583, i32 noundef 0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.205, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  %14 = load %struct.isc_mem*, %struct.isc_mem** %13, align 8, !tbaa !147
  %15 = icmp eq %struct.isc_mem* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 584, i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.206, i64 0, i64 0)) #20
  unreachable

17:                                               ; preds = %12
  %18 = bitcast %struct.isc_buffer* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %18, i8 0, i64 64, i1 false)
  ret void
}

declare void @isc__mem_putanddetach(%struct.isc_mem** noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @isc_buffer_peekuint16(%struct.isc_buffer* noalias noundef readonly %0, i16* noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 884, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 4, !tbaa !87
  %12 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 8, !tbaa !96
  %14 = sub i32 %11, %13
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %30, label %16

16:                                               ; preds = %9
  %17 = icmp eq i16* %1, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %20 = load i8*, i8** %19, align 8, !tbaa !88
  %21 = zext i32 %13 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !12
  %24 = zext i8 %23 to i16
  %25 = shl nuw i16 %24, 8
  %26 = getelementptr inbounds i8, i8* %22, i64 1
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %28 = zext i8 %27 to i16
  %29 = or i16 %25, %28
  store i16 %29, i16* %1, align 2, !tbaa !13
  br label %30

30:                                               ; preds = %16, %18, %9
  %31 = phi i32 [ 29, %9 ], [ 0, %18 ], [ 0, %16 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc [128 x i8]* @newoffsets(%struct.dns_message* nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 29, i32 1
  %3 = load %struct.dns_msgblock*, %struct.dns_msgblock** %2, align 8, !tbaa !69
  %4 = tail call fastcc i8* @msgblock_internalget(%struct.dns_msgblock* noundef %3, i32 noundef 128)
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %8 = load %struct.isc_mem*, %struct.isc_mem** %7, align 8, !tbaa !63
  %9 = tail call fastcc %struct.dns_msgblock* @msgblock_allocate(%struct.isc_mem* noundef %8, i32 noundef 128, i32 noundef 4)
  %10 = load %struct.dns_msgblock*, %struct.dns_msgblock** %2, align 8, !tbaa !69
  %11 = icmp eq %struct.dns_msgblock* %10, null
  %12 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 29, i32 0
  %13 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %10, i64 0, i32 2, i32 1
  %14 = select i1 %11, %struct.dns_msgblock** %12, %struct.dns_msgblock** %13
  store %struct.dns_msgblock* %9, %struct.dns_msgblock** %14, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %9, i64 0, i32 2, i32 0
  store %struct.dns_msgblock* %10, %struct.dns_msgblock** %15, align 8, !tbaa !61
  %16 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %9, i64 0, i32 2, i32 1
  store %struct.dns_msgblock* null, %struct.dns_msgblock** %16, align 8, !tbaa !59
  store %struct.dns_msgblock* %9, %struct.dns_msgblock** %2, align 8, !tbaa !69
  %17 = tail call fastcc i8* @msgblock_internalget(%struct.dns_msgblock* noundef %9, i32 noundef 128)
  br label %18

18:                                               ; preds = %6, %1
  %19 = phi i8* [ %17, %6 ], [ %4, %1 ]
  %20 = bitcast i8* %19 to [128 x i8]*
  ret [128 x i8]* %20
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @isc_buffer_setactive(%struct.isc_buffer* noalias nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !40
  %5 = icmp eq i32 %4, 1114990113
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 776, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !96
  %10 = add i32 %9, %1
  %11 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %12 = load i32, i32* %11, align 4, !tbaa !87
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 777, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.209, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 5
  store i32 %10, i32* %16, align 4, !tbaa !133
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @getname(%struct.dns_name* noundef %0, %struct.isc_buffer* noundef %1, %struct.dns_message* nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc %struct.isc_buffer* @currentbuffer(%struct.dns_message* noundef %2)
  br label %5

5:                                                ; preds = %3, %10
  %6 = phi i32 [ 0, %3 ], [ %11, %10 ]
  %7 = phi %struct.isc_buffer* [ %4, %3 ], [ %12, %10 ]
  %8 = tail call i32 @dns_name_fromwire(%struct.dns_name* noundef %0, %struct.isc_buffer* noundef %1, i32 noundef 3, %struct.isc_buffer* noundef %7) #21
  %9 = icmp eq i32 %8, 19
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  tail call fastcc void @newbuffer(%struct.dns_message* noundef %2, i32 noundef 1232)
  %11 = add nuw nsw i32 %6, 1
  %12 = tail call fastcc %struct.isc_buffer* @currentbuffer(%struct.dns_message* noundef %2)
  tail call fastcc void @dns_name_reset(%struct.dns_name* noundef %0)
  %13 = icmp eq i32 %11, 2
  br i1 %13, label %14, label %5, !llvm.loop !260

14:                                               ; preds = %10
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 883, i32 noundef 2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.210, i64 0, i64 0)) #20
  unreachable

15:                                               ; preds = %5
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc i8* @msgblock_internalget(%struct.dns_msgblock* noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = icmp eq %struct.dns_msgblock* %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !258
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = add i32 %6, -1
  store i32 %9, i32* %5, align 4, !tbaa !258
  %10 = getelementptr inbounds %struct.dns_msgblock, %struct.dns_msgblock* %0, i64 1
  %11 = bitcast %struct.dns_msgblock* %10 to i8*
  %12 = mul i32 %9, %1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  br label %15

15:                                               ; preds = %2, %4, %8
  %16 = phi i8* [ %14, %8 ], [ null, %4 ], [ null, %2 ]
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noalias %struct.dns_msgblock* @msgblock_allocate(%struct.isc_mem* noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = mul i32 %2, %1
  %5 = add i32 %4, 24
  %6 = zext i32 %5 to i64
  %7 = tail call noalias i8* @isc__mem_get(%struct.isc_mem* noundef %0, i64 noundef %6, i32 noundef 0) #21
  %8 = bitcast i8* %7 to %struct.dns_msgblock*
  %9 = bitcast i8* %7 to i32*
  store i32 %2, i32* %9, align 8, !tbaa !257
  %10 = getelementptr inbounds i8, i8* %7, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 %2, i32* %11, align 4, !tbaa !258
  %12 = getelementptr inbounds i8, i8* %7, i64 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8 -1, i64 16, i1 false)
  ret %struct.dns_msgblock* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.isc_buffer* @currentbuffer(%struct.dns_message* nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 25, i32 1
  %3 = load %struct.isc_buffer*, %struct.isc_buffer** %2, align 8, !tbaa !22
  %4 = icmp eq %struct.isc_buffer* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.182, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %1
  ret %struct.isc_buffer* %3
}

declare i32 @dns_name_fromwire(%struct.dns_name* noundef, %struct.isc_buffer* noundef, i32 noundef, %struct.isc_buffer* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @newbuffer(%struct.dns_message* nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.isc_buffer*, align 8
  %4 = bitcast %struct.isc_buffer** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #21
  store %struct.isc_buffer* null, %struct.isc_buffer** %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 22
  %6 = load %struct.isc_mem*, %struct.isc_mem** %5, align 8, !tbaa !63
  call fastcc void @isc_buffer_allocate(%struct.isc_mem* noundef %6, %struct.isc_buffer** noundef nonnull %3, i32 noundef %1)
  %7 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 25, i32 1
  %8 = load %struct.isc_buffer*, %struct.isc_buffer** %7, align 8, !tbaa !22
  %9 = icmp eq %struct.isc_buffer* %8, null
  %10 = load %struct.isc_buffer*, %struct.isc_buffer** %3, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.dns_message, %struct.dns_message* %0, i64 0, i32 25, i32 0
  %12 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %8, i64 0, i32 8, i32 1
  %13 = select i1 %9, %struct.isc_buffer** %11, %struct.isc_buffer** %12
  store %struct.isc_buffer* %10, %struct.isc_buffer** %13, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %10, i64 0, i32 8, i32 0
  store %struct.isc_buffer* %8, %struct.isc_buffer** %14, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %10, i64 0, i32 8, i32 1
  store %struct.isc_buffer* null, %struct.isc_buffer** %15, align 8, !tbaa !31
  store %struct.isc_buffer* %10, %struct.isc_buffer** %7, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dns_name_reset(%struct.dns_name* noundef %0) unnamed_addr #0 {
  %2 = icmp eq %struct.dns_name* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.dns_name, %struct.dns_name* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = icmp eq i32 %5, 1145983854
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.211, i64 0, i64 0), i32 noundef 241, i32 noundef 0, i8* noundef getelementptr inbounds ([118 x i8], [118 x i8]* @.str.212, i64 0, i64 0)) #20
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 4, i32 0
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 6
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.211, i64 0, i64 0), i32 noundef 242, i32 noundef 0, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.213, i64 0, i64 0)) #20
  unreachable

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 1
  %16 = and i16 %10, -2
  %17 = bitcast i8** %15 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store i16 %16, i16* %9, align 8
  %18 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %0, i64 0, i32 6
  %19 = load %struct.isc_buffer*, %struct.isc_buffer** %18, align 8, !tbaa !178
  %20 = icmp eq %struct.isc_buffer* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call fastcc void @isc_buffer_clear(%struct.isc_buffer* noundef nonnull %19)
  br label %22

22:                                               ; preds = %21, %14
  ret void
}

declare zeroext i1 @dns_name_equal(%struct.dns_name* noundef, %struct.dns_name* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define internal fastcc zeroext i1 @update(i32 noundef %0, i16 noundef zeroext %1) unnamed_addr #15 {
  switch i32 %0, label %8 [
    i32 1, label %3
    i32 2, label %6
  ]

3:                                                ; preds = %2
  %4 = and i16 %1, -2
  %5 = icmp eq i16 %4, 254
  br label %8

6:                                                ; preds = %2
  %7 = icmp eq i16 %1, 255
  br label %8

8:                                                ; preds = %2, %6, %3
  %9 = phi i1 [ %5, %3 ], [ %7, %6 ], [ false, %2 ]
  ret i1 %9
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @getrdata(%struct.isc_buffer* noundef %0, %struct.dns_message* nocapture noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, %struct.dns_rdata* noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc %struct.isc_buffer* @currentbuffer(%struct.dns_message* noundef %1)
  tail call fastcc void @isc_buffer_setactive(%struct.isc_buffer* noundef %0, i32 noundef %4)
  %8 = tail call i32 @dns_rdata_fromwire(%struct.dns_rdata* noundef %5, i16 noundef zeroext %2, i16 noundef zeroext %3, %struct.isc_buffer* noundef %0, i32 noundef 3, %struct.isc_buffer* noundef %7) #21
  %9 = icmp eq i32 %8, 19
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = shl i32 %4, 1
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 1232)
  br label %13

13:                                               ; preds = %10, %24
  %14 = phi i32 [ 0, %10 ], [ %25, %24 ]
  %15 = phi i32 [ 0, %10 ], [ %26, %24 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 920, i32 noundef 2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.217, i64 0, i64 0)) #20
  unreachable

20:                                               ; preds = %17
  %21 = icmp ugt i32 %14, 65534
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = shl i32 %14, 1
  br label %24

24:                                               ; preds = %13, %22
  %25 = phi i32 [ %23, %22 ], [ %12, %13 ]
  tail call fastcc void @newbuffer(%struct.dns_message* noundef %1, i32 noundef %25)
  %26 = add i32 %15, 1
  %27 = tail call fastcc %struct.isc_buffer* @currentbuffer(%struct.dns_message* noundef %1)
  %28 = tail call i32 @dns_rdata_fromwire(%struct.dns_rdata* noundef %5, i16 noundef zeroext %2, i16 noundef zeroext %3, %struct.isc_buffer* noundef %0, i32 noundef 3, %struct.isc_buffer* noundef %27) #21
  %29 = icmp eq i32 %28, 19
  br i1 %29, label %13, label %30, !llvm.loop !261

30:                                               ; preds = %20, %24, %6
  %31 = phi i32 [ %8, %6 ], [ 19, %20 ], [ %28, %24 ]
  ret i32 %31
}

declare zeroext i16 @dns_rdata_covers(%struct.dns_rdata* noundef) local_unnamed_addr #3

declare zeroext i1 @dns_rdata_checkowner(%struct.dns_name* noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @dns_rdatatype_questiononly(i16 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @dns_rdatatype_issingleton(i16 noundef zeroext) local_unnamed_addr #3

declare void @dns_rdatalist_fromrdataset(%struct.dns_rdataset* noundef, %struct.dns_rdatalist** noundef) local_unnamed_addr #3

declare i32 @dns_rdata_compare(%struct.dns_rdata* noundef, %struct.dns_rdata* noundef) local_unnamed_addr #3

declare void @dns_rdataset_setownercase(%struct.dns_rdataset* noundef, %struct.dns_name* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc zeroext i1 @auth_signed(%struct.dns_namelist_t* nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.dns_namelist_t, %struct.dns_namelist_t* %0, i64 0, i32 0
  %3 = load %struct.dns_name*, %struct.dns_name** %2, align 8, !tbaa !5
  %4 = icmp eq %struct.dns_name* %3, null
  br i1 %4, label %47, label %9

5:                                                ; preds = %43
  %6 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %11, i64 0, i32 7, i32 1
  %7 = load %struct.dns_name*, %struct.dns_name** %6, align 8, !tbaa !5
  %8 = icmp eq %struct.dns_name* %7, null
  br i1 %8, label %47, label %9, !llvm.loop !262

9:                                                ; preds = %1, %5
  %10 = phi i1 [ %8, %5 ], [ %4, %1 ]
  %11 = phi %struct.dns_name* [ %7, %5 ], [ %3, %1 ]
  %12 = getelementptr inbounds %struct.dns_name, %struct.dns_name* %11, i64 0, i32 8, i32 0
  %13 = load %struct.dns_rdataset*, %struct.dns_rdataset** %12, align 8, !tbaa !5
  %14 = icmp eq %struct.dns_rdataset* %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %9, %37
  %16 = phi %struct.dns_rdataset* [ %41, %37 ], [ %13, %9 ]
  %17 = phi i32 [ %39, %37 ], [ 0, %9 ]
  %18 = phi i32 [ %38, %37 ], [ 0, %9 ]
  %19 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %16, i64 0, i32 4
  %20 = load i16, i16* %19, align 2, !tbaa !81
  switch i16 %20, label %37 [
    i16 43, label %21
    i16 47, label %23
    i16 50, label %25
    i16 46, label %27
  ]

21:                                               ; preds = %15
  %22 = or i32 %18, 1
  br label %27

23:                                               ; preds = %15
  %24 = or i32 %18, 2
  br label %27

25:                                               ; preds = %15
  %26 = or i32 %18, 4
  br label %27

27:                                               ; preds = %15, %25, %23, %21
  %28 = phi i32 [ %18, %15 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ]
  %29 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %16, i64 0, i32 7
  %30 = load i16, i16* %29, align 2, !tbaa !82
  switch i16 %30, label %37 [
    i16 43, label %31
    i16 47, label %33
    i16 50, label %35
  ]

31:                                               ; preds = %27
  %32 = or i32 %17, 1
  br label %37

33:                                               ; preds = %27
  %34 = or i32 %17, 2
  br label %37

35:                                               ; preds = %27
  %36 = or i32 %17, 4
  br label %37

37:                                               ; preds = %31, %33, %35, %27, %15
  %38 = phi i32 [ %18, %15 ], [ %28, %27 ], [ %28, %35 ], [ %28, %33 ], [ %28, %31 ]
  %39 = phi i32 [ %17, %15 ], [ %17, %27 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  %40 = getelementptr inbounds %struct.dns_rdataset, %struct.dns_rdataset* %16, i64 0, i32 2, i32 1
  %41 = load %struct.dns_rdataset*, %struct.dns_rdataset** %40, align 8, !tbaa !5
  %42 = icmp eq %struct.dns_rdataset* %41, null
  br i1 %42, label %43, label %15, !llvm.loop !263

43:                                               ; preds = %37, %9
  %44 = phi i32 [ 0, %9 ], [ %38, %37 ]
  %45 = phi i32 [ 0, %9 ], [ %39, %37 ]
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %5, label %47

47:                                               ; preds = %43, %5, %1
  %48 = phi i1 [ %4, %1 ], [ %10, %43 ], [ %8, %5 ]
  ret i1 %48
}

declare i32 @dns_rdata_fromwire(%struct.dns_rdata* noundef, i16 noundef zeroext, i16 noundef zeroext, %struct.isc_buffer* noundef, i32 noundef, %struct.isc_buffer* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @isc_buffer_reserve(%struct.isc_buffer* noalias nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !40
  %5 = icmp eq i32 %4, 1114990113
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 1116, i32 noundef 0, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.220, i64 0, i64 0)) #20
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 8, !tbaa !134
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %12 = load i32, i32* %11, align 4, !tbaa !87
  %13 = zext i32 %12 to i64
  %14 = sub nsw i64 %10, %13
  %15 = zext i32 %1 to i64
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 9
  %19 = load %struct.isc_mem*, %struct.isc_mem** %18, align 8, !tbaa !147
  %20 = icmp eq %struct.isc_mem* %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %17
  %22 = add i32 %12, %1
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %23, 511
  %25 = and i64 %24, 8589934080
  %26 = tail call i64 @llvm.umin.i64(i64 %25, i64 4294967295)
  %27 = sub nsw i64 %26, %13
  %28 = icmp ult i64 %27, %15
  br i1 %28, label %44, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 7
  %31 = load i8, i8* %30, align 4, !tbaa !259, !range !145
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %34 = load i8*, i8** %33, align 8, !tbaa !88
  br i1 %32, label %35, label %40

35:                                               ; preds = %29
  %36 = tail call noalias i8* @isc__mem_get(%struct.isc_mem* noundef nonnull %19, i64 noundef %26, i32 noundef 0) #21
  store i8* %36, i8** %33, align 8, !tbaa !88
  %37 = icmp eq i8* %34, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %36, i8* nonnull align 1 %34, i64 %13, i1 false)
  br label %39

39:                                               ; preds = %38, %35
  store i8 1, i8* %30, align 4, !tbaa !259
  br label %42

40:                                               ; preds = %29
  %41 = tail call i8* @isc__mem_reget(%struct.isc_mem* noundef nonnull %19, i8* noundef %34, i64 noundef %10, i64 noundef %26, i32 noundef 64) #21
  store i8* %41, i8** %33, align 8, !tbaa !88
  br label %42

42:                                               ; preds = %40, %39
  %43 = trunc i64 %26 to i32
  store i32 %43, i32* %8, align 8, !tbaa !134
  br label %44

44:                                               ; preds = %21, %17, %7, %42
  %45 = phi i32 [ 0, %42 ], [ 0, %7 ], [ 19, %17 ], [ 1, %21 ]
  ret i32 %45
}

declare i8* @isc__mem_reget(%struct.isc_mem* noundef, i8* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dns_rdataset_towire(%struct.dns_rdataset* noundef, %struct.dns_name* noundef, %struct.dns_compress* noundef, %struct.isc_buffer* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

declare void @dns_rdatalist_init(%struct.dns_rdatalist* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i8 @isc_buffer_getuint8(%struct.isc_buffer* noalias noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #21
  store i8 0, i8* %2, align 1, !tbaa !12
  %3 = call fastcc i32 @isc_buffer_peekuint8(%struct.isc_buffer* noundef %0, i8* noundef nonnull %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 855, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #20
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !96
  %9 = add i32 %8, 1
  store i32 %9, i32* %7, align 8, !tbaa !96
  %10 = load i8, i8* %2, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #21
  ret i8 %10
}

; Function Attrs: nofree
declare i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i8* @inet_ntop(i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @isc_buffer_peekuint8(%struct.isc_buffer* noalias noundef readonly %0, i8* noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 844, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 4, !tbaa !87
  %12 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 8, !tbaa !96
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = icmp eq i8* %1, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8, !tbaa !88
  %20 = zext i32 %13 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !12
  store i8 %22, i8* %1, align 1, !tbaa !12
  br label %23

23:                                               ; preds = %15, %17, %9
  %24 = phi i32 [ 29, %9 ], [ 0, %17 ], [ 0, %15 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @isc_buffer_peekuint32(%struct.isc_buffer* noalias noundef readonly %0, i32* noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq %struct.isc_buffer* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 1114990113
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @isc_assertion_failed(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.171, i64 0, i64 0), i32 noundef 912, i32 noundef 0, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.173, i64 0, i64 0)) #20
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 4, !tbaa !87
  %12 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 8, !tbaa !96
  %14 = sub i32 %11, %13
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %40, label %16

16:                                               ; preds = %9
  %17 = icmp eq i32* %1, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.isc_buffer, %struct.isc_buffer* %0, i64 0, i32 1
  %20 = load i8*, i8** %19, align 8, !tbaa !88
  %21 = zext i32 %13 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !12
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = getelementptr inbounds i8, i8* %22, i64 1
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %29, %25
  %31 = getelementptr inbounds i8, i8* %22, i64 2
  %32 = load i8, i8* %31, align 1, !tbaa !12
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %30, %34
  %36 = getelementptr inbounds i8, i8* %22, i64 3
  %37 = load i8, i8* %36, align 1, !tbaa !12
  %38 = zext i8 %37 to i32
  %39 = or i32 %35, %38
  store i32 %39, i32* %1, align 4, !tbaa !10
  br label %40

40:                                               ; preds = %16, %18, %9
  %41 = phi i32 [ 29, %9 ], [ 0, %18 ], [ 0, %16 ]
  ret i32 %41
}

declare zeroext i1 @isc_log_wouldlog(%struct.isc_log* noundef, i32 noundef) local_unnamed_addr #3

declare void @isc_sockaddr_format(%struct.isc_sockaddr* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @dns_name_fromregion(%struct.dns_name* noundef, %struct.isc_region* noundef) local_unnamed_addr #3

declare i32 @dns_soa_getminimum(%struct.dns_rdata* noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 15.0.7"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i64 0, i64 4, !10, i64 8, i64 8, !12, i64 16, i64 2, !13, i64 20, i64 4, !10, i64 24, i64 2, !13, i64 26, i64 2, !13, i64 28, i64 2, !13, i64 32, i64 16, !12, i64 48, i64 64, !12, i64 112, i64 32, !12, i64 144, i64 8, !5, i64 152, i64 8, !5, i64 160, i64 8, !5, i64 168, i64 4, !10, i64 172, i64 4, !12, i64 172, i64 4, !10, i64 172, i64 4, !10, i64 172, i64 4, !10, i64 172, i64 4, !10, i64 172, i64 4, !10, i64 172, i64 4, !10, i64 173, i64 4, !10, i64 173, i64 4, !10, i64 173, i64 4, !10, i64 173, i64 4, !10, i64 173, i64 4, !10, i64 173, i64 4, !10, i64 173, i64 4, !10, i64 173, i64 4, !10, i64 176, i64 4, !10, i64 180, i64 4, !10, i64 184, i64 4, !10, i64 188, i64 2, !13, i64 192, i64 4, !10, i64 200, i64 8, !5, i64 208, i64 8, !5, i64 216, i64 8, !5, i64 224, i64 8, !5, i64 232, i64 8, !5, i64 240, i64 8, !5, i64 248, i64 8, !5, i64 256, i64 8, !5, i64 264, i64 8, !5, i64 272, i64 8, !5, i64 280, i64 8, !5, i64 288, i64 8, !5, i64 296, i64 8, !5, i64 304, i64 8, !5, i64 312, i64 8, !5, i64 320, i64 8, !5, i64 328, i64 8, !5, i64 336, i64 8, !5, i64 344, i64 8, !5, i64 352, i64 2, !13, i64 354, i64 2, !13, i64 360, i64 8, !5, i64 368, i64 8, !5, i64 376, i64 8, !5, i64 384, i64 8, !5, i64 392, i64 4, !10, i64 396, i64 4, !10, i64 400, i64 8, !5, i64 408, i64 8, !5, i64 416, i64 2, !13, i64 424, i64 8, !5, i64 432, i64 4, !10, i64 440, i64 8, !5, i64 448, i64 4, !10, i64 456, i64 4, !10, i64 464, i64 8, !5, i64 472, i64 8, !5, i64 480, i64 8, !5, i64 488, i64 8, !5, i64 496, i64 8, !5, i64 504, i64 8, !15, i64 512, i64 32, !12}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{i64 4, i64 8, !12, i64 12, i64 2, !13, i64 16, i64 4, !10, i64 20, i64 2, !13, i64 22, i64 2, !13, i64 24, i64 2, !13, i64 28, i64 16, !12, i64 44, i64 64, !12, i64 108, i64 32, !12, i64 140, i64 8, !5, i64 148, i64 8, !5, i64 156, i64 8, !5, i64 164, i64 4, !10, i64 168, i64 4, !12, i64 168, i64 4, !10, i64 168, i64 4, !10, i64 168, i64 4, !10, i64 168, i64 4, !10, i64 168, i64 4, !10, i64 168, i64 4, !10, i64 169, i64 4, !10, i64 169, i64 4, !10, i64 169, i64 4, !10, i64 169, i64 4, !10, i64 169, i64 4, !10, i64 169, i64 4, !10, i64 169, i64 4, !10, i64 169, i64 4, !10, i64 172, i64 4, !10, i64 176, i64 4, !10, i64 180, i64 4, !10, i64 184, i64 2, !13, i64 188, i64 4, !10, i64 196, i64 8, !5, i64 204, i64 8, !5, i64 212, i64 8, !5, i64 220, i64 8, !5, i64 228, i64 8, !5, i64 236, i64 8, !5, i64 244, i64 8, !5, i64 252, i64 8, !5, i64 260, i64 8, !5, i64 268, i64 8, !5, i64 276, i64 8, !5, i64 284, i64 8, !5, i64 292, i64 8, !5, i64 300, i64 8, !5, i64 308, i64 8, !5, i64 316, i64 8, !5, i64 324, i64 8, !5, i64 332, i64 8, !5, i64 340, i64 8, !5, i64 348, i64 2, !13, i64 350, i64 2, !13, i64 356, i64 8, !5, i64 364, i64 8, !5, i64 372, i64 8, !5, i64 380, i64 8, !5, i64 388, i64 4, !10, i64 392, i64 4, !10, i64 396, i64 8, !5, i64 404, i64 8, !5, i64 412, i64 2, !13, i64 420, i64 8, !5, i64 428, i64 4, !10, i64 436, i64 8, !5, i64 444, i64 4, !10, i64 452, i64 4, !10, i64 460, i64 8, !5, i64 468, i64 8, !5, i64 476, i64 8, !5, i64 484, i64 8, !5, i64 492, i64 8, !5, i64 500, i64 8, !15, i64 508, i64 32, !12}
!18 = !{i64 0, i64 8, !12, i64 8, i64 2, !13, i64 12, i64 4, !10, i64 16, i64 2, !13, i64 18, i64 2, !13, i64 20, i64 2, !13, i64 24, i64 16, !12, i64 40, i64 64, !12, i64 104, i64 32, !12, i64 136, i64 8, !5, i64 144, i64 8, !5, i64 152, i64 8, !5, i64 160, i64 4, !10, i64 164, i64 4, !12, i64 164, i64 4, !10, i64 164, i64 4, !10, i64 164, i64 4, !10, i64 164, i64 4, !10, i64 164, i64 4, !10, i64 164, i64 4, !10, i64 165, i64 4, !10, i64 165, i64 4, !10, i64 165, i64 4, !10, i64 165, i64 4, !10, i64 165, i64 4, !10, i64 165, i64 4, !10, i64 165, i64 4, !10, i64 165, i64 4, !10, i64 168, i64 4, !10, i64 172, i64 4, !10, i64 176, i64 4, !10, i64 180, i64 2, !13, i64 184, i64 4, !10, i64 192, i64 8, !5, i64 200, i64 8, !5, i64 208, i64 8, !5, i64 216, i64 8, !5, i64 224, i64 8, !5, i64 232, i64 8, !5, i64 240, i64 8, !5, i64 248, i64 8, !5, i64 256, i64 8, !5, i64 264, i64 8, !5, i64 272, i64 8, !5, i64 280, i64 8, !5, i64 288, i64 8, !5, i64 296, i64 8, !5, i64 304, i64 8, !5, i64 312, i64 8, !5, i64 320, i64 8, !5, i64 328, i64 8, !5, i64 336, i64 8, !5, i64 344, i64 2, !13, i64 346, i64 2, !13, i64 352, i64 8, !5, i64 360, i64 8, !5, i64 368, i64 8, !5, i64 376, i64 8, !5, i64 384, i64 4, !10, i64 388, i64 4, !10, i64 392, i64 8, !5, i64 400, i64 8, !5, i64 408, i64 2, !13, i64 416, i64 8, !5, i64 424, i64 4, !10, i64 432, i64 8, !5, i64 440, i64 4, !10, i64 448, i64 4, !10, i64 456, i64 8, !5, i64 464, i64 8, !5, i64 472, i64 8, !5, i64 480, i64 8, !5, i64 488, i64 8, !5, i64 496, i64 8, !15, i64 504, i64 32, !12}
!19 = !{i64 0, i64 4, !12, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 1, i64 4, !10, i64 1, i64 4, !10, i64 1, i64 4, !10, i64 1, i64 4, !10, i64 1, i64 4, !10, i64 1, i64 4, !10, i64 1, i64 4, !10, i64 1, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 2, !13, i64 20, i64 4, !10, i64 28, i64 8, !5, i64 36, i64 8, !5, i64 44, i64 8, !5, i64 52, i64 8, !5, i64 60, i64 8, !5, i64 68, i64 8, !5, i64 76, i64 8, !5, i64 84, i64 8, !5, i64 92, i64 8, !5, i64 100, i64 8, !5, i64 108, i64 8, !5, i64 116, i64 8, !5, i64 124, i64 8, !5, i64 132, i64 8, !5, i64 140, i64 8, !5, i64 148, i64 8, !5, i64 156, i64 8, !5, i64 164, i64 8, !5, i64 172, i64 8, !5, i64 180, i64 2, !13, i64 182, i64 2, !13, i64 188, i64 8, !5, i64 196, i64 8, !5, i64 204, i64 8, !5, i64 212, i64 8, !5, i64 220, i64 4, !10, i64 224, i64 4, !10, i64 228, i64 8, !5, i64 236, i64 8, !5, i64 244, i64 2, !13, i64 252, i64 8, !5, i64 260, i64 4, !10, i64 268, i64 8, !5, i64 276, i64 4, !10, i64 284, i64 4, !10, i64 292, i64 8, !5, i64 300, i64 8, !5, i64 308, i64 8, !5, i64 316, i64 8, !5, i64 324, i64 8, !5, i64 332, i64 8, !15, i64 340, i64 32, !12}
!20 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 8, !5, i64 88, i64 8, !5, i64 96, i64 8, !5, i64 104, i64 8, !5, i64 112, i64 8, !5, i64 120, i64 8, !5, i64 128, i64 2, !13, i64 130, i64 2, !13, i64 136, i64 8, !5, i64 144, i64 8, !5, i64 152, i64 8, !5, i64 160, i64 8, !5, i64 168, i64 4, !10, i64 172, i64 4, !10, i64 176, i64 8, !5, i64 184, i64 8, !5, i64 192, i64 2, !13, i64 200, i64 8, !5, i64 208, i64 4, !10, i64 216, i64 8, !5, i64 224, i64 4, !10, i64 232, i64 4, !10, i64 240, i64 8, !5, i64 248, i64 8, !5, i64 256, i64 8, !5, i64 264, i64 8, !5, i64 272, i64 8, !5, i64 280, i64 8, !15, i64 288, i64 32, !12}
!21 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 8, !5, i64 88, i64 8, !5, i64 96, i64 8, !5, i64 104, i64 8, !5, i64 112, i64 8, !5, i64 120, i64 2, !13, i64 122, i64 2, !13, i64 128, i64 8, !5, i64 136, i64 8, !5, i64 144, i64 8, !5, i64 152, i64 8, !5, i64 160, i64 4, !10, i64 164, i64 4, !10, i64 168, i64 8, !5, i64 176, i64 8, !5, i64 184, i64 2, !13, i64 192, i64 8, !5, i64 200, i64 4, !10, i64 208, i64 8, !5, i64 216, i64 4, !10, i64 224, i64 4, !10, i64 232, i64 8, !5, i64 240, i64 8, !5, i64 248, i64 8, !5, i64 256, i64 8, !5, i64 264, i64 8, !5, i64 272, i64 8, !15, i64 280, i64 32, !12}
!22 = !{!23, !6, i64 248}
!23 = !{!"dns_message", !11, i64 0, !7, i64 8, !14, i64 16, !11, i64 20, !14, i64 24, !14, i64 26, !14, i64 28, !7, i64 32, !7, i64 48, !7, i64 112, !6, i64 144, !6, i64 152, !6, i64 160, !11, i64 168, !7, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 172, !11, i64 173, !11, i64 173, !11, i64 173, !11, i64 173, !11, i64 173, !11, i64 173, !11, i64 173, !11, i64 173, !11, i64 176, !11, i64 180, !11, i64 184, !14, i64 188, !11, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !24, i64 240, !24, i64 256, !24, i64 272, !24, i64 288, !24, i64 304, !24, i64 320, !24, i64 336, !14, i64 352, !14, i64 354, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !11, i64 392, !11, i64 396, !6, i64 400, !6, i64 408, !14, i64 416, !25, i64 424, !25, i64 440, !11, i64 456, !6, i64 464, !26, i64 472, !27, i64 496, !7, i64 512}
!24 = !{!"", !6, i64 0, !6, i64 8}
!25 = !{!"isc_region", !6, i64 0, !11, i64 8}
!26 = !{!"dns_sortlist_arg", !6, i64 0, !6, i64 8, !6, i64 16}
!27 = !{!"", !6, i64 0, !16, i64 8}
!28 = !{!29, !6, i64 40}
!29 = !{!"isc_buffer", !11, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !30, i64 36, !24, i64 40, !6, i64 56}
!30 = !{!"_Bool", !7, i64 0}
!31 = !{!29, !6, i64 48}
!32 = !{!23, !6, i64 424}
!33 = !{!23, !11, i64 432}
!34 = !{!23, !6, i64 440}
!35 = !{!23, !11, i64 448}
!36 = !{!23, !6, i64 368}
!37 = !{!23, !6, i64 496}
!38 = !{!23, !16, i64 504}
!39 = !{!29, !11, i64 32}
!40 = !{!41, !11, i64 0}
!41 = !{!"", !11, i64 0}
!42 = !{!23, !6, i64 320}
!43 = !{!44, !6, i64 32}
!44 = !{!"dns_rdata", !6, i64 0, !11, i64 8, !14, i64 12, !14, i64 14, !11, i64 16, !24, i64 24}
!45 = !{!44, !6, i64 24}
!46 = !{!23, !6, i64 328}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!23, !6, i64 336}
!51 = !{!52, !6, i64 40}
!52 = !{!"dns_rdatalist", !14, i64 0, !14, i64 2, !14, i64 4, !11, i64 8, !24, i64 16, !24, i64 32, !7, i64 48}
!53 = !{!52, !6, i64 32}
!54 = !{!23, !6, i64 344}
!55 = distinct !{!55, !48, !49}
!56 = !{!23, !6, i64 240}
!57 = distinct !{!57, !48, !49}
!58 = !{!23, !6, i64 272}
!59 = !{!60, !6, i64 16}
!60 = !{!"dns_msgblock", !11, i64 0, !11, i64 4, !24, i64 8}
!61 = !{!60, !6, i64 8}
!62 = !{!23, !6, i64 280}
!63 = !{!23, !6, i64 216}
!64 = distinct !{!64, !48, !49}
!65 = !{!23, !6, i64 288}
!66 = !{!23, !6, i64 296}
!67 = distinct !{!67, !48, !49}
!68 = !{!23, !6, i64 304}
!69 = !{!23, !6, i64 312}
!70 = distinct !{!70, !48, !49}
!71 = !{!23, !6, i64 376}
!72 = !{!23, !6, i64 384}
!73 = !{!23, !6, i64 256}
!74 = !{!23, !6, i64 264}
!75 = distinct !{!75, !48, !49}
!76 = !{!23, !6, i64 472}
!77 = !{!23, !6, i64 480}
!78 = !{!23, !11, i64 0}
!79 = !{!80, !14, i64 32}
!80 = !{!"dns_rdataset", !11, i64 0, !6, i64 8, !24, i64 16, !14, i64 32, !14, i64 34, !11, i64 36, !14, i64 40, !14, i64 42, !11, i64 44, !11, i64 48, !11, i64 52, !7, i64 56}
!81 = !{!80, !14, i64 34}
!82 = !{!80, !14, i64 42}
!83 = distinct !{!83, !48, !49}
!84 = distinct !{!84, !48, !49}
!85 = !{i64 0, i64 4, !10, i64 8, i64 8, !5, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !10, i64 32, i64 4, !10, i64 36, i64 1, !86, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5}
!86 = !{!30, !30, i64 0}
!87 = !{!29, !11, i64 20}
!88 = !{!29, !6, i64 8}
!89 = !{!25, !11, i64 8}
!90 = !{!23, !14, i64 16}
!91 = !{!23, !14, i64 26}
!92 = !{!23, !14, i64 24}
!93 = !{!23, !11, i64 20}
!94 = !{!23, !11, i64 168}
!95 = !{!25, !6, i64 0}
!96 = !{!29, !11, i64 24}
!97 = !{!98, !6, i64 32}
!98 = !{!"dns_name", !11, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !99, i64 24, !6, i64 32, !6, i64 40, !24, i64 48, !24, i64 64}
!99 = !{!"dns_name_attrs", !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1}
!100 = !{!24, !6, i64 0}
!101 = !{!24, !6, i64 8}
!102 = !{!98, !6, i64 48}
!103 = !{!98, !6, i64 56}
!104 = !{!23, !14, i64 28}
!105 = !{!23, !6, i64 232}
!106 = !{!52, !14, i64 2}
!107 = !{!52, !14, i64 0}
!108 = !{!80, !11, i64 44}
!109 = !{!98, !6, i64 72}
!110 = !{!80, !6, i64 16}
!111 = !{!80, !6, i64 24}
!112 = distinct !{!112, !48, !49}
!113 = !{!23, !6, i64 144}
!114 = !{!44, !6, i64 0}
!115 = !{!44, !11, i64 8}
!116 = !{!44, !14, i64 12}
!117 = !{!44, !14, i64 14}
!118 = !{!44, !11, i64 16}
!119 = !{!52, !6, i64 16}
!120 = !{!52, !14, i64 4}
!121 = !{!52, !11, i64 8}
!122 = !{!80, !11, i64 36}
!123 = !{!52, !6, i64 24}
!124 = !{!23, !6, i64 152}
!125 = !{!23, !6, i64 400}
!126 = !{!23, !11, i64 392}
!127 = !{!23, !6, i64 160}
!128 = !{!23, !6, i64 360}
!129 = distinct !{!129, !48, !49}
!130 = !{!23, !6, i64 200}
!131 = !{!23, !6, i64 208}
!132 = !{!23, !11, i64 184}
!133 = !{!29, !11, i64 28}
!134 = !{!29, !11, i64 16}
!135 = !{!98, !6, i64 64}
!136 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 1, !86, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5}
!137 = !{!23, !6, i64 464}
!138 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 1, !86, i64 20, i64 8, !5, i64 28, i64 8, !5, i64 36, i64 8, !5}
!139 = distinct !{!139, !48, !49}
!140 = !{!80, !14, i64 40}
!141 = distinct !{!141, !48, !49}
!142 = distinct !{!142, !48, !49}
!143 = !{!144, !30, i64 0}
!144 = !{!"dns_minttl", !30, i64 0, !11, i64 4}
!145 = !{i8 0, i8 2}
!146 = !{!144, !11, i64 4}
!147 = !{!29, !6, i64 56}
!148 = !{!23, !6, i64 408}
!149 = !{!23, !11, i64 176}
!150 = !{!23, !11, i64 192}
!151 = !{!23, !14, i64 188}
!152 = !{!23, !11, i64 180}
!153 = distinct !{!153, !48, !49}
!154 = distinct !{!154, !48, !49}
!155 = distinct !{!155, !48, !49}
!156 = distinct !{!156, !48, !49}
!157 = distinct !{!157, !48, !49}
!158 = distinct !{!158, !48, !49}
!159 = !{i64 0, i64 8, !5, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 1, !86, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5}
!160 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 1, !86, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 8, !5}
!161 = !{i64 0, i64 8, !5}
!162 = !{!23, !6, i64 224}
!163 = distinct !{!163, !48, !49}
!164 = !{!23, !14, i64 352}
!165 = !{!23, !14, i64 354}
!166 = distinct !{!166, !48, !49}
!167 = !{!168, !6, i64 552}
!168 = !{!"dns_tsigkey", !11, i64 0, !6, i64 8, !6, i64 16, !169, i64 24, !6, i64 552, !6, i64 560, !6, i64 568, !30, i64 576, !30, i64 576, !11, i64 580, !11, i64 584, !6, i64 592, !7, i64 600, !24, i64 608}
!169 = !{!"dns_fixedname", !98, i64 0, !7, i64 80, !29, i64 208, !7, i64 272}
!170 = !{!168, !6, i64 560}
!171 = !{!168, !6, i64 16}
!172 = !{!98, !6, i64 8}
!173 = !{!98, !11, i64 16}
!174 = !{!23, !14, i64 416}
!175 = !{!176, !14, i64 138}
!176 = !{!"dns_rdata_any_tsig", !177, i64 0, !6, i64 24, !98, i64 32, !16, i64 112, !14, i64 120, !14, i64 122, !6, i64 128, !14, i64 136, !14, i64 138, !14, i64 140, !6, i64 144}
!177 = !{!"dns_rdatacommon", !14, i64 0, !14, i64 2, !24, i64 8}
!178 = !{!98, !6, i64 40}
!179 = !{!23, !11, i64 396}
!180 = !{!181, !6, i64 8}
!181 = !{!"dns_view", !11, i64 0, !6, i64 8, !14, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !7, i64 112, !30, i64 152, !30, i64 153, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !30, i64 208, !30, i64 209, !30, i64 210, !30, i64 211, !30, i64 212, !7, i64 216, !30, i64 220, !30, i64 221, !30, i64 222, !30, i64 223, !30, i64 224, !30, i64 225, !7, i64 228, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !30, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !30, i64 384, !30, i64 385, !30, i64 386, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !6, i64 416, !11, i64 424, !11, i64 428, !14, i64 432, !6, i64 440, !14, i64 448, !30, i64 450, !30, i64 451, !14, i64 452, !11, i64 456, !7, i64 460, !30, i64 464, !11, i64 468, !14, i64 472, !14, i64 474, !6, i64 480, !11, i64 488, !24, i64 496, !11, i64 512, !30, i64 516, !6, i64 520, !6, i64 528, !24, i64 536, !24, i64 552, !11, i64 568, !6, i64 576, !11, i64 584, !6, i64 592, !6, i64 600, !30, i64 608, !7, i64 616, !7, i64 624, !24, i64 632, !6, i64 648, !6, i64 656, !6, i64 664, !6, i64 672, !169, i64 680, !6, i64 1208, !6, i64 1216, !6, i64 1224, !6, i64 1232, !16, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1304, !11, i64 1336, !6, i64 1344, !14, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384}
!182 = !{!183, !7, i64 34}
!183 = !{!"dns_rdata_sig_t", !177, i64 0, !6, i64 24, !14, i64 32, !7, i64 34, !7, i64 35, !11, i64 36, !11, i64 40, !11, i64 44, !14, i64 48, !98, i64 56, !14, i64 136, !6, i64 144}
!184 = !{!183, !14, i64 48}
!185 = distinct !{!185, !48, !49}
!186 = distinct !{!186, !48, !49}
!187 = distinct !{!187, !48, !49}
!188 = distinct !{!188, !48, !49}
!189 = distinct !{!189, !48, !49}
!190 = distinct !{!190, !48, !49}
!191 = !{i64 0, i64 4, !10, i64 8, i64 8, !5, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 1, !86, i64 24, i64 1, !86, i64 24, i64 1, !86, i64 24, i64 1, !86, i64 24, i64 1, !86, i64 24, i64 1, !86, i64 24, i64 1, !86, i64 24, i64 1, !86, i64 25, i64 1, !86, i64 25, i64 1, !86, i64 25, i64 1, !86, i64 25, i64 1, !86, i64 25, i64 1, !86, i64 25, i64 1, !86, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 8, !5, i64 72, i64 8, !5}
!192 = distinct !{!192, !48, !49}
!193 = distinct !{!193, !48, !49}
!194 = distinct !{!194, !48, !49}
!195 = distinct !{!195, !48, !49}
!196 = distinct !{!196, !48, !49}
!197 = distinct !{!197, !48, !49}
!198 = distinct !{!198, !48, !49}
!199 = distinct !{!199, !48, !49}
!200 = distinct !{!200, !48, !49}
!201 = distinct !{!201, !48, !49}
!202 = distinct !{!202, !48, !49}
!203 = distinct !{!203, !48, !49}
!204 = distinct !{!204, !48, !49}
!205 = distinct !{!205, !48, !49}
!206 = distinct !{!206, !48, !49}
!207 = distinct !{!207, !48, !49}
!208 = distinct !{!208, !48, !49}
!209 = distinct !{!209, !48, !49}
!210 = distinct !{!210, !48, !49}
!211 = distinct !{!211, !48, !49}
!212 = distinct !{!212, !48, !49}
!213 = distinct !{!213, !48, !49}
!214 = distinct !{!214, !48, !49}
!215 = distinct !{!215, !48, !49}
!216 = distinct !{!216, !48, !49}
!217 = distinct !{!217, !48, !49}
!218 = distinct !{!218, !48, !49}
!219 = distinct !{!219, !48, !49}
!220 = distinct !{!220, !48, !49}
!221 = distinct !{!221, !48, !49}
!222 = distinct !{!222, !48, !49}
!223 = distinct !{!223, !48, !49}
!224 = distinct !{!224, !48, !49}
!225 = distinct !{!225, !48, !49}
!226 = distinct !{!226, !48, !49}
!227 = distinct !{!227, !48, !49}
!228 = distinct !{!228, !48, !49}
!229 = distinct !{!229, !48, !49}
!230 = distinct !{!230, !48, !49}
!231 = distinct !{!231, !48, !49}
!232 = distinct !{!232, !48, !49}
!233 = distinct !{!233, !48, !49}
!234 = distinct !{!234, !48, !49}
!235 = distinct !{!235, !48, !49}
!236 = distinct !{!236, !48, !49}
!237 = distinct !{!237, !48, !49}
!238 = distinct !{!238, !48, !49}
!239 = distinct !{!239, !48, !49}
!240 = distinct !{!240, !48, !49}
!241 = distinct !{!241, !48, !49}
!242 = distinct !{!242, !48, !49}
!243 = distinct !{!243, !48, !49}
!244 = distinct !{!244, !48, !49}
!245 = distinct !{!245, !48, !49}
!246 = !{!23, !6, i64 488}
!247 = distinct !{!247, !48, !49}
!248 = !{!249, !14, i64 2}
!249 = !{!"dns_ednsopt", !14, i64 0, !14, i64 2, !6, i64 8}
!250 = distinct !{!250, !48, !49}
!251 = !{!249, !14, i64 0}
!252 = !{!249, !6, i64 8}
!253 = distinct !{!253, !48, !49}
!254 = distinct !{!254, !48, !49}
!255 = distinct !{!255, !48, !49}
!256 = distinct !{!256, !48, !49}
!257 = !{!60, !11, i64 0}
!258 = !{!60, !11, i64 4}
!259 = !{!29, !30, i64 36}
!260 = distinct !{!260, !48, !49}
!261 = distinct !{!261, !49}
!262 = distinct !{!262, !48, !49}
!263 = distinct !{!263, !48, !49}
