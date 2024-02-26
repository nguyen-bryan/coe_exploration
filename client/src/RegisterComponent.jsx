import React, { useState } from 'react';

const RegisterComponent = () => {
    const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [email, setEmail] = useState('');
  const [errorMessage, setErrorMessage] = useState('');

  const handleRegister = async () => {
    // TODO: Change localhost to something else
    const response = await fetch('http://localhost:8000/api/users/register', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        username,
        email,
        password,
      }),
    });

    const data = await response.json();

    if (data.message === 'User registered successfully') {
      window.location.href = '/';
    }
    else {
      setErrorMessage(data.message);
    }
  };

  return (
    <div className='register'>
      <h1>Registration Page</h1>
      <div className="register_container">
        <label id="userlabel"> Username </label>
        <input 
          type="text" 
          placeholder="Enter Username" 
          name="username"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <label id='emaillabel'> Email </label>
        <input 
          type="email" 
          placeholder="Enter Email" 
          name="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />
        <label id='passlabel'> Password </label>
        <input 
          type="password" 
          placeholder="Enter Password" 
          name="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        {errorMessage && <p className="error-message">{errorMessage}</p>}
        <button 
          type="submit" 
          id="registerButton" 
          onClick={handleRegister}
        > 
          Register 
        </button>
      </div>
    </div>
  );
};

export default RegisterComponent;