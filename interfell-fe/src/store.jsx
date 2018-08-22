import thunk from 'redux-thunk';
import promise from 'redux-promise';
import storage from 'redux-persist/es/storage';
import { createStore, applyMiddleware } from 'redux';
import { persistStore, persistReducer } from 'redux-persist';

import reducer from './reducer';

const persistConfig = {
    key: 'root',
    storage,
    whitelist: ['login'],
};

const rootReducer = persistReducer(persistConfig, reducer);


export const store = createStore(
    rootReducer,
    applyMiddleware(thunk, promise),
);
export const persistor = persistStore(store);

