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

export const get_country_by_user = (token) => (dispatch) => {
    request
        .get('/countryByUser/')
        .set({ Authorization: `JWT ${token}` })
        .then((response) => {
            dispatch({
                type: TYPE.GET_COUNTRY_BY_USER_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            dispatch({
                type: TYPE.GET_COUNTRY_BY_USER_FAIL,
                payload: [],
            });
        });
};


export const get_cities = (country) => (dispatch) => {
    let query = '/';
    if (country !== -1) {
        query = `?country=${country}`;
    }
    request
        .get(`/cities${query}`)
        .then((response) => {
            dispatch({
                type: TYPE.GET_CITIES_SUCCESS,
                payload: response.body,
            });
        })
        .catch((err) => {
            dispatch({
                type: TYPE.GET_CITIES_FAIL,
                payload: [],
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
                payload: [],
            });
        });
};


export const update_user = (token, user, pk, callback) => (dispatch) => {
    request
        .put(`/users/${pk}`)
        .send(user)
        .set({ Authorization: `JWT ${token}` })
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


export const get_user = (token, pk) => (dispatch) => {
    request
        .get(`/users/${pk}`)
        .set({ Authorization: `JWT ${token}` })
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