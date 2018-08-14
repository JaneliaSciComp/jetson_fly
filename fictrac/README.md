# FicTrac - Dickinson Lab Build

Note: this is a custom experimental version of FicTrac sortware which has been
modified for use in the Dickinson Lab. For the official version of the FicTrac
software please see the [FicTrac website](http://rjdmoore.net/fictrac/). 

## About Fictrac

FicTrac is a lightweight program that computes the absolute orientation and 3D
rotation of a patterned sphere from video captured directly from an attached
Firewire or USB camera (or loaded from file for offline use).

FicTrac was originally created by [Dr. Richard
Moore](http://rjdmoore.net/fictrac/mail.html)  and colleagues at the Queensland
Brain Institute, University of Queensland, Australia, and is actively improved
and maintained. If you are interested in FicTrac or currently use the software,
please consider signing up to the [mailing
list](http://rjdmoore.net/fictrac/mail.html) for version updates, bug reports,
and other useful information.

## License

FicTrac is available under a 
[Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License](https://creativecommons.org/licenses/by-nc-sa/3.0/). 
Basically, the software is free to download and use as long as you attribute
the author and don't use it for commercial purposes. If you use this software
and publish your results, you must cite [Moore et al.,
2014](http://rjdmoore.net/fictrac/#research).

## Build

Out-of-source build with CMake.  

```bash
mkdir build
cd build
cmake ../
make
```



