<h3>Search Parameters Required By This Implementation Guide</h3>
<table class="grid">
<thead>
</tr>
			<tr>
				<th>Conformance</th>
                <th>Resource</th>
				<th>Parameter</th>
				<th>Type</th>
				<th>Example</th>
			</tr>
</thead>
<tbody>
<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/coverage.html">Coverage</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/search.html#id">_id</a>
				</td>
				<td>token</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Coverage?_id=[id]</code>
				</td>
			</tr>
			<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/coverage.html">Coverage</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/search.html#lastUpdated">_lastUpdated</a>
				</td>
				<td>reference</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Coverage?_lastUpdated=[dateTime]</code>
				</td>
			</tr>
			<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/coverage.html">Coverage</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/coverage.html#search">beneficiary</a>
				</td>
				<td>date</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Coverage?beneficiary=[beneficiary]</code>
				</td>
			</tr>
			<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/coverage.html">Coverage</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/coverage.html#search">subscriber</a>
				</td>
				<td>token</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Coverage?subscriber=[system]|[code]</code>
				</td>
			</tr>
			<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/coverage.html">Coverage</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/coverage.html#search">patient</a>
				</td>
				<td>token</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Coverage?patient=[system]|[code]</code>
				</td>
			</tr>
			<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/coverage.html">Coverage</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/coverage.html#search">identifier</a>
				</td>
				<td>date</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Coverage?identifier=[identifier]</code>
				</td>
			</tr>
            <tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/search.html#id">_id</a>
				</td>
				<td>reference</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Organization?_id=[id]</code>
				</td>
			</tr>
            <tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/search.html#id">_id</a>
				</td>
				<td>reference</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Patient?_id=[id]</code>
				</td>
			</tr>
			<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/search.html#lastUpdated">_lastUpdated</a>
				</td>
				<td>reference</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Patient?_lastUpdated=[dateTime]</code>
				</td>
			</tr>
			<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/patient.html#search">identifier</a>
				</td>
				<td>reference</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Patient?identifier=[type]/[id]</code>
				</td>
			</tr>
			<tr>
				<td>
					<strong>SHALL</strong>
				</td>
                <td>
					<strong><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></strong>
				</td>
				<td>
					<a href="http://hl7.org/fhir/R4/patient.html#search">name</a>
				</td>
				<td>reference</td>
				<td>
					<code class="highlighter-rouge">GET [base]/Patient?name=[type]/[id]</code>
				</td>
			</tr>


</tbody>
</table>