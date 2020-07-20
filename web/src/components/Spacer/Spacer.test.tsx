import React from 'react';
import { mount } from 'enzyme';
import Spacer from "./Spacer";


it("Should render", async () => {
  let wrapper = mount(<Spacer/>);
  expect(wrapper).toMatchSnapshot();
})
