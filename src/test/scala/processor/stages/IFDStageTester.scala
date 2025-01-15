package processor.stages

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class IFDStageTester extends AnyFlatSpec with ChiselScalatestTester {
  it should "pass in test" in {
        test(new IFDStage("src/test/TestPrograms/IFDStageTester.hex")).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
          // Debug: Initial Instruction
          println(s"Initial Instruction = ${dut.io.IFDtoEX.instruction_IFDtoEX.peek()}")

          // Test sequential fetch
          println("Testing sequential PC increment:")
          for (i <- 0 until 3) { // Test only 3 values
            // Debug: Output the fetched instruction
            val instruction = dut.io.IFDtoEX.instruction_IFDtoEX.peek().litValue
            println(f"Cycle $i: Instruction at PC=${i * 4}: 0x${instruction.toString(16)}")

            dut.io.MEMtoIFD.take_branch_MEMtoIFD.poke(false.B)
            dut.io.MEMtoIFD.branch_address_MEMtoIFD.poke(0.U)
            dut.clock.step(1) // Step once to set PC+4
            dut.clock.step(1) // Step again to resolve SyncReadMem


          }

          // Test jump logic
          println("\nTesting jump logic:")
          dut.io.MEMtoIFD.take_branch_MEMtoIFD.poke(true.B)     // Activate jump
          dut.io.MEMtoIFD.branch_address_MEMtoIFD.poke(8.U)      // Jump to addr 8
          dut.clock.step(1)                 // Execute the jump
          dut.clock.step(1)                 // Resolve memory access

          // Debug: Output the fetched instruction at jump destination
          val instructionJumped = dut.io.IFDtoEX.instruction_IFDtoEX.peek().litValue
          println(f"Jumped to Instruction (${instructionJumped.toString(16)} at PC=8)")
        }
      }
    }
