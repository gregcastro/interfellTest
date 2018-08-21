import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';

import { login } from '../actions/login';
import Button from '../components/button';
import InputField from '../components/inputField';

import { SET_USERNAME, SET_PASSWORD } from '../actions/Types';

class Login extends React.Component {

	constructor(props) {
		super(props);

		this.login = this.login.bind(this);
	}

	login() {
		this.props.login(this.props.user, () => (alert('Bienvenido')));
	}

	render() {
		return (
			<div>
				<header>
					<h1>Bienvenido al Sistema de Administración de Interfell</h1>
				</header>
				<p>
					Por favor ingrese sus credenciales para ingresar al sistema.
				</p>

				<InputField
					width={200}
					placeholder={'Username'.toUpperCase().concat(' (*)')}
					typeReducer={SET_USERNAME}
					required
				/>

				<InputField
					width={200}
					type="password"
					placeholder={'Password'.toUpperCase().concat(' (*)')}
					typeReducer={SET_PASSWORD}
					required
				/>

				<Button title='Iniciar Sesión' width={110} height={30} fontSize={15} callToAction={this.login} />
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