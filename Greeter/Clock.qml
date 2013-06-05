/*
 * Copyright (C) 2013 Canonical, Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import Ubuntu.Components 0.1

Item {
    id: clock

    implicitWidth: childrenRect.width
    implicitHeight: childrenRect.height

    property date __date
    property alias __timerInterval: timer.interval
    readonly property bool __timerRunning: timer.running

    Timer {
        id: timer
        interval: 1000 * 60
        running: clock.enabled && clock.visible && clock.opacity != 0
        repeat: true
        triggeredOnStart: true
        onTriggered: __date = new Date
    }

    Column {
        spacing: units.gu(0.5)

        Label {
            id: timeLabel
            objectName: "timeLabel"

            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: units.gu(7.5)
            color: "white"
            opacity: 0.5
            text: Qt.formatTime(__date)
            font.weight: Font.Light
        }

        Label {
            id: dateLabel
            objectName: "dateLabel"

            anchors.horizontalCenter: parent.horizontalCenter
            fontSize: "medium"
            color: "white"
            opacity: 0.5
            text: Qt.formatDate(__date, Qt.DefaultLocaleLongDate)
            font.weight: Font.Light
        }
    }
}
