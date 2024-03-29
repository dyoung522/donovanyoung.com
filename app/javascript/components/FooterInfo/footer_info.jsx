import * as React from "react";
import PropTypes from "prop-types";

const FooterInfo = ({ railsVersion }) => {
  const reactVersion = React.version.match(/\d+\.\d+\.\d+/);
  const appAuthor = "Donovan C. Young";

  return (
    <section className="flex flex-col justify-end items-end text-slate-500">
      <div className="flex text-sm">
        <i className="fa-regular fa-copyright"></i>
        {new Date().getFullYear()} {appAuthor}; <span className="italic">all rights reserved</span>
      </div>
      <div className="flex text-xs">
        Proudly using ReactJS v{reactVersion} running on Rails v{railsVersion || "unknown"}
      </div>
    </section>
  );
};

FooterInfo.propTypes = {
  railsVersion: PropTypes.string,
};

export default FooterInfo;
