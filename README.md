# cPanel Perl Skills Assessment

These exercises are designed to test your fluency and familiarity with Perl as well as
provide an indication of your individual programing style. Please explicitly follow the
instructions, and return the finished implementation at your earliest convenience or by
the previously specified deadline. Please provide your completed exercises as an
archive suitable for extraction and execution on a Linux or FreeBSD operating system
with Perl 5.8 installed.

## Exercises
1. Write a simple Perl module that will contain all the necessary subroutines to do the
following:
• locate all files in a specified directory and sub-directories that are world writable
• remove the world write permission without altering the user or group permissions
Your final version may rely upon modules provided by CPAN, but if so your module must be
packaged to ensure that any dependencies are installed. Usage of only Core Perl modules does
not require packaging. Your module must use Perl solely for gathering and manipulating the file
system permissions.
2. Create and provide a small script which utilizes your module. It must accept the
directory or directories to be searched on the command line. The script should
operate in a verbose mode as specified by the “--verbose” flag.
3. Write a test script for the aforementioned module that utilizes Test::More from CPAN.
4. Create another script utilizing your module that takes an additional user argument.
The searching and permission changes should occur with the effective UID of the
user passed as an argument.
