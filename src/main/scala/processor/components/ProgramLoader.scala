package processor.components

import scala.io.Source
import scala.util.Using
import chisel3._
import chisel3.util._

object ProgramLoader {

  // Function to load a program from a hex file
  def loadHexFile(filename: String): Seq[UInt] = {
    try {
      // Log file being accessed
      println(s"Loading hex file: $filename")

      Using.resource(Source.fromFile(filename)) { source =>
        val lines = source.getLines().toSeq // Materialize file content to Seq eagerly
        println(s"Read ${lines.size} lines")

        lines
          .filter(_.nonEmpty)  // Skip empty lines
          .map { line =>
            println(s"Parsing line: $line")
            BigInt(line.trim, 16).U(32.W)
          }
      }
    } catch {
      case e: Exception =>
        println(s"Error loading hex file: ${e.getMessage}")
        Seq.empty[UInt]
    }
  }
}
