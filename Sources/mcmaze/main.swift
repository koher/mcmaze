import PythonKit
import Maze

let minecraft = Python.import("mcpi.minecraft")

let maze: Maze = try! .makeMaze(width: 255, height: 255, start: 0, goal: 0, path: 0, wall: 1)

let mc = minecraft.Minecraft.create()
for z in maze.yRange {
    for x in maze.xRange {
        for y in 0 ... 2 {
            mc.setBlock(x - 127, y, z - 127, maze[x, z])
        }
    }
}

