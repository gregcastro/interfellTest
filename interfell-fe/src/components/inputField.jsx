import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';

import setInputField from '../actions/inputField';

// import '../sass/components/inputField.scss';

class InputField extends React.PureComponent {
  render() {
    return (
      <div className="input-field-container">
            <input
                onChange={(e) => { this.props.setInputField(e.target.value, this.props.typeReducer); }}
                value={this.props.value} type={this.props.type}
                className="input-field"
                placeholder={this.props.placeholder}
                maxLength={this.props.maxLength}
                disabled={this.props.disabled}
                required
            />
      </div>
    );
  }
}
InputField.defaultProps = {
//   width: 0,
  type: 'text',
  disabled: '',
  maxLength: 64,
  typeReducer: '',
  required: false,
  value: undefined,
  placeholder: null,
  setInputField: null,
};
InputField.propTypes = {
  type: PropTypes.string,
//   width: PropTypes.number,
  value: PropTypes.string,
  required: PropTypes.bool,
  disabled: PropTypes.string,
  maxLength: PropTypes.number,
  placeholder: PropTypes.string,
  typeReducer: PropTypes.string,
  setInputField: PropTypes.func,
};
const mapStateToProps = state => ({});
const mapDispatchToProps = { setInputField };
export default connect(mapStateToProps, mapDispatchToProps)(InputField);

