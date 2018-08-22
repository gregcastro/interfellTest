import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { Switch, Route, BrowserRouter as Router, Redirect } from 'react-router-dom';

import Login from './login';
import Profile from './profile';
import Error404 from './error404';
import Register from './register';
import * as url from '../routes/routes';

class Body extends React.Component {
    render() {
        let condition = Object.keys(this.props.token).length !== 0;
        return (
            <div className="body">
                <Router>
                    <Switch>
                        <Route
                            exact
                            path="/"
                            render={() => (condition ? <Profile /> : <Redirect to={url.urlLogin} />)}
                        />
                        <Route
                            exact
                            path={url.urlLogin}
                            render={() => (condition ? <Redirect to={url.urlProfile} /> : <Login />)}
                        />
                        <Route
                            exact
                            path={url.urlProfile}
                            render={() => (condition ? <Profile /> : <Redirect to={url.urlLogin} />)}
                        />
                        <Route
                            exact
                            path={url.urlRegister}
                            render={() => (condition ? <Redirect to={url.urlProfile} /> : <Register />)}
                        />
                        <Route component={Error404} />
                    </Switch>
                </Router>
            </div>
        );
    }
}
Body.defaultProps = {
    token: {},
};
Body.propTypes = {
    token: PropTypes.object,
};
const mapStateToProps = state => ({
    token: state.login.token,
});

export default connect(mapStateToProps)(Body);

