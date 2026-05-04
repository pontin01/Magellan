import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Window

RowLayout {
    id: ram

    // RAM Data
    property var ramUsage: 0
    property var lastRamIdle: 0
    property var lastRamTotal: 0

    Process {
        id: ramProc
        command: ["sh", "-c", "free | grep Mem"]

        stdout: SplitParser {
            onRead: data => {
                if (!data) return
                var parts = data.trim().split(/\s+/)
                var total = parseInt(parts[1]) || 1
                var used = parseInt(parts[2]) || 0
                var num = (used / total) * 100
                ramUsage = num.toFixed(2)
            }
        }
        Component.onCompleted: running = true
    }

    function update() {
        ramProc.running = false
        ramProc.running = true
    }
}
