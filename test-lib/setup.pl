unshift @INC, map { ( "./$_", $ENV{PWD} . "/$_" ) } qw(lib lib-perl test-lib);