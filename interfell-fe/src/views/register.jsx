import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { Redirect } from 'react-router-dom';

import Button from '../components/button';
import { register } from '../actions/register';
import InputField from '../components/inputField';
import SelectField from '../components/selectField';
import { get_countries, get_cities, get_academic_degrees } from '../actions/profile';

import {
    SET_USERNAME,
    SET_PASSWORD,
    SET_PASSWORD_CONFIRMATION,
    SET_NAME,
    SET_LAST_NAME,
    SET_ADDRESS,
    SET_EMAIL,
    SET_CITY,
    SET_ACADEMIC_DEGREE,
    SET_COUNTRY,
} from '../actions/Types';
import { urlLogin } from '../routes/routes';

class Register extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            url: '',
        };

        this.register = this.register.bind(this);
        this.redirect = this.redirect.bind(this);
    }

    componentWillMount() {
        this.props.get_countries();
        this.props.get_cities(this.props.country);
        this.props.get_academic_degrees();

    }
    componentWillReceiveProps(nextProps) {
        if (this.props.country !== nextProps.country) {
            this.props.get_cities(nextProps.country);
        }
    }

    redirect(url) {
        this.setState({ url });
    }

    register() {
        if (this.props.user.password === this.props.password_confirmation) {
            this.props.register(this.props.user, () => (alert('Registro Exitoso')), () => (alert('Ha ocurrido un error')));
        } else {
            alert('Las contraseñas no coinciden');
        }
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
                        <h1>Registro</h1>
                    </header>

                    <InputField width={200} placeholder={'Nombre'.toUpperCase().concat(' (*)')} typeReducer={SET_NAME} required />
                    <InputField width={200} placeholder={'Apellido'.toUpperCase().concat(' (*)')} typeReducer={SET_LAST_NAME} required />
                    <InputField width={200} placeholder={'Username'.toUpperCase().concat(' (*)')} typeReducer={SET_USERNAME} required />
                    <InputField width={200} placeholder={'Email'.toUpperCase().concat(' (*)')} typeReducer={SET_EMAIL} required />
                    <InputField width={200} type="textField" placeholder={'Dirección'.toUpperCase().concat(' (*)')} typeReducer={SET_ADDRESS} required />
                    <SelectField values={this.props.countries} typeReducer={SET_COUNTRY} title="Pais" />
                    <SelectField values={this.props.cities} typeReducer={SET_CITY} title="Ciudad" />
                    <SelectField values={this.props.academicDegrees} typeReducer={SET_ACADEMIC_DEGREE} title="Nivel Academico" />
                    <InputField width={200} type="password" placeholder={'Contraseña'.toUpperCase().concat(' (*)')} typeReducer={SET_PASSWORD} required />
                    <InputField width={200} type="password" placeholder={'Confirmación de Contraseña'.toUpperCase().concat(' (*)')} typeReducer={SET_PASSWORD_CONFIRMATION} required />
                    
                    <div className="row">
                        <div className="col-md-6 text-right">
                            <Button title='Registrarse' width={110} height={35} fontSize={15} callToAction={this.register} />
                        </div>
                        <div className="col-md-6 text-left">
                            <Button title='Iniciar Sesión' width={110} height={35} fontSize={15} callToAction={() => this.redirect(urlLogin)} className="btn btn-cancel" />
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

Register.defaultProps = {
    user: {},
    password_confirmation: '',
    country: -1,
    countries: [],
    cities: [],
    academicDegrees: [],
};
Register.propTypes = {
    user: PropTypes.object,
    password_confirmation: PropTypes.string,
    country: PropTypes.number,
    countries: PropTypes.array,
    cities: PropTypes.array,
    academicDegrees: PropTypes.array,
};

const mapStateToProps = state => (
    {
        user: state.register.user,
        password_confirmation: state.register.password_confirmation,
        country: state.register.country,
        countries: state.profile.countries,
        cities: state.profile.cities,
        academicDegrees: state.profile.academicDegrees,
    }
);
const mapDispatchToProps = { register, get_countries, get_cities, get_academic_degrees };
export default connect(mapStateToProps, mapDispatchToProps)(Register);