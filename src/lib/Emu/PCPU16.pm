package Emu::DCPU16;

use strict;

my $Counter = 1;
my $PC      = 1;

for (;;) {
    my $OpCode = Memory[$PC++];
    $Counter -= Cycles[$OpCode];

    _process_opcode($OpCode);

    if ($Counter <= 0) {
        $Counter += 1;
    }
}

1;
