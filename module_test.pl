# use MyModule;
# MyModule::trim("Poop Poop Poop");

open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";
my @lines  = <$in>;
print @lines;
