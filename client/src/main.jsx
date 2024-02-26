import React, { useState } from 'react';
import ReactDOM from 'react-dom/client';
import { createBrowserRouter, RouterProvider} from 'react-router-dom';
import { Root, ErrorPage } from './Root'; 
import LoginComponent from './LoginComponent';
import Quiz from './quiz/Quiz';
import RegisterComponent from './RegisterComponent';
import Explore from './explore/Explore';

import './index.css';

const router = createBrowserRouter([
  {
    path: "/",
    element: <Root />,
    errorElement: <Root><ErrorPage /></Root>,
    children: [
      { index: true, element: <LoginComponent /> }, // HomeComponent
      { 
        path: "quiz",
        element: <Quiz />,
      },
      { path: "register",
        element: <RegisterComponent />,
      },
      {
        path: "explore",
        element: <Explore />,
      },
    ]
  }
]);

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <RouterProvider router={router} /> {/* Using RouterProvider */}
  </React.StrictMode>
);