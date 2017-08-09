use strict;

sub findAll {
  my $path = shift;
  my @files = glob "$path/{*,.*}";
  for my $file (@files) {
    if (-d $file) {
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
