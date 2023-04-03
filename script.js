// Load the opioid data from a JSON file
d3.json("opioid_data.json").then(function(data) {
  // Get references to the table body and filter form inputs
  var tbody = d3.select("#opioid-table-body");
  var yearInput = d3.select("#year-input");
  var stateInput = d3.select("#state-input");
  var countyInput = d3.select("#county-input");

  // Initialize the table with the first 10 rows of data
  var rowsToShow = 10;
  var slicedData = data.slice(0, rowsToShow);
  buildTable(slicedData);

  // Create a function to build the table
  function buildTable(data) {
    // First, clear out any existing data
    tbody.html("");

    // Next, loop through each object in the data
    // and append a row and cells for each value in the row
    data.forEach((dataRow) => {
      // Append a row to the table body
      let row = tbody.append("tr");

      // Loop through each field in the dataRow and add
      // each value as a table cell (td)
      Object.values(dataRow).forEach((val) => {
        let cell = row.append("td");
        cell.text(val);
      });
    });
  }

  // Create a function to filter the table by year, state, and county
  function filterTable() {
    // Prevent the page from refreshing
    d3.event.preventDefault();

    // Get the value property of the input element
    var yearValue = yearInput.property("value");
    var stateValue = stateInput.property("value");
    var countyValue = countyInput.property("value");

    // Filter the data based on the input values
    var filteredData = data.filter(function(row) {
      return (row.Year === yearValue || yearValue === "") &&
             (row.State === stateValue || stateValue === "") &&
             (row.county.toLowerCase().includes(countyValue.toLowerCase()) || countyValue === "");
    });
    

    // Clear the table body and rebuild the table with the filtered data
    tbody.html("");
    buildTable(filteredData.slice(0, rowsToShow));
  }

  // Attach an event listener for the form submit button
  d3.selectAll("#filter-form-btn").on("click", filterTable);

  // Attach an event listener for the clear button
  d3.selectAll("#clear-btn").on("click", function() {
    // Clear the form inputs and rebuild the table with the first 10 rows of data
    yearInput.property("value", "");
    stateInput.property("value", "");
    countyInput.property("value", "");
    tbody.html("");
    buildTable(data.slice(0, rowsToShow));
  });
});




  