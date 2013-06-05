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

Rectangle {
    //width: units.gu(40)
    //height: units.gu(71)
    color: "white"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            hpLauncher.reset()
            hnLauncher.reset()
            vpLauncher.reset()
            vnLauncher.reset()
        }
    }

    RightwardsLauncher { id: hpLauncher; anchors.fill: parent }
    LeftwardsLauncher { id: hnLauncher; anchors.fill: parent }
    DownwardsLauncher { id: vpLauncher; anchors.fill: parent }
    UpwardsLauncher { id: vnLauncher; anchors.fill: parent }
}
