I format the register component content using an HTML table. I am an example of how to customize the register component rendering.

To use your own form, subclass TFRegisterComponentBase, implement #renderFormContent: using me as a guide, and set your TLLoginComponent to use your register component using TLLoginComponent>>#registerComponent: in your application #initialize method.