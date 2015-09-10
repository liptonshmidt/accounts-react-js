@SearchBar = React.createClass
  handleChange: ->
    @props.onFilterInput(React.findDOMNode(@refs.filterText).value)

  render: ->
    React.DOM.div
      className: 'col-md-3 form-group'
      React.DOM.input
        className: "form-control"
        type: "text"
        placeholder: "Search..."
        value: @props.filterText
        onChange: @handleChange
        ref: "filterText"
