#include "support.h"
extern int main_ex(void);
void initialise_benchmark() { return; }
int verify_benchmark(int result) { return 1; }
int benchmark(void) {
  main_ex();
  return 1;
}