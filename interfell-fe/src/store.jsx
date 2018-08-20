import thunk from 'redux-thunk';
import promise from 'redux-promise';
import { createLogger } from 'redux-logger';
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


const logger = createLogger();
export const store = createStore(
    rootReducer,
    applyMiddleware(thunk, promise, logger),
);
export const persistor = persistStore(store);

