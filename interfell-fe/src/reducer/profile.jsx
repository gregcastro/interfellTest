// import _persist from 'redux-persist';
import {
    SET_CITY,
    SET_EMAIL,
    SET_NAME,
    SET_ADDRESS,
    SET_LAST_NAME,
    SET_COUNTRY,
    SET_ACADEMIC_DEGREE,
    GET_COUNTRIES_SUCCESS,
    GET_CITIES_SUCCESS,
    GET_ACADEMIC_DEGREES_SUCCESS,
    UPDATE_USER_SUCCESS,
    UPDATE_USER_FAIL,
    GET_USER_SUCCESS,
    GET_USER_FAIL,
    GET_COUNTRY_BY_USER_SUCCESS,
} from '../actions/Types';

const INITIAL_STATE = {
    error: {},
    user: {
        city: '',
        email: '',
        address: '',
        last_name: '',
        first_name: '',
        academic_degree: '',
    },
    countries: [],
    cities: [],
    academicDegrees: [],
    country: -1,
    
};

export default (state = INITIAL_STATE, action) => {
    const newState = Object.assign({}, state);
    switch (action.type) {
        case SET_LAST_NAME:
            newState.user.last_name = action.payload;
            break;
        case SET_CITY:
            newState.user.city = action.payload;
            break;
        case SET_EMAIL:
            newState.user.email = action.payload;
            break;
        case SET_NAME:
            newState.user.first_name = action.payload;
            break;
        case SET_ADDRESS:
            newState.user.address = action.payload;
            break;
        case SET_ACADEMIC_DEGREE:
            newState.user.academic_degree = action.payload;
            break;
        case SET_COUNTRY:
            return { ...state, country: parseInt(action.payload, 10) };
        case GET_COUNTRIES_SUCCESS:
            return { ...state, countries: action.payload };
        case GET_CITIES_SUCCESS:
            return { ...state, cities: action.payload };
        case GET_ACADEMIC_DEGREES_SUCCESS:
            return { ...state, academicDegrees: action.payload };
        case UPDATE_USER_SUCCESS:
            return { ...state };
        case UPDATE_USER_FAIL:
            return { ...state, error: action.payload };
        case GET_USER_SUCCESS:
            return { ...state, user: action.payload };
        case GET_USER_FAIL:
            return { ...state, error: action.payload };
        case GET_COUNTRY_BY_USER_SUCCESS:
            return { ...state, country: action.payload.id };
        default:
            return state;
    }
    return newState;
};

