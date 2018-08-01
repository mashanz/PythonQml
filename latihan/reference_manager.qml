import QtQuick 2.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3


Item {
    width: 500
    height: 300

    Item {
        // To add some margin around the list view
        id: container
        anchors.fill: parent
        anchors.bottomMargin: 30

        ListView {
            id: items

            anchors.fill: parent
            anchors.margins: 10

            // Defined in Instance.qml
            delegate: Instance {}

            // This is normally coming from Python
            model: [
                {
                    type: "asset",
                    name: "shapes",
                    path: "c:/users/Roy/Desktop/shapes.ma",
                    versions: ["v001", "v002"]
                },
                {
                    type: "asset",
                    name: "shapes1",
                    path: "c:/users/Roy/Desktop/shapes.ma",
                    versions: ["v001", "v002", "v003", "v004"]
                },
                {
                    type: "asset",
                    name: "shapes2",
                    path: "c:/users/Roy/Desktop/shapes.ma",
                    versions: ["v001", "v002", "v003"]
                },
            ]
        }
    }

    RowLayout {
        id: buttons

        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 10

        height: 40

        Item { Layout.fillWidth: true }

        Button {
            id: refreshButton
            text: "Refresh"
        }

        Button {
            id: applyButton
            text: "Apply"
        }
    }   
}