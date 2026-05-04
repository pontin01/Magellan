import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Repeater {
    model: 7

    Text {
        property var ws: Hyprland.workspaces.values.find(w => w.id == index + 1)
        property bool isActive: Hyprland.focusedWorkspace?.id == (index + 1)

        text: index + 1

        // red = active, beige = inactive, grey = empty
        color: isActive ? "#A31103" : (ws ? "#F7F4E4" : "#454545")
        font { 
            family: "JetBrains Mono"
            pixelSize: 14
        }
        

        // make workspace clickable
        MouseArea {
            anchors.fill: parent
            onClicked: Hyprland.dispatch("workspace " + (index + 1))
        }
    }
} 

