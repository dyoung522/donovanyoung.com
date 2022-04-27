import * as React from "react";
import PropTypes from "prop-types";

const Hello = ({ greet, railsVersion }) => {
  const reactVersion = React.version.match(/\d+\.\d+\.\d+/);

  return (
    <div className="flex justify-center">
      <div className="text-center items-center">
        <p className="py-16 text-2xl text-red-500">Hello {greet || "World"}!</p>
        <p>
          ReactJS v{reactVersion} Running in Rails {railsVersion}
        </p>
      </div>
    </div>
  );
};

Hello.propTypes = {
  greet: PropTypes.string,
  railsVersion: PropTypes.string,
};

export default Hello;
