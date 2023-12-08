#pragma once
/* Benchmarks must implement verify_benchmark, which must return -1 if no
   verification is done. */
void initialise_benchmark();
int verify_benchmark(int result);

/* Standard functions implemented for each board */

void initialise_board(void);
void start_trigger(void);
void stop_trigger(void);

/* Every benchmark implements this as its entry point. Don't allow it to be
   inlined! */

int benchmark(void) __attribute__((noinline));
