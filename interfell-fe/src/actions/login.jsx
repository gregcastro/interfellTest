import * as TYPE from './Types';

export const login = (user, callback) => (dispatch) => {
    dispatch({
        type: TYPE.LOGIN,
    });
    request
        .post('/auth')
        .send(user)
        .then((response) => {
            callback();
            dispatch({
                type: TYPE.LOGIN_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            dispatch({
                type: TYPE.LOGIN_FAIL,
                payload: err.response.body,
            });
        });
};