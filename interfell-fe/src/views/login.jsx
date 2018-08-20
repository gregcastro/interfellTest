import React from 'react';

import Button from '../components/button';
import InputField from '../components/inputField';

import { SET_USERNAME, SET_PASSWORD } from '../actions/Types';

class Login extends React.Component {

	constructor(props) {
		super(props);

		this.validate = this.validate.bind(this);
	}

	validate() {
		alert('hola');
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

				<Button title='Iniciar Sesión' width={110} height={30} fontSize={15} callToAction={this.validate} />
			</div>
		);
	}
}

export default Login;
