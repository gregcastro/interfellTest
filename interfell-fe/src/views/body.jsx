import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { Switch, Route, BrowserRouter as Router } from 'react-router-dom';

import Login from './login';
import Error404 from './error404';
import * as url from '../routes/routes';
import Profile from './profile';

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
                            render={() => (condition ? <Profile /> : <Login />)}
                        />
                        <Route
                            exact
                            path={url.urlLogin}
                            render={() => (condition ? <Profile /> : <Login />)}
                        />
                        <Route
                            exact
                            path={url.urlProfile}
                            render={() => (condition ? <Profile /> : <Login />)}
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

