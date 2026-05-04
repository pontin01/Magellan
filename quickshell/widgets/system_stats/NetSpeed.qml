import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Window

RowLayout {
    id: net

    // NET Data
    property var netUpBytesPerSec: 0
    property var lastNetUp: 0
    property var netDownBytesPerSec: 0
    property var lastNetDown: 0

    Process {
        id: netUpProc
        command: ["sh", "-c", "cat /sys/class/net/enp4s0/statistics/tx_bytes"]

        stdout: SplitParser {
            onRead: data => {
                if (!data) return
                var upBytes = Number(data.trim())
                var num = (upBytes - lastNetUp)
                netUpBytesPerSec = num

                lastNetUp = upBytes
            }
        }
        Component.onCompleted: running = true
    }

    Process {
        id: netDownProc
        command: ["sh", "-c", "cat /sys/class/net/enp4s0/statistics/rx_bytes"]

        stdout: SplitParser {
            onRead: data => {
                if (!data) return
                var downBytes = Number(data.trim())
                var num = (downBytes - lastNetDown)
                netDownBytesPerSec = num

                lastNetDown = downBytes
            }
        }
        Component.onCompleted: running = true
    }

    function update() {
        netUpProc.running = false
        netUpProc.running = true
        netDownProc.running = false
        netDownProc.running = true
    }
}
