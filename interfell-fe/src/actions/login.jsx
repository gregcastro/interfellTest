import request, { addAuth } from '../utils/network';

import * as TYPE from './Types';

export const login = (user, callback) => (dispatch) => {
    dispatch({
        type: TYPE.LOGIN,
    });
    request
        .post('/login/')
        .send(user)
        .then((response) => {
            addAuth(response.body.token);
            callback();
            dispatch({
                type: TYPE.LOGIN_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            console.log(err);
            dispatch({
                type: TYPE.LOGIN_FAIL,
                payload: err.response.body,
            });
        });
};

export const logout = callback => (dispatch) => {
    callback();
    dispatch({ type: TYPE.LOGOUT });
};
