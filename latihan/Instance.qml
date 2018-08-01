// The item in the ListView

import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

MouseArea {
    height: 50
    width: parent.width
    hoverEnabled: true

    Rectangle {
        color: "steelblue"
        anchors.fill: parent
        visible: parent.containsMouse
        opacity: 0.3
    }

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        CheckBox {}
        Label { text: modelData.type; color: "#888"; font.italic: true }
        Label { text: modelData.name; Layout.fillWidth: true }
        Label { text: modelData.path }
        ComboBox { model: modelData.versions; Layout.preferredWidth: 60 }
    }
}