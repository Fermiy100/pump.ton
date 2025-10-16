import React from 'react';

const Header: React.FC = () => {
  return (
    <header className="bg-blue-600 text-white p-4">
      <div className="container mx-auto flex justify-between items-center">
        <h1 className="text-2xl font-bold">🚀 Pump Ton</h1>
        <nav className="space-x-4">
          <a href="/" className="hover:text-blue-200">Home</a>
          <a href="/tokens" className="hover:text-blue-200">Tokens</a>
          <a href="/streams" className="hover:text-blue-200">Streams</a>
          <a href="/profile" className="hover:text-blue-200">Profile</a>
        </nav>
      </div>
    </header>
  );
};

export default Header;
