#ifndef _RGB_FLIP_H_
#define _RGB_FLIP_H_


#include "ap_int.h"
#include <iostream>
#include <iomanip>
using namespace std;

#include <stdio.h>
#include <string.h>


#define MAX_HEIGHT 2048
#define MAX_WIDTH 2048

typedef struct {
  ap_uint<24> data; //
  bool tuser; // ap_uint<1>
  bool tlast; // ap_uint<1>
} STREAM_DATA;

typedef struct{
  unsigned char R;
  unsigned char G;
  unsigned char B;
}rgb_pixel;

typedef struct{
  rgb_pixel color;
  unsigned char edge;
}rgb_edge;

typedef struct{
  unsigned char R[MAX_WIDTH][MAX_HEIGHT];
  unsigned char G[MAX_WIDTH][MAX_HEIGHT];
  unsigned char B[MAX_WIDTH][MAX_HEIGHT];
}video_data;


// Arrays to store input image data
static unsigned char R_in[MAX_HEIGHT][MAX_WIDTH];
static unsigned char G_in[MAX_HEIGHT][MAX_WIDTH];
static unsigned char B_in[MAX_HEIGHT][MAX_WIDTH];

// Arrays to store output image data
static unsigned char R_out[MAX_HEIGHT][MAX_WIDTH];
static unsigned char G_out[MAX_HEIGHT][MAX_WIDTH];
static unsigned char B_out[MAX_HEIGHT][MAX_WIDTH];


void rgb_flip( 
               STREAM_DATA  video_in_stream [MAX_WIDTH], 
               STREAM_DATA  video_out_stream[MAX_WIDTH],
              int row,
              int col);



#endif


