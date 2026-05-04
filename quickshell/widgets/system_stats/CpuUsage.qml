import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Window

RowLayout {
    id: cpu

    // CPU Data
    property var cpuUsage: 0
    property var lastCpuIdle: 0
    property var lastCpuTotal: 0

    Process {
        id: cpuProc
        command: ["sh", "-c", "head -1 /proc/stat"]

        stdout: SplitParser {
            onRead: data => {
                var p = data.trim().split(/\s+/)
                var idle = parseInt(p[4]) + parseInt(p[5])
                var total = p.slice(1, 8).reduce((a, b) => a + parseInt(b), 0)

                if (lastCpuTotal >= 0) {

                    var num = 100 * (1 - (idle - lastCpuIdle) / (total - lastCpuTotal))
                    cpuUsage = num.toFixed(2)
                    //cpuUsage = Math.round(100 * (1 - (idle - lastCpuIdle) / (total - lastCpuTotal)))
                    lastCpuTotal = total
                    lastCpuIdle = idle
                }
            }
        }
        Component.onCompleted: running = true
    }

    function update() {
        cpuProc.running = false
        cpuProc.running = true
    }
}
