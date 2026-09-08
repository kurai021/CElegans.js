import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: "C. elegans Pet"
    color: "#101820"

    // Única instancia del conectoma para toda la app
    BrainConnector {
        id: brainController
    }

    // El gusano es mucho más chico que la ventana y se mueve dentro de ella
    Pet {
        width: 60
        height: 90
        x: (root.width - width) / 2
        y: (root.height - height) / 2
        brainController: brainController
    }
}
