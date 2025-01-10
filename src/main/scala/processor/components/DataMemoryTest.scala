package processor.components

import chisel3._
import chisel3.util._

class DataMemoryTest(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val enableWrite = Input(Bool())
    val dataIn = Input(UInt(32.W))
    val memSel = Input(UInt(8.W)) // Connect to ALUSel

    val dataOut = Output(UInt(width.W))
  })

  val commonAddr = io.addr(addrWidth-2, 2)
  val specAddr = io.addr(1,0)
  val dataOut = WireDefault(0.U(32.W))

  // Make memory with RegInit
  val mem0 = RegInit(VecInit(Seq.fill(size >> 2)(0.U((width-2).W))))
  val mem1 = RegInit(VecInit(Seq.fill(size >> 2)(0.U((width-2).W))))
  val mem2 = RegInit(VecInit(Seq.fill(size >> 2)(0.U((width-2).W))))
  val mem3 = RegInit(VecInit(Seq.fill(size >> 2)(0.U((width-2).W))))

  // Default values (Maybe unnecessary?)
  mem0(commonAddr) := mem0(commonAddr)
  mem1(commonAddr) := mem1(commonAddr)
  mem2(commonAddr) := mem2(commonAddr)
  mem3(commonAddr) := mem3(commonAddr)
  
  // Delay output
  io.dataOut := RegNext(dataOut)

  switch(io.memSel){
    // --------- READ/LOAD INSTRUCTIONS --------- //
    is(AluOperation.Lb.id.U){ // Lb
      switch(specAddr){
        is(0.U){
          dataOut := Cat(Fill(24, mem0(commonAddr)(7)), mem0(commonAddr))
        }
        is(1.U){
          dataOut := Cat(Fill(24, mem1(commonAddr)(7)), mem1(commonAddr))
        }
        is(2.U){
          dataOut := Cat(Fill(24, mem2(commonAddr)(7)), mem2(commonAddr))
        }
        is(3.U){
          dataOut := Cat(Fill(24, mem3(commonAddr)(7)), mem3(commonAddr))
        }
      }
    }
    is(AluOperation.Lbu.id.U){ // Lbu
      switch(specAddr){
        is(0.U){
          dataOut := Cat(Fill(24, 0.U), mem0(commonAddr))
        }
        is(1.U){
          dataOut := Cat(Fill(24, 0.U), mem1(commonAddr))
        }
        is(2.U){
          dataOut := Cat(Fill(24, 0.U), mem2(commonAddr))
        }
        is(3.U){
          dataOut := Cat(Fill(24, 0.U), mem3(commonAddr))
        }
      }
    }
    is(AluOperation.Lh.id.U){ // Lh
      switch(specAddr){
        is(0.U){
          dataOut := Cat(Fill(16, mem1(commonAddr)(7)), mem1(commonAddr), mem0(commonAddr))
        }
        is(2.U){
          dataOut := Cat(Fill(16, mem3(commonAddr)(7)), mem3(commonAddr), mem2(commonAddr))
        }
      }
    }
    is(AluOperation.Lhu.id.U){ // Lhu
      switch(specAddr){
        is(0.U){
          dataOut := Cat(Fill(16, 0.U), mem1(commonAddr), mem0(commonAddr))
        }
        is(2.U){
          dataOut := Cat(Fill(16, 0.U), mem3(commonAddr), mem2(commonAddr))
        }
      }
    }
    is(AluOperation.Lw.id.U){ // Lw
      switch(specAddr){
        is(0.U){
          dataOut := Cat(mem3(commonAddr), mem2(commonAddr), mem1(commonAddr), mem0(commonAddr))
        }
      }
    }

    // -------- WRITE/STORE INSTRUCTIONS -------- //
    is(AluOperation.Sb.id.U){ // Sb
      switch(specAddr){
        is(0.U){
          when(io.enableWrite){
            mem0(commonAddr) := io.dataIn(7,0)
          }
        }
        is(1.U){
          when(io.enableWrite){
            mem1(commonAddr) := io.dataIn(7,0)
          }
        }
        is(2.U){
          when(io.enableWrite){
            mem2(commonAddr) := io.dataIn(7,0)
          }
        }
        is(3.U){
          when(io.enableWrite){
            mem3(commonAddr) := io.dataIn(7,0)
          }
        }
      }
    }
    is(AluOperation.Sh.id.U){ // Sh
      switch(specAddr){
        is(0.U){
          when(io.enableWrite){
            mem0(commonAddr) := io.dataIn(7,0)
            mem1(commonAddr) := io.dataIn(15,8)
          }
        }
        is(2.U){
          when(io.enableWrite){
            mem2(commonAddr) := io.dataIn(7,0)
            mem3(commonAddr) := io.dataIn(15,8)
          }
        }
      }
    }
    is(AluOperation.Sw.id.U){ // Sw
      switch(specAddr){
        is(0.U){
          when(io.enableWrite){
            mem0(commonAddr) := io.dataIn(7,0)
            mem1(commonAddr) := io.dataIn(15,8)
            mem2(commonAddr) := io.dataIn(23,16)
            mem3(commonAddr) := io.dataIn(31,24)
          }
        }
      }
    }
  }
}
