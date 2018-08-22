import {
    REGISTER,
    REGISTER_FAIL,
    REGISTER_SUCCESS,
    SET_USERNAME,
    SET_PASSWORD,
    SET_PASSWORD_CONFIRMATION,
    SET_NAME,
    SET_LAST_NAME,
    SET_ADDRESS,
    SET_EMAIL,
    SET_CITY,
    SET_COUNTRY,
    SET_ACADEMIC_DEGREE,
} from '../actions/Types';

const INITIAL_STATE = {
    error: {},
    user: {
        email: '',
        city: null,
        address: '',
        username: '',
        password: '',
        last_name: '',
        first_name: '',
        academic_degree: null,
    },
    password_confirmation: '',
    country: -1,
};

export default (state = INITIAL_STATE, action) => {
    const newState = Object.assign({}, state);
    switch (action.type) {
        case SET_USERNAME:
            newState.user.username = action.payload;
            break;
        case SET_PASSWORD:
            newState.user.password = action.payload;
            break;
        case SET_PASSWORD_CONFIRMATION:
            newState.password_confirmation = action.payload;
            break;
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
        case REGISTER:
            return { ...state, error: {} };
        case REGISTER_SUCCESS:
            return { ...state, user: action.payload };
        case REGISTER_FAIL:
            return { ...state, error: action.payload };
        default:
            return state;
    }
    return newState;
};

