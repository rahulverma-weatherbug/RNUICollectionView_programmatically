// @flow
import React, { Component } from 'react';
import { requireNativeComponent } from 'react-native';

const MODULE_NAME = 'CustomListView';
const List = requireNativeComponent(MODULE_NAME, null);


class ListView extends Component {
    render() {
        const { data } = this.props;

        return (
            <List
                data={data}
            />
        );
    }
}

export default ListView;
