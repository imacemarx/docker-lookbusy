# Lookbuy 
[content source](https://github.com/flow2000/lookbusy). Ths.
## General Options
-h, --help Commandline help (you're reading it)

-v, --verbose Verbose output (may be repeated)

-q, --quiet Be quiet, produce output on errors only

## CPU usage options:

-c, --cpu-util=PCT, Desired utilization of each CPU, in percent (default --cpu-util=RANGE 50%). If 'curve' CPU usage mode is chosen, a range of the form MIN-MAX should be given.

-n, --ncpus=NUM Number of CPUs to keep busy (default: autodetected)

-r, --cpu-mode=MODE Utilization mode ('fixed' or 'curve', see lookbusy(1))

-p, --cpu-curve-peak=TIME Offset of peak utilization within curve period, in seconds (append 'm', 'h', 'd' for other units)

-P, --cpu-curve-period=TIME Duration of utilization curve period, in seconds (append 'm', 'h', 'd' for other units)

eg:
```shell
lookbusy -c 50

lookbusy -c 50 -n 2

lookbusy -c 50-80 -r curve
```
## Memory usage options:

-m, --mem-util=SIZE Amount of memory to use (in bytes, followed by KB, MB, or GB for other units; see lookbusy(1))

-M, --mem-sleep=TIME Time to sleep between iterations, in usec (default 1000)

eg:
```shell
lookbusy -m 128MB -M 1000
```
## Disk usage options:

-d, --disk-util=SIZE Size of files to use for disk churn (in bytes, followed by KB, MB, GB or TB for other units)

-b, --disk-block-size=SIZE Size of blocks to use for I/O (in bytes, followed by KB, MB or GB)

-D, --disk-sleep=TIME Time to sleep between iterations, in msec (default 100)

-f, --disk-path=PATH Path to a file/directory to use as a buffer (default /tmp); specify multiple times for additional paths

eg:
```shell
lookbusy -d 1GB -b 1MB -D 10
```


