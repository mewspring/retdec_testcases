source_filename = "test"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"

@ebx = internal unnamed_addr global i32 0
@0 = external global i32
@__onexitend = local_unnamed_addr global void ()** null
@__onexitbegin = local_unnamed_addr global void ()** null
@global_var_404000.7 = constant [17 x i16] %wide-string
@global_var_402710.10 = constant i32 -1
@initialized = local_unnamed_addr global i32 0
@global_var_40406c.18 = constant [31 x i8] c"Argument domain error (DOMAIN)\00"
@global_var_40408b.19 = constant [28 x i8] c"Argument singularity (SIGN)\00"
@global_var_4040a8.20 = constant [32 x i8] c"Overflow range error (OVERFLOW)\00"
@global_var_4040c8.21 = constant [54 x i8] c"The result is too small to be represented (UNDERFLOW)\00"
@global_var_404100.22 = constant [35 x i8] c"Total loss of significance (TLOSS)\00"
@global_var_404124.23 = constant [37 x i8] c"Partial loss of significance (PLOSS)\00"
@1 = internal constant [8 x i8] c"\83\EC<\B90@@\00"

declare void @__pseudo_call(i32) local_unnamed_addr

define i32 @main(i32 %argc, i8** %argv) local_unnamed_addr {
entry:
  call void @__main()
  %v3_40156a = call i32 (i16*, ...) @_wsystem(i16* getelementptr inbounds ([17 x i16], [17 x i16]* @global_var_404000.7, i32 0, i32 0))
  ret i32 0
}

define i32 ()* @mingw_onexit(i32 ()* %func) local_unnamed_addr {
entry:
  %ebx.global-to-local = alloca i32, align 4
  %onexitend_-20 = alloca void ()**, align 4
  %stack_var_-16 = alloca i32, align 4
  %stack_var_4 = alloca i32, align 4
  %tmp9 = call i32 @__decompiler_undefined_function_0()
  store i32 %tmp9, i32* %stack_var_4, align 4
  %stack_var_0 = alloca i32 ()*, align 4
  store i32 ()* %func, i32 ()** %stack_var_0, align 4
  %v0_401580 = load i32, i32* @ebx, align 4
  %v0_401584 = load i32, i32* bitcast (void ()*** @__onexitbegin to i32*), align 4
  %v2_40158c = call i32 @__decode_pointer(i32 %v0_401584)
  %v11_401591 = icmp eq i32 %v2_40158c, -1
  %tmp14 = bitcast void ()*** %onexitend_-20 to i32*
  store i32 %v2_40158c, i32* %tmp14, align 4
  %v1_401598 = icmp eq i1 %v11_401591, false
  br i1 %v1_401598, label %dec_label_pc_4015b0, label %dec_label_pc_40159a

dec_label_pc_40159a:                              ; preds = %entry
  %tmp15 = inttoptr i32 %tmp9 to i32 ()*
  %v5_4015a1 = call i32 ()* @_onexit(i32 ()* %tmp15)
  %v2_4015ae = load i32 ()*, i32 ()** %stack_var_0, align 4
  %v3_4015ae = ptrtoint i32 ()* %v2_4015ae to i32
  store i32 %v3_4015ae, i32* %ebx.global-to-local, align 4
  ret i32 ()* %v5_4015a1

dec_label_pc_4015b0:                              ; preds = %entry
  call void @_lock(i32 8)
  %v0_4015bc = load i32, i32* bitcast (void ()*** @__onexitbegin to i32*), align 4
  %v2_4015c4 = call i32 @__decode_pointer(i32 %v0_4015bc)
  store i32 %v2_4015c4, i32* %tmp14, align 4
  %v0_4015cd = load i32, i32* bitcast (void ()*** @__onexitend to i32*), align 32
  %v2_4015d5 = call i32 @__decode_pointer(i32 %v0_4015cd)
  store i32 %v2_4015d5, i32* %stack_var_-16, align 4
  %tmp16 = bitcast i32* %stack_var_-16 to void ()***
  %v3_4015ee = load i32, i32* %stack_var_4, align 4
  %tmp17 = inttoptr i32 %v3_4015ee to i32 ()*
  %v9_4015f5 = call i32 ()* @__dllonexit(i32 ()* %tmp17, void ()*** nonnull %onexitend_-20, void ()*** %tmp16)
  %v11_4015f5 = ptrtoint i32 ()* %v9_4015f5 to i32
  store i32 %v11_4015f5, i32* %ebx.global-to-local, align 4
  %v3_4015fc = load void ()**, void ()*** %onexitend_-20, align 4
  %tmp18 = bitcast void ()** %v3_4015fc to i8*
  call void @_encode_pointer(i8* %tmp18)
  store i32 ptrtoint (i32* @0 to i32), i32* bitcast (void ()*** @__onexitbegin to i32*), align 4
  %v3_40160d = load i32, i32* %stack_var_-16, align 4
  %tmp19 = inttoptr i32 %v3_40160d to i8*
  call void @_encode_pointer(i8* %tmp19)
  store i32 ptrtoint (i32* @0 to i32), i32* bitcast (void ()*** @__onexitend to i32*), align 32
  call void @_unlock(i32 8)
  %v0_40162d = load i32, i32* %ebx.global-to-local, align 4
  %v1_40162d = inttoptr i32 %v0_40162d to i32 ()*
  store i32 %v0_401580, i32* %ebx.global-to-local, align 4
  ret i32 ()* %v1_40162d

; uselistorder directives
  uselistorder i32 %v2_40158c, { 1, 0 }
  uselistorder i32* %stack_var_4, { 1, 0 }
  uselistorder i32* %stack_var_-16, { 1, 0, 2 }
  uselistorder void ()*** %onexitend_-20, { 2, 0, 1 }
  uselistorder void (i8*)* @_encode_pointer, { 1, 0 }
  uselistorder i32 (i32)* @__decode_pointer, { 2, 1, 0 }
}

define i32 @atexit(void ()* %func) local_unnamed_addr {
entry:
  %tmp5 = bitcast void ()* %func to i32 ()*
  %v3_40164a = call i32 ()* @mingw_onexit(i32 ()* %tmp5)
  %v1_40164f = icmp eq i32 ()* %v3_40164a, null
  %v1_40165a = sext i1 %v1_40164f to i32
  ret i32 %v1_40165a
}

define void @__do_global_ctors() local_unnamed_addr {
entry:
  store i32 0, i32* @ebx, align 4
  %v4_4016d92 = load i32, i32* inttoptr (i32 add (i32 ptrtoint (i32* @global_var_402710.10 to i32), i32 4) to i32*), align 4
  %v1_4016e03 = icmp eq i32 %v4_4016d92, 0
  %v1_4016e24 = icmp eq i1 %v1_4016e03, false
  br i1 %v1_4016e24, label %dec_label_pc_4016d4, label %dec_label_pc_4016e4

dec_label_pc_4016b3:                              ; preds = %dec_label_pc_4016e4, %dec_label_pc_4016b3
  %v4_4016b3 = phi i32 [ %v0_4016af, %dec_label_pc_4016e4 ], [ %v1_4016ba, %dec_label_pc_4016b3 ]
  %v5_4016b3 = mul i32 %v4_4016b3, 4
  %v6_4016b3 = add i32 %v5_4016b3, ptrtoint (i32* @global_var_402710.10 to i32)
  %v7_4016b3 = inttoptr i32 %v6_4016b3 to i32*
  %v8_4016b3 = load i32, i32* %v7_4016b3, align 4
  call void @__pseudo_call(i32 %v8_4016b3)
  %v0_4016ba = load i32, i32* @ebx, align 4
  %v1_4016ba = add i32 %v0_4016ba, -1
  %v9_4016ba = icmp eq i32 %v1_4016ba, 0
  store i32 %v1_4016ba, i32* @ebx, align 4
  %v1_4016bd = icmp eq i1 %v9_4016ba, false
  br i1 %v1_4016bd, label %dec_label_pc_4016b3, label %dec_label_pc_4016bf

dec_label_pc_4016bf:                              ; preds = %dec_label_pc_4016b3
  %v3_4016c6 = call i32 @atexit(void ()* inttoptr (i32 4200032 to void ()*))
  ret void

dec_label_pc_4016d4:                              ; preds = %entry, %dec_label_pc_4016d4
  %v0_4016d4 = phi i32 [ %v1_4016d6, %dec_label_pc_4016d4 ], [ 1, %entry ]
  store i32 %v0_4016d4, i32* @ebx, align 4
  %v1_4016d6 = add i32 %v0_4016d4, 1
  %v1_4016d9 = mul i32 %v1_4016d6, 4
  %v2_4016d9 = add i32 %v1_4016d9, ptrtoint (i32* @global_var_402710.10 to i32)
  %v3_4016d9 = inttoptr i32 %v2_4016d9 to i32*
  %v4_4016d9 = load i32, i32* %v3_4016d9, align 4
  %v1_4016e0 = icmp eq i32 %v4_4016d9, 0
  %v1_4016e2 = icmp eq i1 %v1_4016e0, false
  br i1 %v1_4016e2, label %dec_label_pc_4016d4, label %dec_label_pc_4016e4

dec_label_pc_4016e4:                              ; preds = %dec_label_pc_4016d4, %entry
  %v0_4016af = phi i32 [ 0, %entry ], [ %v0_4016d4, %dec_label_pc_4016d4 ]
  br label %dec_label_pc_4016b3

; uselistorder directives
  uselistorder i32 %v1_4016d6, { 1, 0 }
  uselistorder i32 %v1_4016ba, { 2, 1, 0 }
  uselistorder i1 false, { 1, 3, 0, 2 }
  uselistorder i32 4, { 1, 2, 0 }
  uselistorder i32 -1, { 2, 0, 1 }
  uselistorder i32 ptrtoint (i32* @global_var_402710.10 to i32), { 1, 2, 0 }
  uselistorder i32* @ebx, { 1, 3, 4, 0, 2 }
  uselistorder label %dec_label_pc_4016d4, { 1, 0 }
}

define void @__main() local_unnamed_addr {
entry:
  %v0_4016f0 = load i32, i32* @initialized, align 4
  %v1_4016f5 = icmp eq i32 %v0_4016f0, 0
  br i1 %v1_4016f5, label %dec_label_pc_401700, label %dec_label_pc_4016f9

dec_label_pc_4016f9:                              ; preds = %entry
  ret void

dec_label_pc_401700:                              ; preds = %entry
  store i32 1, i32* @initialized, align 4
  call void @__do_global_ctors()
  ret void

; uselistorder directives
  uselistorder i32 1, { 7, 6, 1, 2, 5, 4, 3, 0 }
  uselistorder i32 0, { 9, 1, 7, 8, 2, 3, 0, 4, 5, 6, 10 }
}

define i32 @__decode_pointer(i32 %arg1) local_unnamed_addr {
entry:
  ret i32 %arg1
}

define void @_encode_pointer(i8* %ptr) local_unnamed_addr {
entry:
  ret void
}

declare i32 ()* @__dllonexit(i32 ()*, void ()***, void ()***) local_unnamed_addr

declare void @_lock(i32) local_unnamed_addr

declare i32 ()* @_onexit(i32 ()*) local_unnamed_addr

declare void @_unlock(i32) local_unnamed_addr

declare i32 @_wsystem(i16*, ...) local_unnamed_addr

declare i32 @__decompiler_undefined_function_0() local_unnamed_addr

declare i16* @__decompiler_undefined_function_1() local_unnamed_addr

declare void ()*** @__decompiler_undefined_function_2() local_unnamed_addr

declare void ()** @__decompiler_undefined_function_3() local_unnamed_addr

declare i32 ()* @__decompiler_undefined_function_4() local_unnamed_addr

declare void ()* @__decompiler_undefined_function_5() local_unnamed_addr

declare i8* @__decompiler_undefined_function_6() local_unnamed_addr
