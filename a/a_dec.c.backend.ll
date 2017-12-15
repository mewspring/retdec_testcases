source_filename = "test"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"

@ebx = internal unnamed_addr global i32 0
@0 = external global i32
@__onexitend = local_unnamed_addr global void ()** null
@__onexitbegin = local_unnamed_addr global void ()** null
@global_var_402750.15 = constant i32 -1
@initialized = local_unnamed_addr global i32 0
@global_var_404064.23 = constant [31 x i8] c"Argument domain error (DOMAIN)\00"
@global_var_404083.24 = constant [28 x i8] c"Argument singularity (SIGN)\00"
@global_var_4040a0.25 = constant [32 x i8] c"Overflow range error (OVERFLOW)\00"
@global_var_4040c0.26 = constant [54 x i8] c"The result is too small to be represented (UNDERFLOW)\00"
@global_var_4040f8.27 = constant [35 x i8] c"Total loss of significance (TLOSS)\00"
@global_var_40411c.28 = constant [37 x i8] c"Partial loss of significance (PLOSS)\00"
@1 = internal constant [8 x i8] c"\83\EC<\B9(@@\00"

declare void @__pseudo_call(i32) local_unnamed_addr

define i32 @main(i32 %argc, i8** %argv) local_unnamed_addr {
entry:
  %stack_var_-42 = alloca i16*, align 4
  call void @__main()
  store i16* inttoptr (i32 6619240 to i16*), i16** %stack_var_-42, align 4
  %tmp18 = bitcast i16** %stack_var_-42 to i16*
  %v3_4015a7 = call i32 (i16*, ...) @wprintf(i16* %tmp18)
  ret i32 0
}

define i32 ()* @mingw_onexit(i32 ()* %func) local_unnamed_addr {
entry:
  %ebx.global-to-local = alloca i32, align 4
  %onexitend_-20 = alloca void ()**, align 4
  %stack_var_-16 = alloca i32, align 4
  %stack_var_4 = alloca i32, align 4
  %tmp9 = call i32 @__decompiler_undefined_function_2()
  store i32 %tmp9, i32* %stack_var_4, align 4
  %stack_var_0 = alloca i32 ()*, align 4
  store i32 ()* %func, i32 ()** %stack_var_0, align 4
  %v0_4015c0 = load i32, i32* @ebx, align 4
  %v0_4015c4 = load i32, i32* bitcast (void ()*** @__onexitbegin to i32*), align 4
  %v2_4015cc = call i32 @__decode_pointer(i32 %v0_4015c4)
  %v11_4015d1 = icmp eq i32 %v2_4015cc, -1
  %tmp14 = bitcast void ()*** %onexitend_-20 to i32*
  store i32 %v2_4015cc, i32* %tmp14, align 4
  %v1_4015d8 = icmp eq i1 %v11_4015d1, false
  br i1 %v1_4015d8, label %dec_label_pc_4015f0, label %dec_label_pc_4015da

dec_label_pc_4015da:                              ; preds = %entry
  %tmp15 = inttoptr i32 %tmp9 to i32 ()*
  %v5_4015e1 = call i32 ()* @_onexit(i32 ()* %tmp15)
  %v2_4015ee = load i32 ()*, i32 ()** %stack_var_0, align 4
  %v3_4015ee = ptrtoint i32 ()* %v2_4015ee to i32
  store i32 %v3_4015ee, i32* %ebx.global-to-local, align 4
  ret i32 ()* %v5_4015e1

dec_label_pc_4015f0:                              ; preds = %entry
  call void @_lock(i32 8)
  %v0_4015fc = load i32, i32* bitcast (void ()*** @__onexitbegin to i32*), align 4
  %v2_401604 = call i32 @__decode_pointer(i32 %v0_4015fc)
  store i32 %v2_401604, i32* %tmp14, align 4
  %v0_40160d = load i32, i32* bitcast (void ()*** @__onexitend to i32*), align 32
  %v2_401615 = call i32 @__decode_pointer(i32 %v0_40160d)
  store i32 %v2_401615, i32* %stack_var_-16, align 4
  %tmp16 = bitcast i32* %stack_var_-16 to void ()***
  %v3_40162e = load i32, i32* %stack_var_4, align 4
  %tmp17 = inttoptr i32 %v3_40162e to i32 ()*
  %v9_401635 = call i32 ()* @__dllonexit(i32 ()* %tmp17, void ()*** nonnull %onexitend_-20, void ()*** %tmp16)
  %v11_401635 = ptrtoint i32 ()* %v9_401635 to i32
  store i32 %v11_401635, i32* %ebx.global-to-local, align 4
  %v3_40163c = load void ()**, void ()*** %onexitend_-20, align 4
  %tmp18 = bitcast void ()** %v3_40163c to i8*
  call void @_encode_pointer(i8* %tmp18)
  store i32 ptrtoint (i32* @0 to i32), i32* bitcast (void ()*** @__onexitbegin to i32*), align 4
  %v3_40164d = load i32, i32* %stack_var_-16, align 4
  %tmp19 = inttoptr i32 %v3_40164d to i8*
  call void @_encode_pointer(i8* %tmp19)
  store i32 ptrtoint (i32* @0 to i32), i32* bitcast (void ()*** @__onexitend to i32*), align 32
  call void @_unlock(i32 8)
  %v0_40166d = load i32, i32* %ebx.global-to-local, align 4
  %v1_40166d = inttoptr i32 %v0_40166d to i32 ()*
  store i32 %v0_4015c0, i32* %ebx.global-to-local, align 4
  ret i32 ()* %v1_40166d

; uselistorder directives
  uselistorder i32 %v2_4015cc, { 1, 0 }
  uselistorder i32* %stack_var_4, { 1, 0 }
  uselistorder i32* %stack_var_-16, { 1, 0, 2 }
  uselistorder void ()*** %onexitend_-20, { 2, 0, 1 }
  uselistorder void (i8*)* @_encode_pointer, { 1, 0 }
  uselistorder i32 (i32)* @__decode_pointer, { 2, 1, 0 }
}

define i32 @atexit(void ()* %func) local_unnamed_addr {
entry:
  %tmp5 = bitcast void ()* %func to i32 ()*
  %v3_40168a = call i32 ()* @mingw_onexit(i32 ()* %tmp5)
  %v1_40168f = icmp eq i32 ()* %v3_40168a, null
  %v1_40169a = sext i1 %v1_40168f to i32
  ret i32 %v1_40169a
}

define void @__do_global_ctors() local_unnamed_addr {
entry:
  store i32 0, i32* @ebx, align 4
  %v4_4017192 = load i32, i32* inttoptr (i32 add (i32 ptrtoint (i32* @global_var_402750.15 to i32), i32 4) to i32*), align 4
  %v1_4017203 = icmp eq i32 %v4_4017192, 0
  %v1_4017224 = icmp eq i1 %v1_4017203, false
  br i1 %v1_4017224, label %dec_label_pc_401714, label %dec_label_pc_401724

dec_label_pc_4016f3:                              ; preds = %dec_label_pc_401724, %dec_label_pc_4016f3
  %v4_4016f3 = phi i32 [ %v0_4016ef, %dec_label_pc_401724 ], [ %v1_4016fa, %dec_label_pc_4016f3 ]
  %v5_4016f3 = mul i32 %v4_4016f3, 4
  %v6_4016f3 = add i32 %v5_4016f3, ptrtoint (i32* @global_var_402750.15 to i32)
  %v7_4016f3 = inttoptr i32 %v6_4016f3 to i32*
  %v8_4016f3 = load i32, i32* %v7_4016f3, align 4
  call void @__pseudo_call(i32 %v8_4016f3)
  %v0_4016fa = load i32, i32* @ebx, align 4
  %v1_4016fa = add i32 %v0_4016fa, -1
  %v9_4016fa = icmp eq i32 %v1_4016fa, 0
  store i32 %v1_4016fa, i32* @ebx, align 4
  %v1_4016fd = icmp eq i1 %v9_4016fa, false
  br i1 %v1_4016fd, label %dec_label_pc_4016f3, label %dec_label_pc_4016ff

dec_label_pc_4016ff:                              ; preds = %dec_label_pc_4016f3
  %v3_401706 = call i32 @atexit(void ()* inttoptr (i32 4200096 to void ()*))
  ret void

dec_label_pc_401714:                              ; preds = %entry, %dec_label_pc_401714
  %v0_401714 = phi i32 [ %v1_401716, %dec_label_pc_401714 ], [ 1, %entry ]
  store i32 %v0_401714, i32* @ebx, align 4
  %v1_401716 = add i32 %v0_401714, 1
  %v1_401719 = mul i32 %v1_401716, 4
  %v2_401719 = add i32 %v1_401719, ptrtoint (i32* @global_var_402750.15 to i32)
  %v3_401719 = inttoptr i32 %v2_401719 to i32*
  %v4_401719 = load i32, i32* %v3_401719, align 4
  %v1_401720 = icmp eq i32 %v4_401719, 0
  %v1_401722 = icmp eq i1 %v1_401720, false
  br i1 %v1_401722, label %dec_label_pc_401714, label %dec_label_pc_401724

dec_label_pc_401724:                              ; preds = %dec_label_pc_401714, %entry
  %v0_4016ef = phi i32 [ 0, %entry ], [ %v0_401714, %dec_label_pc_401714 ]
  br label %dec_label_pc_4016f3

; uselistorder directives
  uselistorder i32 %v1_401716, { 1, 0 }
  uselistorder i32 %v1_4016fa, { 2, 1, 0 }
  uselistorder i1 false, { 1, 3, 0, 2 }
  uselistorder i32 4, { 1, 2, 0 }
  uselistorder i32 -1, { 2, 0, 1 }
  uselistorder i32 ptrtoint (i32* @global_var_402750.15 to i32), { 1, 2, 0 }
  uselistorder i32* @ebx, { 1, 3, 4, 0, 2 }
  uselistorder label %dec_label_pc_401714, { 1, 0 }
}

define void @__main() local_unnamed_addr {
entry:
  %v0_401730 = load i32, i32* @initialized, align 4
  %v1_401735 = icmp eq i32 %v0_401730, 0
  br i1 %v1_401735, label %dec_label_pc_401740, label %dec_label_pc_401739

dec_label_pc_401739:                              ; preds = %entry
  ret void

dec_label_pc_401740:                              ; preds = %entry
  store i32 1, i32* @initialized, align 4
  call void @__do_global_ctors()
  ret void

; uselistorder directives
  uselistorder i32 1, { 8, 7, 1, 2, 6, 5, 4, 0, 3 }
  uselistorder i32 0, { 7, 1, 5, 6, 2, 3, 0, 4, 8 }
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

declare i32 @wprintf(i16*, ...) local_unnamed_addr

declare i16 @__decompiler_undefined_function_0() local_unnamed_addr

declare i16* @__decompiler_undefined_function_1() local_unnamed_addr

declare i32 @__decompiler_undefined_function_2() local_unnamed_addr

declare void ()*** @__decompiler_undefined_function_3() local_unnamed_addr

declare void ()** @__decompiler_undefined_function_4() local_unnamed_addr

declare i32 ()* @__decompiler_undefined_function_5() local_unnamed_addr

declare void ()* @__decompiler_undefined_function_6() local_unnamed_addr

declare i8* @__decompiler_undefined_function_7() local_unnamed_addr
