import { combineReducers } from 'redux';

import login from './login';
import profile from './profile';
import register from './register';

const reducer = combineReducers({
    login,
    profile,
    register,
});
export default reducer;

