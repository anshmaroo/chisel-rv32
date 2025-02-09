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


  val state = new Bundle {
    val regfile = RegInit(VecInit(Seq.fill(32)(0.U(MLen.W))))
    val pc = RegInit(0.U(MLen.W))
    val memory = Mem(MemSize, UInt(8.W))
  }



}

object VerilogGen extends App {
  emitVerilog(new RVArch(32, 0xffff), Array("--target-dir", "generated"))
}