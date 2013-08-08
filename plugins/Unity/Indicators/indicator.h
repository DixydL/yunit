/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors:
 *      Renato Araujo Oliveira Filho <renato@canonical.com>
 *      Nick Dedekind <nick.dedekind@canonical.com>
 */

#ifndef INDICATOR_H
#define INDICATOR_H

#include "unityindicatorsglobal.h"

#include <QObject>
#include <QSettings>

class UNITYINDICATORS_EXPORT Indicator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString identifier READ identifier NOTIFY identifierChanged)
    Q_PROPERTY(QVariant indicatorProperties READ indicatorProperties NOTIFY indicatorPropertiesChanged)

public:
    typedef QSharedPointer<Indicator> Ptr;

    Indicator(QObject *parent = 0);
    virtual ~Indicator();

    void init(const QString& busName, const QSettings& settings);

    QString identifier() const;
    QVariant indicatorProperties() const;

Q_SIGNALS:
    void identifierChanged(const QString &identifier);
    void indicatorPropertiesChanged(const QVariant &properties);

protected:
    void setId(const QString &id);
    void setIndicatorProperties(const QVariant &properties);

private:
    QString m_identifier;
    QVariant m_properties;
};

#endif // INDICATOR_H
