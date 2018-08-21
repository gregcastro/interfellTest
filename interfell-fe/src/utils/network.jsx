import superagent from 'superagent';
import superagentAbsolute from 'superagent-absolute';

import urlBackend from './config';

let baseURL = urlBackend;
if (process.env.NODE_ENV === 'development') {
    baseURL = urlBackend;
}

const agent = superagent.agent();
const request = superagentAbsolute(agent)(baseURL);

export const addAuth = (token) => {
    request.set({ Authorization: `JWT ${token}`});
};

export default request;
