/*
 * RGB swap 
 */

#include "rgb_mux.h"

void rgb_mux( STREAM_DATA  *video_in_stream , STREAM_DATA  *video_out_stream, ap_uint<2> mux)
{
#pragma HLS PIPELINE II=1 enable_flush

// AXI streaming interfaces
#pragma HLS interface axis port=video_in_stream
#pragma HLS interface axis port=video_out_stream

// GPIO control
#pragma HLS interface ap_stable port=mux

// no function control port; AXI handshaking controls function
#pragma HLS interface ap_ctrl_none port=return

    unsigned char R;
    unsigned char G;
    unsigned char B;

    R   = video_in_stream->data & 0xff;
    G   = (video_in_stream->data >> 8) & 0xff;
    B   = (video_in_stream->data >> 16) & 0xff;

    if (mux == 1)
       video_out_stream->data = (B << 16) | (R << 8) | G;
    else if (mux == 2 )
       video_out_stream->data = (G << 16) | (B << 8) | R;
    else if (mux == 3 )
       video_out_stream->data = (B << 16) | (G << 8) | R;
    else
       video_out_stream->data = video_in_stream->data;

    video_out_stream->tuser = video_in_stream->tuser;
    video_out_stream->tlast = video_in_stream->tlast;

}
