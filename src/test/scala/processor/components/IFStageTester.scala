import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.stages.IFStage

class IFStageTester extends AnyFlatSpec with ChiselScalatestTester {
      it should "pass in test" in {
        test(new IFStage).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
          dut.reset.poke(true.B)
          dut.clock.step(1)
          dut.reset.poke(false.B)
          // Debug: Initial Instruction
          println(s"Initial Instruction = ${dut.io.instruction.peek()}")

          // Test sequential fetch
          println("Testing sequential PC increment:")
          for (i <- 0 until 3) { // Test only 3 values
            // Debug: Output the fetched instruction
            val instruction = dut.io.instruction.peek().litValue
            println(f"Cycle $i: Instruction at PC=${i * 4}: 0x${instruction.toString(16)}")

            dut.io.EnableJump.poke(false.B)
            dut.io.AddressJump.poke(0.U)
            dut.clock.step(1) // Step once to set PC+4
            dut.clock.step(1) // Step again to resolve SyncReadMem


          }

          // Test jump logic
          println("\nTesting jump logic:")
          dut.io.EnableJump.poke(true.B)     // Activate jump
          dut.io.AddressJump.poke(8.U)      // Jump to addr 8
          dut.clock.step(1)                 // Execute the jump
          dut.clock.step(1)                 // Resolve memory access

          // Debug: Output the fetched instruction at jump destination
          val instructionJumped = dut.io.instruction.peek().litValue
          println(f"Jumped to Instruction (${instructionJumped.toString(16)} at PC=8)")
        }
      }
    }
