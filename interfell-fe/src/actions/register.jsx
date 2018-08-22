import request from '../utils/network';

import * as TYPE from './Types';

export const register = (user, callbackSuccess, callbackError) => (dispatch) => {
    dispatch({
        type: TYPE.REGISTER,
    });
    request
        .post('/users/')
        .send(user)
        .then((response) => {
            callbackSuccess();
            dispatch({
                type: TYPE.REGISTER_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            callbackError();
            dispatch({
                type: TYPE.REGISTER_FAIL,
                payload: err.response.body,
            });
        });
};
