import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Window

RowLayout {
    id: systemStats

    property real text_padding: 5.0

    CpuUsage { id: cpu }
    RamUsage { id: ram }
    NetSpeed { id: net }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            cpu.update();
            ram.update();
            net.update()
        }
    }

    // CPU
    Text {
        text: "CPU: " + cpu.cpuUsage + "%"
        color: "#E6261F" // Red
        font {
            family: "JetBrains Mono"
            pixelSize: 14
        }
        leftPadding: parent.text_padding 
    }

    // RAM
    Text {
        text: "RAM: " + ram.ramUsage + "%"
        color: "#EB7532" // Orange
        font {
            family: "JetBrains Mono"
            pixelSize: 14
        }
        leftPadding: parent.text_padding
    }

    // NET
    Text {
        text: "UP: " + net.netUpBytesPerSec + "b/s"
        color: "#F7d038" // Yellow
        font {
            family: "JetBrains Mono"
            pixelSize: 14
        }
        leftPadding: parent.text_padding 
    }
    Text {
        text: "DOWN: " + net.netDownBytesPerSec + "b/s"
        color: "#F7d038" // Yellow
        font {
            family: "JetBrains Mono"
            pixelSize: 14
        }
        leftPadding: parent.text_padding 
    }
}
