import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { Redirect } from 'react-router-dom';

import { logout } from '../actions/login';
import Button from '../components/button';
import { urlLogin } from '../routes/routes';
import InputField from '../components/inputField';
import SelectField from '../components/selectField';
import { get_countries, get_cities, get_academic_degrees, update_user, get_user } from '../actions/profile';

import {
    SET_ACADEMIC_DEGREE,
    SET_ADDRESS,
    SET_CITY,
    SET_COUNTRY,
    SET_EMAIL,
    SET_LAST_NAME,
    SET_NAME } from '../actions/Types';

class Profile extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            url: '',
        };

        this.logout = this.logout.bind(this);
        this.redirect = this.redirect.bind(this);
        this.updateUser = this.updateUser.bind(this);
    }

    componentWillMount() {
        this.props.get_countries();
        this.props.get_cities();
        this.props.get_academic_degrees();
        this.props.get_user(this.props.userData.pk);

    }

    redirect(url) {
        this.setState({ url });
    }

    logout() {
        const that = this;
        this.props.logout(() => that.redirect(urlLogin));
    }

    updateUser() {
        this.props.update_user(this.props.user, this.props.userData.pk, () => (alert('Datos actualizados exitosamente')));
    }

    render() {
        if (this.state.url !== '') {
            return (
                <Redirect to={this.state.url} />
            );
        }
        return (
            <div>
                <header>
                    <h1>Datos de Perfil</h1>
                </header>

                <InputField
                    width={200}
                    placeholder={'Name'.toUpperCase()}
                    typeReducer={SET_NAME}
                    value={this.props.user.first_name}
                    required
                />

                <InputField
                    width={200}
                    placeholder={'Last Name'.toUpperCase()}
                    typeReducer={SET_LAST_NAME}
                    value={this.props.user.last_name}
                    required
                />

                <InputField
                    width={200}
                    placeholder={'Email'.toUpperCase()}
                    typeReducer={SET_EMAIL}
                    value={this.props.user.email}
                    required
                />

                Pais
                <SelectField values={this.props.countries} typeReducer={SET_COUNTRY} />
                <br />

                Ciudad
                <SelectField values={this.props.cities} typeReducer={SET_CITY} value={this.props.user.city} />
                <br />

                Nivel Academico
                <SelectField values={this.props.academicDegrees} typeReducer={SET_ACADEMIC_DEGREE} value={this.props.user.academic_degree}/>


                <InputField
                    width={200}
                    placeholder={'Address'.toUpperCase()}
                    typeReducer={SET_ADDRESS}
                    value={this.props.user.address}
                    required
                />

                <Button title='Actualizar Datos' width={130} height={35} fontSize={15} callToAction={this.updateUser} />
                <Button title='Logout' width={130} height={35} fontSize={15} callToAction={this.logout} />
            </div>
        );
    }
}

Profile.defaultProps = {
    login: null,
    error: {},
    user: {},
};
Profile.propTypes = {
    login: PropTypes.func,
    error: PropTypes.object,
    user: PropTypes.object,
};

const mapStateToProps = state => (
    {
        user: state.profile.user,
        error: state.profile.error,
        countries: state.profile.countries,
        cities: state.profile.cities,
        academicDegrees: state.profile.academicDegrees,
        userData: state.login.token.user,
    }
);
const mapDispatchToProps = { get_countries, get_cities, get_academic_degrees, update_user, logout, get_user };
export default connect(mapStateToProps, mapDispatchToProps)(Profile);