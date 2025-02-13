FIRRTL version 1.2.0
circuit RVArch :
  module RVArch :
    input clock : Clock
    input reset : UInt<1>

    wire _state_WIRE : UInt<32>[32] @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[0] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[1] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[2] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[3] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[4] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[5] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[6] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[7] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[8] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[9] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[10] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[11] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[12] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[13] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[14] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[15] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[16] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[17] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[18] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[19] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[20] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[21] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[22] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[23] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[24] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[25] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[26] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[27] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[28] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[29] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[30] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    _state_WIRE[31] <= UInt<32>("h0") @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:34]
    reg state_regfile : UInt<32>[32], clock with :
      reset => (reset, _state_WIRE) @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 33:26]
    reg state_pc : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 34:21]
    cmem state_memory : UInt<8> [65535] @[Users/amaroo/Desktop/SPIKE/chisel-rv32/src/main/scala/RV32/RVArch.scala 35:21]

