import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 600
    height: 400
    title: qsTr("Lock")

    Row {
        Numberpad {
            id: numberpad
            onButtonPressed: {
                console.log(id)
                dashboard.numberInput(id)
            }
            onClearPressed: {
                console.log("clear the light")
                dashboard.startUnlocking()
            }
            onEnterPressed: {
                dashboard.startProgramming()
                console.log(" enter the system")
            }
        }

        LockDashboard {
            id: dashboard
        }
    }
}
