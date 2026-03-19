<h4>Supporting Image Extension</h4>

<p>The Supporting Image extension enables payers to provide images associated with a member's physical insurance card as part of the Coverage resource. A common use case is providing images of the <strong>front</strong> and <strong>back</strong> of the insurance card so that members can access a digital copy of their card through consuming applications.</p>

<h5>Structure</h5>

<p>Each instance of the Supporting Image extension contains three sub-extensions:</p>

<table class="grid">
  <thead>
    <tr>
      <th>Sub-extension</th>
      <th>Type</th>
      <th>Card.</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>label</code></td>
      <td>string</td>
      <td>1..1</td>
      <td>A short label identifying the image (e.g., "Front of insurance card", "Back of insurance card").</td>
    </tr>
    <tr>
      <td><code>description</code></td>
      <td>string</td>
      <td>1..1</td>
      <td>A detailed description of the image content. Detailed descriptions are encouraged to assist with accessibility.</td>
    </tr>
    <tr>
      <td><code>image</code></td>
      <td>Attachment or Reference(DocumentReference)</td>
      <td>1..1</td>
      <td>The image data provided as an inline Attachment (with contentType and base64-encoded data) or as a reference to a DocumentReference resource.</td>
    </tr>
  </tbody>
</table>

<h5>Recording Front and Back of Card Images</h5>

<p>To provide images of the front and back of a physical insurance card, include two instances of the Supporting Image extension on the Coverage resource. Use the <code>label</code> sub-extension to identify which side of the card the image represents and the <code>description</code> sub-extension to provide accessible text describing the image content.</p>

<p><strong>Example: Front and back card images using inline Attachments</strong></p>

<pre><code>{
  "resourceType": "Coverage",
  "extension": [
    {
      "extension": [
        {
          "url": "label",
          "valueString": "Front of insurance card"
        },
        {
          "url": "description",
          "valueString": "Image of the front of the member's physical insurance card showing plan name, member ID, and group number"
        },
        {
          "url": "image",
          "valueAttachment": {
            "contentType": "image/jpeg",
            "data": "&lt;base64-encoded image data&gt;"
          }
        }
      ],
      "url": "http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-SupportingImage-extension"
    },
    {
      "extension": [
        {
          "url": "label",
          "valueString": "Back of insurance card"
        },
        {
          "url": "description",
          "valueString": "Image of the back of the member's physical insurance card showing claims address, customer service numbers, and pharmacy information"
        },
        {
          "url": "image",
          "valueAttachment": {
            "contentType": "image/jpeg",
            "data": "&lt;base64-encoded image data&gt;"
          }
        }
      ],
      "url": "http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-SupportingImage-extension"
    }
  ]
}
</code></pre>

<h5>Guidance</h5>

<ul>
  <li>The extension is repeatable (0..*) on the Coverage resource, allowing multiple images to be attached.</li>
  <li>When providing card images, use descriptive <code>label</code> values such as "Front of insurance card" and "Back of insurance card" so that consuming applications can display them appropriately.</li>
  <li>The <code>description</code> sub-extension SHOULD contain sufficient detail for accessibility purposes (e.g., screen readers). Describe the key information visible on the card image.</li>
  <li>When providing inline image data, the <code>contentType</code> and <code>data</code> elements of the Attachment are required. Common content types include <code>image/jpeg</code> and <code>image/png</code>.</li>
  <li>Alternatively, the image may be provided as a reference to a DocumentReference resource if the payer prefers not to embed the image data inline.</li>
  <li>This extension may also be used for other supporting images beyond card front/back, such as images that communicate the type of coverage provided or partner logos.</li>
</ul>
