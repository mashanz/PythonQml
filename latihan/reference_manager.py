"""QML launcher
This Python scripts connects to the PyQt run-time and
loads the associated QML script.
This is also where we'll establish communication between
Python and QML; QML is always the View, Python the
Controller and optionally also the Model.
"""

import sys
import contextlib
from PyQt5 import QtCore, QtGui, QtQuick


@contextlib.contextmanager
def application():
    app = QtGui.QGuiApplication(sys.argv)
    yield
    app.exec_()


if __name__ == '__main__':
    qml = QtCore.QUrl.fromLocalFile("reference_manager.qml")

    with application():
        window = QtQuick.QQuickView()
        window.setSource(qml)
        window.setTitle("Manager")
        window.setResizeMode(window.SizeRootObjectToView)
        window.show()