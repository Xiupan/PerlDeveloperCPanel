use strict;
use diagnostics -verbose;

sub findAll {
  my $path = shift;
  my @files = glob "$path/{*,.*}";
  for my $file (@files) {
    if (-d $file) {
      chmod 444, $file; #sets permissions to read-only globally
      # chmod 777, $file;
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
