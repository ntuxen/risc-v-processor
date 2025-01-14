package processor.components

import chisel3._
import chisel3.util._
class DataMemory(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val enableWrite = Input(Bool())
    val dataIn = Input(UInt(32.W))
    val alu_operation_select_EXtoMEM = Input(UInt(8.W)) // Connect to ALUSel

    val dataOut = Output(UInt(width.W))
  })

  val commonAddr = io.addr(addrWidth-1, 2)
  val specAddr = io.addr(1,0)
  val dataOut = WireDefault(0.U(32.W))

  // Make memory with SyncReadMem
  val mem0 = SyncReadMem(size >> 2,UInt((width>>2).W))
  val mem1 = SyncReadMem(size >> 2,UInt((width>>2).W))
  val mem2 = SyncReadMem(size >> 2,UInt((width>>2).W))
  val mem3 = SyncReadMem(size >> 2,UInt((width>>2).W))

  switch(io.alu_operation_select_EXtoMEM){
    // --------- READ/LOAD INSTRUCTIONS --------- //
    is(AluOperation.Lb.id.U){ // Lb
      switch(specAddr){
        is(0.U){

          dataOut := Cat(Fill(24, mem0.read(commonAddr)(7)), mem0.read(commonAddr))
        }
        is(1.U){
          dataOut := Cat(Fill(24, mem1.read(commonAddr)(7)), mem1.read(commonAddr))
        }
        is(2.U){
          dataOut := Cat(Fill(24, mem2.read(commonAddr)(7)), mem2.read(commonAddr))
        }
        is(3.U){
          dataOut := Cat(Fill(24, mem3.read(commonAddr)(7)), mem3.read(commonAddr))
        }
      }
    }
    is(AluOperation.Lbu.id.U){ // Lbu
      switch(specAddr){
        is(0.U){
          dataOut := Cat(Fill(24, 0.U), mem0.read(commonAddr))
        }
        is(1.U){
          dataOut := Cat(Fill(24, 0.U), mem1.read(commonAddr))
        }
        is(2.U){
          dataOut := Cat(Fill(24, 0.U), mem2.read(commonAddr))
        }
        is(3.U){
          dataOut := Cat(Fill(24, 0.U), mem3.read(commonAddr))
        }
      }
    }
    is(AluOperation.Lh.id.U){ // Lh
      switch(specAddr){
        is(0.U){
          dataOut := Cat(Fill(16, mem1.read(commonAddr)(7)), mem1.read(commonAddr), mem0.read(commonAddr))
        }
        is(2.U){
          dataOut := Cat(Fill(16, mem3.read(commonAddr)(7)), mem3.read(commonAddr), mem2.read(commonAddr))
        }
      }
    }
    is(AluOperation.Lhu.id.U){ // Lhu
      switch(specAddr){
        is(0.U){
          dataOut := Cat(Fill(16, 0.U), mem1.read(commonAddr), mem0.read(commonAddr))
        }
        is(2.U){
          dataOut := Cat(Fill(16, 0.U), mem3.read(commonAddr), mem2.read(commonAddr))
        }
      }
    }
    is(AluOperation.Lw.id.U){ // Lw
      switch(specAddr){
        is(0.U){
          dataOut := Cat(mem3.read(commonAddr), mem2.read(commonAddr), mem1.read(commonAddr), mem0.read(commonAddr))
        }
      }
    }

    // -------- WRITE/STORE INSTRUCTIONS -------- //
    is(AluOperation.Sb.id.U){ // Sb
      switch(specAddr){
        is(0.U){
          when(io.enableWrite){
            mem0.write(commonAddr, io.dataIn(7,0))
          }
        }
        is(1.U){
          when(io.enableWrite){
            mem1.write(commonAddr, io.dataIn(7,0))
          }
        }
        is(2.U){
          when(io.enableWrite){
            mem2.write(commonAddr, io.dataIn(7,0))
          }
        }
        is(3.U){
          when(io.enableWrite){
            mem3.write(commonAddr, io.dataIn(7,0))
          }
        }
      }
    }
    is(AluOperation.Sh.id.U){ // Sh
      switch(specAddr){
        is(0.U){
          when(io.enableWrite){
            mem0.write(commonAddr, io.dataIn(7,0))
            mem1.write(commonAddr, io.dataIn(15,8))
          }
        }
        is(2.U){
          when(io.enableWrite){
            mem2.write(commonAddr, io.dataIn(7,0))
            mem3.write(commonAddr, io.dataIn(15,8))
          }
        }
      }
    }
    is(AluOperation.Sw.id.U){ // Sw
      switch(specAddr){
        is(0.U){
          when(io.enableWrite){
            mem0.write(commonAddr, io.dataIn(7,0))
            mem1.write(commonAddr, io.dataIn(15,8))
            mem2.write(commonAddr, io.dataIn(23,16))
            mem3.write(commonAddr, io.dataIn(31,24))
          }
        }
      }
    }
  }
  io.dataOut := dataOut
}
