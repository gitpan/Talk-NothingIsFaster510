use Benchmark ':all';

my $str = ("hlagh" x 666);

cmpthese(-1, {
    old  => sub { split /(?:)/, $str },
    new  => sub { split //, $str },
    pack => sub { unpack "(a)*", $str },
});
