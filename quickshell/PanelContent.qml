import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

import "./widgets/system_stats" as System_stats

RowLayout {
    id: panelContent

    anchors.fill: parent
    anchors.margins: 8

    Workspace {}

    Item { Layout.fillWidth: true }

    System_stats.SystemStats {}
}

