// Copyright (c) 2012-2014 K Team. All Rights Reserved.
package org.kframework.compile.tags;

import org.kframework.kil.ASTNode;
import org.kframework.kil.Rule;
import org.kframework.kil.loader.Context;
import org.kframework.kil.visitors.CopyOnWriteTransformer;

public class AddDefaultComputational extends CopyOnWriteTransformer {

    public AddDefaultComputational(Context context) {
        super("AddDefaultComputational", context);
    }

    @Override
    public ASTNode visit(Rule node, Void _) {
        if (!(node.containsAttribute("structural")
                || node.containsAttribute("anywhere")
                || node.containsAttribute("function")
                || node.containsAttribute("predicate")))
            node.putAttribute("computational", "");

        return node;
    }
}
