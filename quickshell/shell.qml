import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import QtQuick.Window

PanelWindow {
    id: entrypoint

    anchors {
        left: true
        top: true
        right: true
    }

    margins {
        left: 10
        right: 10
        top: 10
    }

    implicitHeight: 38

    color: "#00000000"
  
    Background {}
    PanelContent {}

}
