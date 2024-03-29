module.exports = {
    env: {
        commonjs: true,
        node: true,
        browser: true,
        es6: true,
        jest: true,
    },
    extends: ["eslint:recommended", "plugin:react/recommended"],
    globals: {},
    parser: "@babel/eslint-parser",
    parserOptions: {
        ecmaFeatures: {
            jsx: true,
        },
        ecmaVersion: 2018,
        sourceType: "module",
    },
    plugins: ["react", "react-hooks"],
    rules: {},
    settings: {
        react: {
            version: "detect", // "detect" automatically picks the version you have installed.
        },
    },
};
