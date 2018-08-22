import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';

import setInputField from '../actions/inputField';

class SelectField extends React.PureComponent {

    render() {
        let optionValues = null;
        if (this.props.values !== null && this.props.values.lenght !== 0) {
            optionValues = this.props.values.map(item => (
                <option selected={item.id === this.props.value} key={item.id} value={item.id}>{item.name}</option>
            ));
        }
        return (
            <div className="form-group">
                <select className="form-control" id="sel1" onChange={(e) => { this.props.setInputField(e.target.value, this.props.typeReducer); }}>
                    <option value="-1">Seleccionar {this.props.title}</option>
                    {optionValues}
                </select>
            </div>
        );
    }
}

SelectField.defaultProps = {
    width: 0,
    values: [],
    typeReducer: '',
    setInputField: null,
    title: 'Seleccione',
};

SelectField.propTypes = {
    width: PropTypes.number,
    values: PropTypes.array,
    typeReducer: PropTypes.string,
    setInputField: PropTypes.func,
    title: PropTypes.string,
};

const mapStateToProps = state => ({});
const mapDispatchToProps = { setInputField };
export default connect(mapStateToProps, mapDispatchToProps)(SelectField);