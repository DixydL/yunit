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

Button {
    ItemStyle.class: "transparent-button"

    property alias source: image.source

    height: units.gu(4)
    width: height
    opacity: enabled ? 1 : 0.5
    Behavior on opacity { NumberAnimation { duration: 150 } }

    Image {
        id: image
        anchors.fill: parent
    }
}
