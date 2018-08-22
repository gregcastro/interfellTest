import React from 'react';
import PropTypes from 'prop-types';


class Button extends React.PureComponent {
    render() {
        const styles = {
            width: this.props.width.toString().concat('px'),
            height: this.props.height.toString().concat('px'),
            backgroundColor: this.props.backgroundColor,
            backgroundImage: this.props.backgroundImage,
            fontSize: this.props.fontSize.toString().concat('px'),
            color: this.props.color,
        };
        return (
            <button className={this.props.className} style={styles} onClick={this.props.callToAction} disabled={this.props.disabled} >{this.props.title}</button>
        );
    }
}

Button.defaultProps = {
    title: '',
    width: 0,
    height: 0,
    backgroundColor: '',
    backgroundImage: '',
    fontSize: 16,
    className: 'btn btn-primary',
    color: '',
    callToAction: null,
    disabled: false,
};

Button.propTypes = {
    title: PropTypes.string,
    width: PropTypes.number,
    height: PropTypes.number,
    backgroundColor: PropTypes.string,
    backgroundImage: PropTypes.string,
    fontSize: PropTypes.number,
    className: PropTypes.string,
    color: PropTypes.string,
    callToAction: PropTypes.func,
    disabled: PropTypes.bool,
};

export default Button;

