// Copyright (c) 2019 K Team. All Rights Reserved.

requires "../map-tests.k"

module ASSIGNMENT-5-SPEC
    imports MAP-TESTS

    rule <k> assignment ( (MAP:Map X:MyId |-> 1) [ Y:MyId <- 2 ] [ Z:MyId <- 3 ] ) => . </k> requires Y =/=K X andBool notBool Y in_keys(MAP)

endmodule
