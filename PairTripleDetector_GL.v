//========================================================================
// PairTripleDetector_GL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

`include "ece2300-misc.v"

module PairTripleDetector_GL
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
 );

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement pair/triple detector using explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  wire w;
  wire y;
  wire x;

  or(w, in0, in1);
  and(y, in2, w );
  and(x, in1, in0 );
  or(out, x, y );


endmodule

`endif /* PAIR_TRIPLE_DETECTOR_GL_V */

