import React from "react";
import renderer from "react-test-renderer";
import Hello from "./";

it("Hello renders without error", () => {
  const tree = renderer.create(<Hello />).toJSON();

  expect(tree).toMatchSnapshot();
});
