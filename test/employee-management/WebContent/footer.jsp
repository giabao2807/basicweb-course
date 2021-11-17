<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head> </head>
  <body>
    <div class="action">
      <div class="container">
        <div class="remaining">success all tasks in class</div>
        <div class="progress">
          <div class="progress-inner">
            <div class="progress-mask"></div>
          </div>
        </div>
        <button type="button" class="btn">
          <a
            class="link"
            href="https://www.facebook.com/giabaobao2807/"
            target="_blank"
            >Contact me</a
          >
        </button>
      </div>
    </div>
  </body>
  <style>
    :root {
      --primary: #34687f;
      --secondary: #202726;
      --third: #676c6b;
      --dark: #94c7d5;
      --light: #ffffff;
      --error: #f12369;

      --font: "Nunito", sans-serif;
      --textSize: 16px;
    }
    html,
    body {
      background-color: var(--dark);
      color: var(--light);
      font-family: var(--font);
      font-size: var(--textSize);
    }
    .container {
      display: flex;
      align-items: center;
      justify-content: flex-start;
      flex-direction: column;
      width: 100%;
      margin: 0 auto;
      padding: 0 1rem;
    }
    .btn {
      display: inline-block;
      font-weight: 500;
      color: #212529;
      text-align: center;
      text-decoration: none;
      vertical-align: middle;
      cursor: pointer;
      background-color: transparent;
      border: 1px solid transparent;
      padding: 0.75rem 1.5rem;
      font-size: 1rem;
      border-radius: 0.25rem;
      transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
        border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }

    .btn:hover {
      color: #fff;
      background-color: #155773;
      border-color: #144a6c;
    }
    .btn {
      color: #fff;
      background-color: #175276;
      border-color: #194a87;
    }
    .btn .link {
      text-decoration: none;
      color: #fff;
    }
    .action {
      border-top: 1px solid var(--secondary);
      background-color: var(--dark);
      position: fixed;
      z-index: 10;
      height: 60px;
      display: flex;
      align-items: center;
      bottom: 0;
      left: 0;
      width: 100%;
    }

    .action .container {
      flex-direction: row;
      align-items: center !important;
      justify-content: space-between;
    }

    .action .progress {
      height: 8px;
      width: 40%;
    }

    .progress .progress-inner {
      background-color: var(--secondary);
      border-radius: 8px;
      height: 100%;
      width: 100%;
    }

    .progress .progress-mask {
      background-color: var(--primary);
      border-radius: 8px;
      height: 100%;
      width: 100%;
    }
  </style>
</html>
