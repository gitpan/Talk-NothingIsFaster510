use Benchmark ':all';

my $str = ("hlagh" x 666);

cmpthese(-1, {
    old      => sub { () = map { chr } split / /x, $str },
    new      => sub { () = map { chr } split //, $str },
    pack     => sub { () = unpack "(C)*", $str },
});
