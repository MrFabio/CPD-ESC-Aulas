//
// Naive matrix multiplication
//
 
//
// Author:  P.J. Drongowski
// Date:    10 June 2013
//
// Copyright (c) 2013 Paul J. Drongowski
//
 
#include <stdlib.h>
#include <stdio.h>
/* 
#include "../test_common/test_common.h"
#include "../test_common/rpi_pmu.h"
 
*/
FILE* result_file = NULL ;

#define RESULT_FILE_NAME  "naive.txt"

#define MAX_MSIZE 1000
#define MSIZE     500
int matrix_size = MSIZE ;
 
float matrix_a[MSIZE][MSIZE] ;
float matrix_b[MSIZE][MSIZE] ;
float matrix_r[MSIZE][MSIZE] ;
 
//
// Run options (some not implemented)
//
int c_flag = 0 ;    // Measure cache behavior
int i_flag = 0 ;    // Measure IPC
int m_flag = 0 ;    // Set matrix size to N
int t_flag = 0 ;    // Measure TLB behavior
 
#define OPTIONS "cdhim:tv"  // Currently unimplemented (getopt)
 
char *usage_strings[] = {
  "  -c    Measure cache behavior",
  "  -d    Display debugging information",
  "  -h    Display usage information",
  "  -i    Measure IPC",
  "  -m N  Set the matrix dimensions to N elements",
  "  -t    Measure TLB behavior",
  "  -v    Display more information (verbose output)",
  NULL
} ;

int create_result_file(char* filename)
{
  if ((result_file = fopen(filename, "w")) == NULL) {
    fprintf(stderr, "Couldn't open result file\n") ;
    return( 0 ) ;
  }
  return( 1 ) ;
}

void initialize_matrices()
{
  int i, j ;
 
  for (i = 0 ; i < MSIZE ; i++) {
    for (j = 0 ; j < MSIZE ; j++) {
      matrix_a[i][j] = (float) rand() / RAND_MAX ;
      matrix_b[i][j] = (float) rand() / RAND_MAX ;
             matrix_r[i][j] = 0.0 ;
    }
  }
}
 
void multiply_matrices()
{
  int i, j, k ;
 
  for (i = 0 ; i < MSIZE ; i++) {
    for (j = 0 ; j < MSIZE ; j++) {
      float sum = 0.0 ;
      for (k = 0 ; k < MSIZE ; k++) {
        sum = sum + (matrix_a[i][k] * matrix_b[k][j]) ;
      }
      matrix_r[i][j] = sum ;
    }
  }
}

 
void run_no_events()
{
  initialize_matrices() ;
  multiply_matrices() ;
}
 
int main(int argc, char* argv[])
{
  int arg_count ;
  pid_t my_process_id ;
  unsigned long outer, middle, inner, total ;
  unsigned long long cycles ;
  unsigned int cpu_speed ;
  double elapsed = 0 ;
  int d_flag,h_flag, v_flag;
  
  if (create_result_file(RESULT_FILE_NAME) == 0) {

    exit( EXIT_FAILURE ) ;
  }
 
    run_no_events() ;
 
  // print_heading("Naive matrix multiplication") ;
  // print_system_info() ;
 
  // Number of ARM instructions in the loop nest

  //close_result_file();
  return( EXIT_SUCCESS );
}
