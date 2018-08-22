import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { Redirect } from 'react-router-dom';

import { login } from '../actions/login';
import Button from '../components/button';
import { urlRegister } from '../routes/routes';
import InputField from '../components/inputField';
import { SET_USERNAME, SET_PASSWORD } from '../actions/Types';


class Login extends React.Component {

	constructor(props) {
		super(props);
		this.state = {
			url: '',
		};

		this.login = this.login.bind(this);
		this.redirect = this.redirect.bind(this);
	}

	login() {
		this.props.login(this.props.user, () => (alert('El nombre de usuario o contraseña es incorrecto')));
	}

	redirect(url) {
		this.setState({ url });
	}


	render() {
		if (this.state.url !== '') {
			return (
				<Redirect to={this.state.url} />
			);
		}
		return (
			<div className="text-center">
				<header>
					<h1>Bienvenido al Sistema de Administración de Interfell</h1>
				</header>
				<div className="row">
					<div className="col-md-3 col-md-offset-4 text-center">

						<p>Por favor ingrese sus credenciales para ingresar al sistema.</p>

						<InputField width={200} placeholder={'Username'.toUpperCase().concat(' (*)')} typeReducer={SET_USERNAME} required />
						<InputField width={200} type="password" placeholder={'Password'.toUpperCase().concat(' (*)')} typeReducer={SET_PASSWORD} required />

						<div className="row">
							<div className="col-md-6 text-right">
								<Button title='Iniciar Sesión' width={115} height={40} fontSize={15} callToAction={this.login} />
							</div>
							<div className="col-md-6 text-left">
								<Button title='Registrarse' width={115} height={40} fontSize={15} callToAction={() => this.redirect(urlRegister)} className="btn btn-cancel" />
							</div>
						</div>
					</div>
				</div>
			</div>
		);
	}
}

Login.defaultProps = {
	login: null,
	error: {},
	user: {},
};
Login.propTypes = {
	login: PropTypes.func,
	error: PropTypes.object,
	user: PropTypes.object,
};

const mapStateToProps = state => (
	{
		user: state.login.login,
		error: state.login.error,
	}
);
const mapDispatchToProps = { login };
export default connect(mapStateToProps, mapDispatchToProps)(Login);