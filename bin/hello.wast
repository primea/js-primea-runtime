(module
  (import "memory" "externalize" (func $mem.externalize (param i32 i32) (result i32)))
  (import "func" "internalize" (func $func.internalize (param i32 i32)))

  (memory (export "memory") 1)
  (data (i32.const 0) "hello world")
  (table (export "table") 1 1 anyfunc)
  (func $main (param $egress i32)
    (call $func.internalize
      (i32.const 0)
      (get_local $egress))

    (call_indirect (param i32)
      (call $mem.externalize (i32.const 0) (i32.const 11))
      (i32.const 0)))

  (export "main" (func $main)))
