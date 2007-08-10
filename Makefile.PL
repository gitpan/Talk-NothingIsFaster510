use utf8;
use inc::Module::Install;

name 'Talk-NothingIsFaster510';

author   'Ævar Arnfjörð Bjarmason <avar@cpan.org>';
abstract 'A lightning talk about the C<split //> optimization in perl 5.10';
version  '0.01';
license  'perl';

#requires 'Pod::S5' => 0;

# t/
build_requires 'Test::More' => 0; # 5.007003

tests 't/*.t';

auto_install;
WriteAll;
