import * as React from "react";
import PropTypes from "prop-types";

const Hello = ({ name }) => {
  return (
    <div className="h-screen flex justify-center">
      <div className="pt-16 text-2xl text-red-500">Hello {name || "World"} from ReactJS in Rails 7!</div>
    </div>
  );
};

Hello.propTypes = {
  name: PropTypes.string,
};

export default Hello;
