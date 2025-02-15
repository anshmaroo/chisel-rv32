package RV32

import chisel3._
import chisel3.util._
class RVArch(val ArchSize: Int, val MemSize: Int) extends Module {
  // Set fundamental lengths based on ArchSize
  require(ArchSize == 32 || ArchSize == 64, "MLen must be 32/64")
  private val MLen = ArchSize
  private val SftLen = (MLen / 32) + 4
  val WLen = 32;

  // Define type aliases
  def Byte = UInt(8.W)
  def Half = UInt(16.W)
  def Word = UInt(32.W)
  def Dble = UInt(64.W)
  def SIntWord = SInt(32.W)
  def UIntWord = UInt(32.W)
  def Regs = UInt(MLen.W)
  def SIntR = SInt(MLen.W)
  def UIntR = UInt(MLen.W)
  def Address = Regs;
  def Bits3 = UInt(3.W)
  def Bits5 = UInt(5.W)
  def Bits6 = UInt(6.W)
  def Bits7 = UInt(7.W)
  def Index = UInt(5.W)
  def UInt5 = UInt(5.W)
  def UShft = UInt(SftLen.W)


  class State() extends Bundle {
    val regfile = RegInit(VecInit(Seq.fill(32)(0.U(MLen.W))))
    val pc = RegInit(0.U(MLen.W))
    val memory = Mem(MemSize, UInt(8.W))
  }

  trait Instruction {
    def execute(bits: UInt): (State) => State
    def encoding(): UInt
    def assembly(): String
  }

  trait RTypeInstruction extends Instruction {
    def op: (UInt, UInt) => UInt

    @Override
    override def execute(bits: UInt): State => State = {
      val rs1: UInt = bits & 0xf8000.U; bits
      val rs2: UInt = bits & 0x1f00000.U;
      val rd: UInt = bits & 0xf80.U;
      (state: State) => {
        state.regfile(rd) := op(state.regfile(rs1), state.regfile(rs2));
        state
      }
    }

    @Override
    override def encoding(): UInt = {
      return UInt(32.W)
    }

    @Override
    override def assembly(): String = {
      return "foo";
    }


  }

}

object VerilogGen extends App {
  // Emit Verilog
  emitVerilog(new RVArch(32, 0xffff), Array("--target-dir", "generated"))
}