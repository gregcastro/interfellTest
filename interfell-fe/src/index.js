import React from 'react';
import { render } from 'react-dom';
import { Provider } from 'react-redux';
import DocumentTitle from 'react-document-title';
import registerServiceWorker from './registerServiceWorker';
import { PersistGate } from 'redux-persist/integration/react';

import Login from './views/login';
import { store, persistor } from './store';

render(
    <Provider store={store}>
        <PersistGate persistor={persistor}>
            <DocumentTitle title={'Sistema de Administración Interfell'}>
                <Login />
            </DocumentTitle>
        </PersistGate>
    </Provider>, document.getElementById('root'));
registerServiceWorker();
