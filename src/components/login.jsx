import React, { useState } from 'react';

const LoginPage = () => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [errorMessage, setErrorMessage] = useState('');

  const handleLogin = async () => {
    setLoading(true);

    try {
      // Make the API call to check if the user exists
      const response = await fetch('your_api_endpoint_here', {
        method: 'POST',
        body: JSON.stringify({ username, password }),
        headers: {
          'Content-Type': 'application/json',
        },
      });

      const data = await response.json();

      if (response.ok) {
        console.log('User logged in successfully');
      } else {
        // User does not exist, display error message
        setErrorMessage(data.message || 'Login failed');
      }
    } catch (error) {
      console.error('API Error:', error);
      setErrorMessage('An error occurred');
    }

    setLoading(false);
  };

  return (
    <div>
      <h1>Login Page</h1>
      <form onSubmit={(e) => e.preventDefault()}>
        <label>
          Username:
          <input type="text" value={username} onChange={(e) => setUsername(e.target.value)} />
        </label>
        <br />
        <label>
          Password:
          <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} />
        </label>
        <br />
        <button type="submit" onClick={handleLogin} disabled={loading}>
          Login
        </button>
      </form>
      {loading && <div>Loading...</div>}
      {errorMessage && <div>{errorMessage}</div>}
    </div>
  );
};

export default LoginPage;
