// Copyright (c) 2019 K Team. All Rights Reserved.

requires "map-tests.k"

module LOOKUP-16-SPEC
    imports MAP-TESTS

    rule <k> lookup ( (MAP:Map X:MyId |-> 1 Y:MyId |-> 2) [ Y:MyId ] ) => . </k> requires X =/=K Y

endmodule
