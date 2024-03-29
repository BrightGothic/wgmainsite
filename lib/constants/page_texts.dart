import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PageTexts {

  final Widget phptext = Markdown(
    data: "**What is PHP?**\n\n- **Hypertext Preprocessor:** PHP is a recursive acronym. It's a popular, general-purpose scripting language that's incredibly well-suited for web development.\n- **Server-Side:** PHP code is primarily executed on a web server. The server processes the PHP instructions and generates HTML output that's sent to the user's browser.\n- **Open-Source:** PHP is freely available and constantly evolving thanks to its large community of developers.\n\n**Why is PHP Popular?**\n\n- **Web-Centric:** PHP was designed from the ground up for building dynamic websites.\n- **Ease of Learning:** Its syntax is relatively simple, making it beginner-friendly.\n- **Vast Ecosystem:** Huge collection of frameworks, libraries, and tools streamline PHP development (think Laravel, Symfony, WordPress, etc.).\n- **Mature and Reliable:** PHP has been around for decades and powers a massive portion of the web.\n- **Cross-Platform:** PHP runs seamlessly on various operating systems (Windows, Linux, macOS, etc.).\n\n**What PHP Can Do**\n\n- **Dynamic Content:** Generate pages that change based on user input, data stored in a database, or external factors.\n- **Database Interactions:** Connect to databases (like MySQL, PostgreSQL, etc.) to store, retrieve, and manipulate data.\n- **Forms and User Input:** Create forms for collecting information from users, validate input data, and process it securely.\n- **Sessions and Logins:** Track user actions across a website, implement login systems and personalized experiences.\n- **File Uploads and Downloads:** Handle user file uploads or allow users to download files from your server.\n- **Email:** Send and receive emails through your website.\n- **And much, much more!**\n\n**Basic PHP Example**\n\nPHP\n\n```\n<?php\n   echo \"Hello, World!\";\n?>\n```\n",
    styleSheet: MarkdownStyleSheet(
      h1: TextStyle(fontSize: 24, color : Colors.white),
      h2: TextStyle(fontSize: 20),
      a: TextStyle(color: Colors.white),
    ),
  );

  final Widget base64text = Markdown(
    data: "**What is Base64 Encoding?**\n\n- Base64 is a method used to represent binary data (like images, videos, or other files) within an ASCII text format.\n- This makes it possible to transmit or store binary data through channels designed to handle only text, like email or certain web environments.\n\n**Why Do We Need Base64?**\n\n- **Compatibility:** Many systems and protocols are optimized for text. Base64 lets you squeeze binary data into those text-friendly channels.\n- **Integrity:** Base64 can help preserve data during transfers since text-based data tends to be more resilient to corruption compared to raw binary.\n\n**How Base64 Works (simplified)**\n\n1. **Grouping:** Binary data is split into groups of 3 bytes (24 bits).\n2. **Translation:** Each 24-bit group is further divided into four 6-bit groups.\n3. **Mapping:** Each 6-bit group is translated into one of 64 standard Base64 characters (A-Z, a-z, 0-9, +, /, and sometimes = for padding).\n4. **Output:** The translated characters are put together to form the Base64 encoded string.\n\n**Example:**\n\nLet's imagine encoding the word \"Fun\":\n\n1. **Binary conversion:** \"Fun\" is converted to its binary ASCII representation.\n2. **Grouping / Padding:** The binary is grouped into sets of 24 bits, with padding added if needed.\n3. **Splitting:** The 24-bit groups are divided into 6-bit chunks.\n4. **Base64 Mapping:** Each 6-bit group is matched to its Base64 character.\n5. **Result:** The encoded result might look like \"RnVu\".\n\n**Decoding:** Decoding reverses this process to get back the original binary data.\n\n**Key Things to Remember:**\n\n- Base64 increases the size of data by about 33% (due to the encoding overhead).\n- It's not encryption, just a way to represent binary data using text.\n- Base64 is widely used for email attachments, embedding images in HTML, and various other web-related tasks.\n",
    styleSheet: MarkdownStyleSheet(
      h1: TextStyle(fontSize: 24, color : Colors.white),
      h2: TextStyle(fontSize: 20),
      a: TextStyle(color: Colors.white),
    ),
  );
  final Widget csstext = Markdown(
    data: "**What is CSS?**\n\n- **Cascading Style Sheets:** CSS is a language used to style and control the presentation of web documents written in markup languages like HTML.\n- **Separation of Concerns:** CSS keeps the visual design and layout separate from the content structure of a webpage, making websites more adaptable, maintainable, and accessible.\n\n**What CSS Does**\n\n- **Styling:** CSS defines how HTML elements should look:\n    - **Colors:** Background colors, text colors, etc.\n    - **Fonts:** Font family, size, weight, style.\n    - **Spacing:** Margins, padding, line height.\n    - **Layout:** Positioning, floating, display types (block, inline, etc.).\n    - **Sizing:** Width, height.\n    - **Borders, Backgrounds, Shadows**\n    - **And way more!**\n- **Responsive Design:** CSS enables the creation of websites that gracefully adapt across different screen sizes and devices using techniques like media queries.\n- **Animations and Transitions:** CSS lets you add smooth animations and transitions to elements, enhancing the user experience.\n\n**How to Use CSS**\n\n1. **Inline Styles:** Add CSS directly within HTML elements' `style` attribute. (Least preferred method for maintainability)\n    \n    HTML\n    \n    ```\n    <p style=\"color: red;\">This text is red.</p>\n    ```\n    \n    Utilisez ce code [avec précaution](https://gemini.google.com/faq#coding).\n    \n    content_copy\n    \n2. **Internal Stylesheet:** Place `<style>` tags in the HTML `<head>` section.\n    \n    HTML\n    \n    ```\n    <head>\n        <style>\n            body { \n                background-color: lightblue;\n            }\n        </style>\n    </head>\n    ```\n    \n    Utilisez ce code [avec précaution](https://gemini.google.com/faq#coding).\n    \n    content_copy\n    \n3. **External Stylesheet:** Create a separate `.css` file and link it to your HTML with the `<link>` tag. (Best for organization and reusability)\n    \n    HTML\n    \n    ```\n    <head>\n        <link rel=\"stylesheet\" href=\"style.css\">\n    </head>\n    ```\n    \n    Utilisez ce code [avec précaution](https://gemini.google.com/faq#coding).\n    \n    content_copy\n    \n\n**Key CSS Concepts**\n\n- **Selectors:** Target specific HTML elements for styling (e.g., `h1`, `.my-class`, `#some-id`).\n- **Properties:** The styling aspects you want to control (e.g., `color`, `font-size`, `background-image`).\n- **Values:** The specific settings you apply to a property (e.g., `red`, `16px`, `url('image.jpg')`).\n",
    styleSheet: MarkdownStyleSheet(
      h1: TextStyle(fontSize: 24, color : Colors.white),
      h2: TextStyle(fontSize: 20),
      a: TextStyle(color: Colors.white),
    ),
  );

  final Widget htmltext = Markdown(
    data: "**What is HTML?**\n\n- **Hypertext Markup Language:** HTML is the foundational language for structuring the content of web pages.\n- **Building Blocks:** Think of HTML as the bricks that construct a website. Browsers interpret HTML code to display the layout, text, images, links, and other elements that make up a webpage.\n- **Tags:** HTML uses tags to define different elements within a document:\n    - `<p>` for paragraphs\n    - `<h1>` - `<h6>` for headings\n    - `<img>` for images\n    - `<a>` for links\n    - And many more!\n\n**Basic HTML Structure**\n\nHTML\n\n```\n<!DOCTYPE html>\n<html>\n<head>\n    <title>My Web Page</title>\n</head>\n<body>\n    <h1>Welcome to my website!</h1>\n    <p>This is a paragraph of text.</p>\n</body>\n</html>\n```\n\n\n**How to View HTML Source Code in Chrome**\n\nHere are a few different ways:\n\n- **Keyboard Shortcut:**\n    1. Ctrl + U\n    \n- **Right-click Shortcut:**\n    1. Right-click anywhere on the webpage.\n    2. Select \"View page source\" from the context menu.\n\n- **Developer Tools Shortcut:**\n    1. Press **F12** (or **Ctrl+Shift+I** on Windows/Linux, **Cmd+Option+I** on macOS).\n    2. This opens the Developer Tools window, with the \"Elements\" tab automatically displaying the HTML.\n\n- **URL Prefix:**    \n    1. In the address bar, type `view-source:` before the webpage's URL.\n    2. Press Enter.\n",
    styleSheet: MarkdownStyleSheet(
      h1: TextStyle(fontSize: 24, color : Colors.white),
      h2: TextStyle(fontSize: 20),
      a: TextStyle(color: Colors.white),
    ),
  );

  final Widget sqlitext = Markdown(
    data: "**SQL Injection (SQLi)**\n \n - **What is it?** A cyberattack technique where malicious SQL code is inserted into seemingly harmless input fields (like login forms or search bars) to manipulate a web application's database.\n     \n - **How it works:**\n     \n     1. **Identifying Vulnerability:** The attacker finds a web application that directly incorporates user input into its SQL queries without proper sanitation.\n     2. **Crafting Malicious Input:** The attacker injects special SQL commands designed to alter the intended query or execute new commands.\n     3. **Database Manipulation:** The vulnerable application sends the modified query to its backend database.\n     4. **Exploitation:** The database executes the injected code, potentially allowing the attacker to:\n         - Read sensitive data\n         - Modify data (insert, update, delete)\n         - Execute administrative commands on the database\n         - Issue commands to the operating system\n **Types of SQL Injection:**\n \n - **In-band SQLi:** Attacker uses the same channel for attack and result extraction.\n     - **Error-based SQLi:** Forces database errors to reveal information.\n     - **Union-based SQLi:** Combines results from multiple queries into one response.\n - **Blind SQLi:** No direct result, attack relies on observing the application's behavior.\n     - **Boolean-based:** Extracts data through true/false responses.\n     - **Time-based:** Infers data by causing database delays.\n \n **Example (Error-based SQLi):**\n \n - **Normal input:** username 'johnsmith'\n - **Malicious input:** ' OR '1'='1' --\n - **Resulting query:**\n     \n     SQL\n     \n     ```    SELECT * FROM users WHERE username = 'johnsmith' OR '1'='1' --';     ```    \n \n \n                 - The query now returns ALL users since '1'='1' is always true.**Dangers of SQL Injection:**\n \n - **Data Theft:** Access to confidential info: customer data, credit card numbers, trade secrets\n - **Data Modification:** Alter, delete, or insert data, jeopardizing integrity\n - **Authentication Bypass:** Log in as any user, even administrators\n - **Reputation Damage:** Security breaches erode customer trust\n \n **Prevention Techniques:**\n \n - **Parameterized Queries:** Pre-compile queries with placeholders, then bind values separately. This prevents injection by making malicious input treated as inert data.\n - **Input Validation:** Strict rules to allow only expected input. Reject input containing suspicious characters.\n - **Least Privilege:** Minimize database account permissions to limit attack scope.\n - **Web Application Firewalls (WAF):** Detect and block malicious traffic patterns.\n - **Regular Security Testing:** Identify vulnerabilities proactively.\n \n **Important Note:** SQL injection is a serious threat. Always prioritize security measures when building web applications that work with databases.\n ",
    styleSheet: MarkdownStyleSheet(
      h1: TextStyle(fontSize: 24, color : Colors.white),
      h2: TextStyle(fontSize: 20),
      a: TextStyle(color: Colors.white),
    ),
  );

  final Widget routingtext = Markdown(
    data : "**Web Routing**\n \n - **The Core Concept:** Web routing is the mechanism by which web servers determine how to handle incoming HTTP requests from clients (like web browsers). It's the process of matching the URL patterns of incoming requests with the appropriate code or resources on the server to generate a response.\n \n **How It Works**\n \n 1. **Client Request:** A user types a URL into their browser or clicks a link. This sends an HTTP request to the web server specified in the URL.\n 2. **Route Matching:** The web server examines the URL's path (the part after the domain name) and compares it to its defined routes. A \"route\" is a pattern associated with specific code or resources.\n 3. **Controller Execution:** When a match is found, the server executes the associated controller. A controller is a piece of code responsible for handling the request and generating the response.\n 4. **Response Generation:** The controller may interact with models (for data), views (for formatting), and other components to create an appropriate response.\n 5. **Response to Client:** The generated HTML, data, or any other content is sent back as an HTTP response to the client's browser, which then renders it for the user.\n \n **Example:**\n \n Consider a blog website:\n \n - **URL:** [invalid URL removed]\n - **Route Pattern:** `/posts/:title`\n     - `:title` is a dynamic segment representing the post's title\n - **Controller:** `PostsController`\n **Basic Routing Configuration**\n Many web frameworks provide mechanisms for defining routes:\n ```GET /items         ->  ItemsController.index   # List all items\n GET /items/:id     ->  ItemsController.show    # Show a specific item\n POST /items        ->  ItemsController.create  # Create a new item\n ```**Additional Considerations:**\n \n - **HTTP Methods:** Routes often distinguish between HTTP methods (GET, POST, PUT, DELETE) for different operations on a resource.\n - **Prioritization:** Route patterns are usually compared in some defined order to handle potential overlaps.\n - **Restful Routing:** A common architectural style for designing routes that align with typical resource actions.\n \n **Benefits of Web Routing:**\n \n - **Clean URLs:** Creates user-friendly, semantically meaningful URLs.\n - **Organization:** Provides structure to web applications by associating specific URL patterns with corresponding application logic.- **Flexibility:** Allows for dynamic handling of requests and different resource representations.\n ",
    styleSheet: MarkdownStyleSheet(
      h1: TextStyle(fontSize: 24, color : Colors.white),
      h2: TextStyle(fontSize: 20),
      a: TextStyle(color: Colors.black54),
    ),
  );

  final Widget javascripttext = Markdown(
    data : "**What is JavaScript?**\n\n- **Programming Language of the Web:** JavaScript is a powerful scripting language that brings interactivity, dynamic behaviors, and rich functionality to web pages.\n- **Client-Side:** JavaScript primarily runs in the user's web browser, allowing it to manipulate the web page and respond to user actions without constant communication with the server.\n- **Complements HTML and CSS:** While HTML provides structure and CSS controls style, JavaScript adds the \"behavior\" layer to websites.\n\n**What JavaScript Can Do**\n\n- **DOM Manipulation:** Change the content and structure of a webpage in real-time (add/remove elements, modify styles).\n- **Event Handling**: React to user actions like clicks, mouse movements, form submissions, and more.\n- **Animations and Effects:** Create smooth visual transitions, animations, and interactive elements.\n- **AJAX and Fetch API:** Send and receive data from the server in the background, updating portions of the page without a full reload.\n- **Validation:** Validate user input in forms before submitting to the server.\n- **Complex Web Applications:** JavaScript is the backbone of modern single-page applications (SPAs) and frameworks like React, Angular, and Vue.js.\n\n**How to View JavaScript in Chrome**\n\n1. **Developer Tools:**\n    \n    - Press **F12** (or **Ctrl+Shift+I** on Windows/Linux, **Cmd+Option+I** on macOS) to open Chrome Developer Tools.\n    - Navigate to the **\"Sources\"** tab.\n    - You'll see a file structure, often with a \"js\" folder containing JavaScript files associated with the page.\n2. **Page Source (limited):**\n    \n    - Right-click on the webpage and select \"View Page Source.\"\n    - You might see some inline JavaScript within `<script>` tags, but external files won't be shown fully.\n",
      styleSheet: MarkdownStyleSheet(
      h1: TextStyle(fontSize: 24, color : Colors.white),
      h2: TextStyle(fontSize: 20),
      a: TextStyle(color: Colors.black54),
    ),
  );
// ...
  Widget returnBodytext(String section){
    switch (section) {
      case 'base64':
        return this.base64text;
        break;
      case 'css':
        return this.csstext;
        break;
      case 'php':
        return this.phptext;
        break;
      case 'javascript':
        return this.javascripttext;
        break;
      case 'sqli':
        return this.sqlitext;
        break;
      case 'html':
        return this.htmltext;
        break;
      case 'routing':
        return this.routingtext;
        break;
    }
    return Markdown(
      data: "# ERROR 501 \n \n Contact the administrator",
      styleSheet: MarkdownStyleSheet(
        h1: TextStyle(fontSize: 24, color : Colors.white),
        h2: TextStyle(fontSize: 20),
        a: TextStyle(color: Colors.white),
      ),
    );
  }
}