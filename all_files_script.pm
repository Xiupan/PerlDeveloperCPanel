package AllFilesFinder;
use strict;
use diagnostics -verbose;
use Test::More;

sub findAll {
  my $path = shift;
  my @files = glob "$path/{*,.*}";
  for my $file (@files) {
    if (-d $file) {
      # chmod 444, $file; #sets permissions to read-only globally
      if ($file !~ /\/\.$/ && $file !~ /\/\.\.$/) {
        findAll($file);
      }
    } else {
      print "$file\n" if -w $file;
    }
  }
}

print "Writable file: " . "\n";
findAll($ARGV[0]);
