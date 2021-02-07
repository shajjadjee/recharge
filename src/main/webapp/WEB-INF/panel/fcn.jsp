<script>
	function change(value,operator,simtype) {
		document.getElementById("amount").value = value;
		document.getElementById("operator").value = operator;
		document.getElementById("simtype").value = simtype;
		document.getElementById("totalValue").innerHTML = "Total price: $"
				+ 500 * value;
	}
</script>