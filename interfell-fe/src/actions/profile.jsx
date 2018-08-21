import request from '../utils/network';

import * as TYPE from './Types';

export const get_countries = () => (dispatch) => {
    request
        .get('/countries/')
        .then((response) => {
            dispatch({
                type: TYPE.GET_COUNTRIES_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            dispatch({
                type: TYPE.GET_COUNTRIES_FAIL,
                payload: err.response.body,
            });
        });
};


export const get_cities = () => (dispatch) => {
    request
        .get('/cities/')
        .then((response) => {
            dispatch({
                type: TYPE.GET_CITIES_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            dispatch({
                type: TYPE.GET_CITIES_FAIL,
                payload: err.response.body,
            });
        });
};


export const get_academic_degrees = () => (dispatch) => {
    request
        .get('/academicDegrees/')
        .then((response) => {
            dispatch({
                type: TYPE.GET_ACADEMIC_DEGREES_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            dispatch({
                type: TYPE.GET_ACADEMIC_DEGREES_FAIL,
                payload: err.response.body,
            });
        });
};


export const update_user = (user, pk, callback) => (dispatch) => {
    request
        .put(`/users/${pk}`)
        .send(user)
        .then((response) => {
            callback();
            dispatch({
                type: TYPE.UPDATE_USER_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            dispatch({
                type: TYPE.UPDATE_USER_FAIL,
                payload: err.response.body,
            });
        });
};


export const get_user = (pk) => (dispatch) => {
    request
        .get(`/users/${pk}`)
        .then((response) => {
            dispatch({
                type: TYPE.GET_USER_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            dispatch({
                type: TYPE.GET_USER_FAIL,
                payload: err.response.body,
            });
        });
};