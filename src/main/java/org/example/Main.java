package org.example;

import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.c.function.CEntryPoint;

public class Main {

    @CEntryPoint
    public static int main(IsolateThread isolateThread) {
        return 42;
    }

}
