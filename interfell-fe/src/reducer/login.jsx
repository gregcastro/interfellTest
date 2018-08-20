import _persist from 'redux-persist';
import {
    LOGIN_FAIL,
    LOGIN_SUCCESS,
    LOGIN,
    SET_USERNAME,
    SET_PASSWORD,
} from '../actions/Types';

const INITIAL_STATE = {
    error: {},
    token: {},
    login: {
        username: '',
        password: '',
    },
};

export default (state = INITIAL_STATE, action) => {
    const newState = Object.assign({}, state);
    switch (action.type) {
        case SET_USERNAME:
            newState.login.username = action.payload;
            break;
        case SET_PASSWORD:
            newState.login.password = action.payload;
            break;
        case LOGIN:
            return { ...state, error: {} };
        case LOGIN_SUCCESS:
          return { ...state, token: action.payload };
        case LOGIN_FAIL:
          return { ...state, error: action.payload, loading: false };

        default:
            return state;
    }
    return newState;
};

