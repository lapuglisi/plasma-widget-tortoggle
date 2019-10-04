import QtQuick 2.0
import QtQuick.Controls 1.0 as QtControls
import QtQuick.Layouts 1.0 as QtLayouts

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents


Item {
    id: configPage;
    width: childrenRect.width;
    height: childrenRect.height;
    implicitWidth: pageGrid.implicitWidth;
    implicitHeight: pageGrid.implicitHeight;

    property alias cfg_systemTor: systemTorField.checked;
    property alias cfg_systemTorService: systemTorServiceField.text;
    property alias cfg_torBrowserExecutable: torBrowserExecutable.text;

    QtLayouts.GridLayout {
        id: pageGrid;

        QtLayouts.Layout.alignment: AlignLeft;
        QtLayouts.Layout.fillWidth: true;

        flow: QtLayouts.GridLayout.TopToBottom;
        rows: 3;
        rowSpacing: 15;

        QtLayouts.RowLayout {
            QtControls.CheckBox {
                id: systemTorField;
                text: "Use system tor instance (requires super user access, aka sudo)";
            }
        }

        QtLayouts.RowLayout {            
            QtControls.Label {
                QtLayouts.Layout.preferredWidth: 150;
                id: torServiceLabel;
                text: "Tor service name:"
            }

            QtControls.TextField {
                QtLayouts.Layout.fillWidth: true;
                id: systemTorServiceField;
                text: "tor";
            }
        }

        QtLayouts.RowLayout {            
            QtControls.Label {
                QtLayouts.Layout.preferredWidth: 150;
                id: torBrowserExecLabel;
                text: "Tor Browser executable:"
            }
            QtControls.TextField {
                QtLayouts.Layout.fillWidth: true;
                id: torBrowserExecutable;
                text: "start-tor-browser";
            }
        }
    }
}
