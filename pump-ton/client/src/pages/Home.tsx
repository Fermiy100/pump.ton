import React from 'react';

const Home: React.FC = () => {
  return (
    <div className="container mx-auto px-4">
      <div className="text-center py-12">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">
          Welcome to Pump Ton
        </h1>
        <p className="text-xl text-gray-600 mb-8">
          Modern TON Blockchain Social Trading Platform
        </p>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          <div className="bg-white p-6 rounded-lg shadow-md">
            <h3 className="text-xl font-semibold mb-2">🪙 Token Creation</h3>
            <p className="text-gray-600">Create and manage TON-based tokens</p>
          </div>
          <div className="bg-white p-6 rounded-lg shadow-md">
            <h3 className="text-xl font-semibold mb-2">📊 Live Trading</h3>
            <p className="text-gray-600">Real-time trading with advanced charts</p>
          </div>
          <div className="bg-white p-6 rounded-lg shadow-md">
            <h3 className="text-xl font-semibold mb-2">🎥 Live Streaming</h3>
            <p className="text-gray-600">Stream with interactive chat and donations</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
