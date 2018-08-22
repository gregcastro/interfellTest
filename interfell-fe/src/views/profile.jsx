import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { Redirect } from 'react-router-dom';

import { logout } from '../actions/login';
import Button from '../components/button';
import { urlLogin } from '../routes/routes';
import InputField from '../components/inputField';
import SelectField from '../components/selectField';
import { get_countries, get_cities, get_academic_degrees, update_user, get_user, get_country_by_user } from '../actions/profile';

import {
    SET_ACADEMIC_DEGREE,
    SET_ADDRESS,
    SET_CITY,
    SET_COUNTRY,
    SET_EMAIL,
    SET_LAST_NAME,
    SET_NAME
} from '../actions/Types';

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
        this.props.get_cities(this.props.country);
        this.props.get_academic_degrees();
        this.props.get_user(this.props.token, this.props.userData.pk);
        this.props.get_country_by_user(this.props.token);

    }
    componentWillReceiveProps(nextProps) {
        if (this.props.country !== nextProps.country) {
            this.props.get_cities(nextProps.country);
        }
    }

    redirect(url) {
        this.setState({ url });
    }

    logout() {
        const that = this;
        this.props.logout(() => that.redirect(urlLogin));
    }

    updateUser() {
        this.props.update_user(this.props.token, this.props.user, this.props.userData.pk, () => (alert('Datos actualizados exitosamente')));
    }

    render() {
        if (this.state.url !== '') {
            return (
                <Redirect to={this.state.url} />
            );
        }
        return (
            <div className="row">

                <div className="col-md-3 col-md-offset-4 text-center">
                    <header>
                        <h1>Datos de Perfil</h1>
                    </header>

                    <InputField width={200} placeholder={'Name'.toUpperCase()} typeReducer={SET_NAME} value={this.props.user.first_name} required />
                    <InputField width={200} placeholder={'Last Name'.toUpperCase()} typeReducer={SET_LAST_NAME} value={this.props.user.last_name} required />
                    <InputField width={200} placeholder={'Email'.toUpperCase()} typeReducer={SET_EMAIL} value={this.props.user.email} required />
                    <SelectField values={this.props.countries} typeReducer={SET_COUNTRY} value={this.props.country} title="Pais" />
                    <SelectField values={this.props.cities} typeReducer={SET_CITY} value={this.props.user.city} title="Ciudad" />
                    <SelectField values={this.props.academicDegrees} typeReducer={SET_ACADEMIC_DEGREE} value={this.props.user.academic_degree} title="Nivel Academico" />
                    <InputField width={200} placeholder={'Address'.toUpperCase()} typeReducer={SET_ADDRESS} value={this.props.user.address} required />
                    
                    <div className="row">
                        <div className="col-md-6 text-right">
                            <Button title='Actualizar Datos' width={130} height={35} fontSize={15} callToAction={this.updateUser} />
                        </div>
                        <div className="col-md-6 text-left">
                            <Button title='Logout' width={130} height={35} fontSize={15} callToAction={this.logout} className="btn btn-cancel" />
                        </div>
                    </div>
                    
                    
                    
                </div>
            </div>
        );
    }
}

Profile.defaultProps = {
    login: null,
    error: {},
    user: {},
    countries: [],
    cities: [],
    academicDegrees: [],
    token: '',
    country: -1,
};
Profile.propTypes = {
    login: PropTypes.func,
    error: PropTypes.object,
    user: PropTypes.object,
    countries: PropTypes.array,
    cities: PropTypes.array,
    academicDegrees: PropTypes.array,
    token: PropTypes.string,
    country: PropTypes.number,
};

const mapStateToProps = state => (
    {
        user: state.profile.user,
        error: state.profile.error,
        countries: state.profile.countries,
        cities: state.profile.cities,
        academicDegrees: state.profile.academicDegrees,
        userData: state.login.token.user,
        token: state.login.token.token,
        country: state.profile.country,
    }
);
const mapDispatchToProps = { get_countries, get_cities, get_academic_degrees, update_user, logout, get_user, get_country_by_user };
export default connect(mapStateToProps, mapDispatchToProps)(Profile);