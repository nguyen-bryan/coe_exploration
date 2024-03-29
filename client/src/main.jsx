import React, { useState } from 'react';
import ReactDOM from 'react-dom/client';
import { createBrowserRouter, RouterProvider} from 'react-router-dom';
import { Root, ErrorPage } from './Root'; 
import LoginComponent from './authentication/LoginComponent';
import Quiz from './quiz/Quiz';
import RegisterComponent from './authentication/RegisterComponent';
import Explore, { MajorInfo } from './explore/Explore';
import { AuthProvider } from './authentication/AuthComponent';
import Profile from './ProfileComponent';
import Pet from './pet/Pet';
import MinigameLoader from './explore/minigames/MinigameLoader';

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
      {
        path: "register",
        element: <RegisterComponent />,
      },
      {
        path: "explore",
        element: <Explore />,
      },
      {
        path: "explore/:majorName",
        element: <MajorInfo />,
      },
      {
        path: "explore/:majorName/minigame",
        element: <MinigameLoader />,
      },
      {
        path: "profile",
        element: <Profile />,
      },
      {
        path: "pet",
        element: <Pet />,
      },
    ]
  }
]);

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <AuthProvider>
      <RouterProvider router={router} /> {/* Using RouterProvider */}
    </AuthProvider>
  </React.StrictMode>
);