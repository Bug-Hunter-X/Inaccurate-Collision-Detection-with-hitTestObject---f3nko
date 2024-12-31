# ActionScript 3 Collision Detection Bug

This repository demonstrates a common issue with collision detection in ActionScript 3 using the `hitTestObject()` method. The `hitTestObject()` function, while generally reliable for simple scenarios, can produce inaccurate results under certain conditions, such as high object speeds or complex object geometries.

## Bug Description
The provided ActionScript 3 code uses `hitTestObject()` to check for collisions between two MovieClip instances. However, due to the limitations of `hitTestObject()`, collisions may be missed, particularly with fast-moving objects or objects with irregular shapes. This leads to inconsistent game behavior.

## Solution
For more accurate collision detection, especially in high-performance applications, consider using a more robust approach.  A potential solution is outlined in the solution file.  This alternative might use a bounding box method or a pixel-perfect collision detection technique, depending on the requirements of the game.
